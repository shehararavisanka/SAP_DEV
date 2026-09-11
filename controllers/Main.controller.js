
const masterservice = require('../services/Masters/master.service')
const masterservice_sql = require('../services/Masters/master_sql.service')



const fs = require('fs');

const config = JSON.parse(
    fs.readFileSync('./config.Json', 'utf8')
);

exports.UpdateChecking = async (req, res, next) => {

    try {

        //call HANA SP and get updatedDocumentlist
        //Master tablelist
 

        const date = new Date(config.lastupdatedate);
        var lastrundate = date.toISOString().slice(0, 16).replace('T', ' ');

       

        var updatedDocumentlist = await masterservice.select_All_MasterTables(lastrundate)
 
        if (updatedDocumentlist != null) {

            for (let index = 0; index < updatedDocumentlist.length; index++) {
                const element = updatedDocumentlist[index];
                //update sql loadcontrol table

                var result = await masterservice_sql.update_LoadControl(element.LoadControlID)
                console.log(result)

            }

            this.DataSync();

        }
        // //Transaction tablelist


        // config.lastupdatedate = new Date().toISOString();

        // fs.writeFileSync(
        // './config.json',
        // JSON.stringify(config, null, 2),
        // 'utf8'
        // );



    } catch (error) {
        console.log(error)

    }

}



exports.DataSync = async (req, res, next) => {


    try {

        //get activated cout from loadcontrol
        var activatedlist = await masterservice_sql.select_loadcontrol_Allactive();

        for (let index = 0; index < activatedlist.length; index++) {
            const element = activatedlist[index];
 
            //call hana database and get dataset

            const date = new Date(element.LastLoadStartTime);
            const result = date.toISOString().slice(0, 16).replace('T', ' ');


            var updatedDocumentlist = await masterservice.select_MasterTables_byname(element.SourceTable, result)
 
            if (updatedDocumentlist != null) {

                for (let index = 0; index < updatedDocumentlist.length; index++) {
                    const element1 = updatedDocumentlist[index];
 



                    // if (element.SourceTable == 'BPMaster') {

                        var execquery = "EXEC [dbo].[sp_"+element.SourceTable+"_Insert] "

                      
                        const values = Object.values(element1).map(value => {
                            if (value === null || value === undefined) {
                                return 'NULL';
                            }

                            if (typeof value === 'number') {
                                return value;
                            }

                            return `'${String(value).replace(/'/g, "''")}'`;
                        }).join(',');

                      

                        execquery = execquery + values + ";";
                        var resultInsert = await masterservice_sql.update_custom_stgtable(execquery)
                        console.log(resultInsert);

                    // } 
                }
                //updateloadcontrol
                var recordupdate = await masterservice_sql.update_loadcontrol_AllNewRecords(element.LoadControlID);

            }

        }

    } catch (error) {
        console.log(error)

    }


}