const environment = require("../../config/environment");
const config = require("../../SAP_Connection/db_connection");

const conn = config.con;
const sql = require("msnodesqlv8");

const connectionString =
    "Driver={ODBC Driver 18 for SQL Server};" +
    "Server=SAPWINDOWS\\SQLEXPRESS;" +
    "Database=SAPDB;" +
    "Trusted_Connection=Yes;" +
    "Encrypt=Yes;" +
    "TrustServerCertificate=Yes;";


const master_sql = function () { };


master_sql.select_bpmaster_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT  [CardCode] as ClientCode,[CardName] as ClientName,[CardType],[GroupCode] as ClientType,[Phone1] as ClientPhone1,[Phone2] as ClientPhone2,[E_Mail],[Fax],[AddID],[RegNum],[Notes],[CreditLine] as CreditLimit,[DebtLine],[GroupNum],[validFor],[validFrom],[validTo],[CreatedDateTime],[UpdatedDateTime] FROM  "+environment.Sql_companyDB+".[dbo].[BPMaster]", (err, rows) => {
            if (err) {
                console.error("========== ODBC ERROR ==========");
                console.error(err);
                console.error("================================");
                return;
            }

            resolve(rows) 
        });
    });
};


master_sql.select_bpmaster_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT  [CardCode] as ClientCode,[CardName] as ClientName,[CardType],[GroupCode] as ClientType,[Phone1] as ClientPhone1,[Phone2] as ClientPhone2,[E_Mail],[Fax],[AddID],[RegNum],[Notes],[CreditLine] as CreditLimit,[DebtLine],[GroupNum],[validFor],[validFrom],[validTo],[CreatedDateTime],[UpdatedDateTime]  FROM  "+environment.Sql_companyDB+".[dbo].[BPMaster]  where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
            if (err) {
                console.error("========== ODBC ERROR ==========");
                console.error(err);
                console.error("================================");
                return;
            }

            resolve(rows) 
        });
    });
};


master_sql.select_itmmaster_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT   [ItemCode],[ItemName],[FrgnName],[ItmsGrpCod],[PrchseItem],[SellItem],[InvntItem],[UgpCode],[SalUnitMsr],[U_VZ_SubGroup],[U_VZ_SubGroup2],[ManBtchNum],[ManSerNum],[validFor],[validFrom],[validTo],[CreatedDateTime],[UpdatedDateTime] FROM "+environment.Sql_companyDB+".[dbo].[ItemMaster]", (err, rows) => {
            if (err) {
                console.error("========== ODBC ERROR ==========");
                console.error(err);
                console.error("================================");
                return;
            }

            resolve(rows) 
        });
    });
};

master_sql.select_itmmaster_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "SELECT   [ItemCode],[ItemName],[FrgnName],[ItmsGrpCod],[PrchseItem],[SellItem],[InvntItem],[UgpCode],[SalUnitMsr],[U_VZ_SubGroup],[U_VZ_SubGroup2],[ManBtchNum],[ManSerNum],[validFor],[validFrom],[validTo],[CreatedDateTime],[UpdatedDateTime] FROM "+environment.Sql_companyDB+".[dbo].[ItemMaster] where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
            if (err) {
                console.error("========== ODBC ERROR ==========");
                console.error(err);
                console.error("================================");
                return;
            }

            resolve(rows) 
        });
    });
};


master_sql.select_loadcontrol_Allactive = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "select   [LoadControlID],[SchemaName],[SourceTable],[TargetTable],[Activated],[NewRecords],[LastLoadStartTime],[LastLoadEndTime] from   "+environment.Sql_companyDB+".[dbo].[LoadControl]   where  NewRecords=1 and Activated=1", (err, rows) => {
            if (err) {
                console.error("========== ODBC ERROR ==========");
                console.error(err);
                console.error("================================");
                return;
            }

            resolve(rows) 
        });
    });
};

master_sql.update_custom_stgtable = async (query , result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString,   query , (err, rows) => {
            if (err) {
                console.error("========== ODBC ERROR ==========");
                console.error(err);
                console.error("================================");
                return;
            }

            resolve(rows) 
        });
    });
};

master_sql.update_LoadControl = async (loadcontrolid, message, result) => {

    return new Promise(function (resolve, reject) {
        sql.query(connectionString, "update  "+environment.Sql_companyDB+".[dbo].[LoadControl] set NewRecords=1 where LoadControlID="+loadcontrolid, (err, rows) => {
            if (err) {
                console.error("========== ODBC ERROR ==========");
                console.error(err);
                console.error("================================");
                return;
            }

            resolve(rows)
            // console.log("CONNECTED!");
            // console.log(rows);
        });
    });
};

master_sql.update_loadcontrol_AllNewRecords = async (loadcontrolid, message, result) => {

    return new Promise(function (resolve, reject) {
        sql.query(connectionString, "update  "+environment.Sql_companyDB+".[dbo].[LoadControl] set NewRecords=0,  LastLoadStartTime  = GETDATE() , LastLoadEndTime=GETDATE()  where LoadControlID="+loadcontrolid, (err, rows) => {
            if (err) {
                console.error("========== ODBC ERROR ==========");
                console.error(err);
                console.error("================================");
                return;
            }

            resolve(rows)
            // console.log("CONNECTED!");
            // console.log(rows);
        });
    });
};


master_sql.insert_custom_stgtable = async (loadcontrolid, message, result) => {

    return new Promise(function (resolve, reject) {
        var qString = " update " + environment.companyDB + ".[dbo].OINV set U_InvoiceError='" + message + "' where DocEntry= " + sq_id;

        console.log(qString)
        conn.query(qString, (err, rows) => {

            //  if (err) throw err; 
            resolve(rows)
        });
    });
};



module.exports = master_sql;