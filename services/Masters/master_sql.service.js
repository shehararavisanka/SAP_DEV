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