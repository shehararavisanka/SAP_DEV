const mysql = require("mysql");
const sql = require("mssql");
const environment = require("../config/environment");
const logger = require("./../util/default.logger");


const con = new sql.ConnectionPool({
  server: environment.Sql_server,
  database: environment.Sql_companyDB,
  driver: "msnodesqlv8",
  user: environment.Sql_username,
  password: environment.Sql_password,
  options: {
    encrypt: true, // important
    trustServerCertificate: true // 🔥 THIS FIXES YOUR ERROR
  }
});

con.connect((err) => {
  if (err) {
    logger.error("Failed to connect to database: " + err.message);
  } else {
    logger.info("Database Connected | Schema: " + environment.companyDB);

  }
});


module.exports.con = con;
