const environment = require("../../config/environment");
// const config = require("../../SAP_Connection/db_connection");

// const conn = config.con;
const sql = require("msnodesqlv8");

const connectionString =
    "Driver={ODBC Driver 18 for SQL Server};" +
    "Server=SAPWINDOWS\\SQLEXPRESS;" +
    "Database=SAPDB;" +
    "UID=sa;" +
    "PWD=Sa@123;" +
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


master_sql.select_PriceList_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT [ListNum] as 'PriceListCode',[ListName] as 'PriceListDesc',[ValidFor] ,[PrimCurr],[CreatedDateTime] ,[UpdatedDateTime] FROM   "+environment.Sql_companyDB+".[dbo].[PriceList]", (err, rows) => {
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


master_sql.select_PriceList_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "SELECT [ListNum] as 'PriceListCode',[ListName] as 'PriceListDesc',[ValidFor] ,[PrimCurr],[CreatedDateTime] ,[UpdatedDateTime] FROM   "+environment.Sql_companyDB+".[dbo].[PriceList] where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
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

master_sql.select_UoMGroup_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "   SELECT   [ID],[UgpCode],[UgpName],[BaseUom],[UomEntry],[BaseQty],[AltQty],[IsActive],[CreatedDateTime],[UpdatedDateTime]  FROM "+environment.Sql_companyDB+".[dbo].[UoMGroup]", (err, rows) => {
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


master_sql.select_UoMGroup_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "  SELECT   [ID],[UgpCode],[UgpName],[BaseUom],[UomEntry],[BaseQty],[AltQty],[IsActive],[CreatedDateTime],[UpdatedDateTime]  FROM "+environment.Sql_companyDB+".[dbo].[UoMGroup] where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
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



master_sql.select_Currency_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "  SELECT [CurrCode] as 'CurrencyCode',[CurrName] as 'CurrencyDescription',[CreatedDateTime],[UpdatedDateTime] FROM  "+environment.Sql_companyDB+".[dbo].[Currencies]", (err, rows) => {
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


master_sql.select_Currency_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT [CurrCode] as 'CurrencyCode',[CurrName] as 'CurrencyDescription',[CreatedDateTime],[UpdatedDateTime] FROM  "+environment.Sql_companyDB+".[dbo].[Currencies]  where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
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

master_sql.select_CompanyDetails_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT   [CompnyName] ,[Street] ,[StreetNo],[Block] ,[Building] ,[ZipCode],[City],[Country],[Phone1],[Phone2],[Fax] as 'CompanyFax',[E_Mail] as 'CompanyEmail',[FreeZoneNo] as 'CRNumber',[TaxIdNum] as 'FinancialNumber',[CreatedDateTime],[UpdatedDateTime] FROM "+environment.Sql_companyDB+".[dbo].[CompanyDetails]", (err, rows) => {
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


master_sql.select_CompanyDetails_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "   SELECT   [CompnyName] ,[Street] ,[StreetNo],[Block] ,[Building] ,[ZipCode],[City],[Country],[Phone1],[Phone2],[Fax] as 'CompanyFax',[E_Mail] as 'CompanyEmail',[FreeZoneNo] as 'CRNumber',[TaxIdNum] as 'FinancialNumber',[CreatedDateTime],[UpdatedDateTime] FROM "+environment.Sql_companyDB+".[dbo].[CompanyDetails]  where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
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
         sql.query(connectionString, " SELECT   [ItemCode],[ItemName],[FrgnName],[ItmsGrpCod],[PrchseItem],[SellItem],[InvntItem],[UgpCode],[SalUnitMsr],[U_VZ_SubGroup],[U_VZ_SubGroup2],[ManBtchNum] as 'Isserializable',[ManSerNum],[validFor] as 'Active',[validFrom] as 'ActiveFrom',[validTo]  as 'ActiveTo',[CreatedDateTime],[UpdatedDateTime] FROM "+environment.Sql_companyDB+".[dbo].[ItemMaster]", (err, rows) => {
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
         sql.query(connectionString, "SELECT   [ItemCode],[ItemName],[FrgnName],[ItmsGrpCod],[PrchseItem],[SellItem],[InvntItem],[UgpCode],[SalUnitMsr],[U_VZ_SubGroup],[U_VZ_SubGroup2],[ManBtchNum] as 'Isserializable',[ManSerNum],[validFor] as 'Active',[validFrom] as 'ActiveFrom',[validTo]  as 'ActiveTo',[CreatedDateTime],[UpdatedDateTime] FROM "+environment.Sql_companyDB+".[dbo].[ItemMaster] where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
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



master_sql.select_warehouse_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT [WhsCode],[WhsName] ,[Inactive],[U_VZ_Van]  FROM "+environment.Sql_companyDB+".[dbo].[Warehouse]", (err, rows) => {
            if (err) {
            
                return;
            }

            resolve(rows) 
        });
    });
};

