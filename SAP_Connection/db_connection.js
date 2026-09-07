 const sql = require("mssql/msnodesqlv8");
const environment = require("../config/environment");
const logger = require("../util/default.logger");

const config = {
  server: environment.Sql_server,
  database: environment.Sql_companyDB,

  // SQL Server authentication
  user: environment.Sql_username,
  password: environment.Sql_password,

  options: {
    encrypt: true,
    trustServerCertificate: true
  },

  pool: {
    max: 10,
    min: 0,
    idleTimeoutMillis: 30000
  }
};

const con = new sql.ConnectionPool(config);

con.on("error", (err) => {
  logger.error("SQL Connection Pool Error: " + err.message);
});

con.connect()
  .then(() => {
    logger.info(
      "Database Connected | Server: " +
      environment.Sql_server +
      " | Database: " +
      environment.Sql_companyDB
    );
  })
  .catch((err) => {

    console.log(err.toString());
    
    logger.error(
      "Failed to connect to database: " + err.message
    );

    console.error("SQL Connection Error:", err);
  });

module.exports.con = con;