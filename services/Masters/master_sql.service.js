const environment = require("../config/environment");
const config = require("../SAP_Connection/db_connection");

const conn = config.con;
const master_sql = function () { };


master_sql.select_loadcontrol_Allactive = async (result) => {

    return new Promise(function (resolve, reject) {
        var qString = "SELECT [Code],[Name],[U_BankCode],[U_BankGL],[U_InternalRef],[U_TranDate],[U_ValueDate] "+
       ",[U_Descrip],[U_Ref],[U_Debit],[U_Credit],[U_Balance],[U_SP],[U_InvNo],[U_ReceiptNo],[U_Close],[U_Remark],U_IdentifyCustomer FROM " + environment.companyDB + ".[dbo].[@RECEIPT] where [U_Close]='Y'";
        console.log(qString)
        conn.query(qString, (err, rows) => {
            // console.log(rows)
            //  if (err) throw err; 
            resolve(rows)
        });
    });
};

master_sql.update_LoadControl = async (loadcontrolid, message, result) => {

    return new Promise(function (resolve, reject) {
        var qString = " update " + environment.companyDB + ".[dbo].OINV set U_InvoiceError='" + message + "' where DocEntry= " + sq_id;

        console.log(qString)
        conn.query(qString, (err, rows) => {

            //  if (err) throw err; 
            resolve(rows)
        });
    });
};

master_sql.update_loadcontrol_AllNewRecords = async (loadcontrolid, message, result) => {

    return new Promise(function (resolve, reject) {
        var qString = " update " + environment.companyDB + ".[dbo].OINV set U_InvoiceError='" + message + "' where DocEntry= " + sq_id;

        console.log(qString)
        conn.query(qString, (err, rows) => {

            //  if (err) throw err; 
            resolve(rows)
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