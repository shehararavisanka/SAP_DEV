const environment = require("../../config/environment");
const config = require("../../SAP_Connection/db_connection_hana");

const conn = config.con;

const MasterService = {
    select_All_MasterTables: async (lastdatetime) => {
        try {
            const  Query = `CALL ${environment.companyDB}."Sap_select_All_MasterTables"('${lastdatetime}')`;
            const QueryDataset = await conn.exec(Query);

            return QueryDataset;
        } catch (error) {
            throw new Error(`Get account code service: ${error.message}`);
        }

    }
    ,
    select_MasterTables_byname: async (tablename, lastupdate) => {
        try {
            const  Query = `CALL ${environment.companyDB}."Sap_select_${tablename}_All" ('${lastupdate}')`;

            console.log(Query)

            const QueryDataset = await conn.exec(Query);

            return QueryDataset;
        } catch (error) {
            throw new Error(`Get account code service: ${error.message}`);
        }

    }
 

}


module.exports = MasterService;