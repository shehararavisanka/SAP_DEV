
const masterservice = require('../services/Masters/master.service')
const masterservice_sql = require('../services/Masters/master_sql.service')


exports.UpdateChecking = async (req, res, next) => {

    try {

        //call HANA SP and get updatedDocumentlist
        //Master tablelist

        // var lastrundate = '2024-08-20 08:00'
        // var updatedDocumentlist = await masterservice.select_All_MasterTables(lastrundate)

        // console.log(updatedDocumentlist)
        // if (updatedDocumentlist != null) {

        //     for (let index = 0; index < updatedDocumentlist.length; index++) {
        //         const element = updatedDocumentlist[index];
        //         //update sql loadcontrol table

        //         var result = await masterservice_sql.update_LoadControl(element.LoadControlID)
        //         console.log(result)

        //     }

        this.DataSync();

        // }
        // //Transaction tablelist



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

            console.log(element)
            //call hana database and get dataset

            const date = new Date(element.LastLoadStartTime);
            const result = date.toISOString().slice(0, 16).replace('T', ' ');


            var updatedDocumentlist = await masterservice.select_MasterTables_byname(element.SourceTable, result)

             console.log(updatedDocumentlist)
            if (updatedDocumentlist != null) {

                for (let index = 0; index < updatedDocumentlist.length; index++) {
                    const element1 = updatedDocumentlist[index];

                        console.log(element1);

                        console.log(element.SourceTable);



                    if (element.SourceTable == 'BPMaster') {

                        var execquery = "EXEC [dbo].[sp_BPMaster_Insert] "

                        console.log(element1);
                        const values = Object.values(element1).map(value => {
                            if (value === null || value === undefined) {
                                return 'NULL';
                            }

                            if (typeof value === 'number') {
                                return value;
                            }

                            return `'${String(value).replace(/'/g, "''")}'`;
                        }).join(',');

                        console.log(values);

                        execquery = execquery + values+";";
                        var resultInsert = await masterservice_sql.update_custom_stgtable(execquery)
                        console.log(resultInsert);

                    }


                }
                //updateloadcontrol
             var recordupdate = await masterservice_sql.update_loadcontrol_AllNewRecords(element.LoadControlID);

            }

        }

    } catch (error) {
        console.log(error)

    }


}