
const masterservice = require('../services/Masters/master.service')
const masterservice_sql = require('../services/Masters/master_sql.service')


exports.UpdateChecking = async (req, res, next) => {

    try {

        //call HANA SP and get updatedDocumentlist
        //Master tablelist

        var lastrundate = '2026-08-20 08:00'
        var updatedDocumentlist = await masterservice.select_All_MasterTables(lastrundate)

        if (updatedDocumentlist != null) {

            for (let index = 0; index < updatedDocumentlist.length; index++) {
                const element = updatedDocumentlist[index];
                //update sql loadcontrol table

                var result = await masterservice_sql.update_LoadControl(element.LoadControlID)

            }

        }
        //Transaction tablelist



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
            var updatedDocumentlist = await masterservice.select_MasterTables_byname(tablename, lastrundate)

            if (updatedDocumentlist != null) {

                var result = await masterservice_sql.update_custom_stgtable(element.LoadControlID)
                var result = await masterservice_sql.update_custom_dbotable(element.LoadControlID)

                //update auditlog here

                //updateloadcontrol
                var recordupdate = await masterservice_sql.update_loadcontrol_AllNewRecords();


            }

        }

    } catch (error) {

    }


}