master_sql.select_warehouse_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT [WhsCode],[WhsName] ,[Inactive],[U_VZ_Van]  FROM "+environment.Sql_companyDB+".[dbo].[Warehouse] where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
            if (err) {
                 
                return;
            }

            resolve(rows) 
        });
    });
};


master_sql.select_HouseBankAccounts_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT   [BankCode],[BankName]   FROM "+environment.Sql_companyDB+".[dbo].[HouseBankAccounts]", (err, rows) => {
            if (err) {
            
                return;
            }

            resolve(rows) 
        });
    });
};

master_sql.select_HouseBankAccounts_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, " SELECT  [BankCode],[BankName]    FROM "+environment.Sql_companyDB+".[dbo].[HouseBankAccounts] where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
            if (err) {
                 
                return;
            }

            resolve(rows) 
        });
    });
};


master_sql.select_salesemp_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "SELECT [SlpCode] as 'SalesmanCode' ,[SlpName] as 'SalesmanName',[Memo]  as 'UserType' ,[Active] ,[Telephone] as 'SalesmanPhone' ,[Mobil] ,[Fax] ,[Email]   FROM "+environment.Sql_companyDB+".[dbo].[SalesEmployees]", (err, rows) => {
            if (err) {
            
                return;
            }

            resolve(rows) 
        });
    });
};

master_sql.select_salesemp_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "SELECT [SlpCode] as 'SalesmanCode' ,[SlpName] as 'SalesmanName',[Memo]  as 'UserType' ,[Active] ,[Telephone] as 'SalesmanPhone' ,[Mobil] ,[Fax] ,[Email]   FROM "+environment.Sql_companyDB+".[dbo].[SalesEmployees] where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
            if (err) {
                 
                return;
            }

            resolve(rows) 
        });
    });
};



master_sql.select_users_AlL = async (result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "SELECT  [USER_CODE] ,[U_NAME] ,[E_Mail] ,[Department] ,[PortNum] ,[Locked]    FROM "+environment.Sql_companyDB+".[dbo].[Users]", (err, rows) => {
            if (err) {
            
                return;
            }

            resolve(rows) 
        });
    });
};

master_sql.select_users_ByDate = async (fromdate, todate ,result) => {

    return new Promise(function (resolve, reject) {
         sql.query(connectionString, "SELECT  [USER_CODE] ,[U_NAME] ,[E_Mail] ,[Department] ,[PortNum] ,[Locked]    FROM "+environment.Sql_companyDB+".[dbo].[Users] where [UpdatedDateTime]>='"+fromdate+"' and '"+todate+"'>[UpdatedDateTime]", (err, rows) => {
            if (err) {
                 
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
               
                return;
            }

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

/************************************************************************************************** */




master_sql.select_sq_AlL = async (typ, startdate,enddate,result) => {

    return new Promise(function (resolve, reject) {
        var query="exec  "+environment.Sql_companyDB+".[dbo].[sp_SalesQuotation_Select] "+typ+",'"+startdate+"','"+enddate+"'";
        console.log(query)
         sql.query(connectionString, query , (err, rows) => {
            if (err) {
            
                return;
            }

            resolve(rows) 
        });
    });
};


master_sql.select_so_AlL = async (typ, startdate,enddate,result) => {

    return new Promise(function (resolve, reject) {
        var query="exec  "+environment.Sql_companyDB+".[dbo].[sp_SalesOrder_Select] "+typ+",'"+startdate+"','"+enddate+"'";
        console.log(query)
         sql.query(connectionString, query , (err, rows) => {
            if (err) {
            
                return;
            }

            resolve(rows) 
        });
    });
};


master_sql.select_delivery_AlL = async (typ, startdate,enddate,result) => {

    return new Promise(function (resolve, reject) {
        var query="exec  "+environment.Sql_companyDB+".[dbo].[sp_Delivery_Select] "+typ+",'"+startdate+"','"+enddate+"'";
        console.log(query)
         sql.query(connectionString, query , (err, rows) => {
            if (err) {
            
                return;
            }

            resolve(rows) 
        });
    });
};
module.exports = master_sql;