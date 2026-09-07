const sql = require("msnodesqlv8");

const connectionString =
  "Driver={ODBC Driver 18 for SQL Server};" +
  "Server=SAPWINDOWS\\SQLEXPRESS;" +
  "Database=SAPDB;" +
  "Trusted_Connection=Yes;" +
  "Encrypt=Yes;" +
  "TrustServerCertificate=Yes;";

console.log("Connecting...");

sql.query(connectionString, "SELECT @@SERVERNAME AS ServerName, @@VERSION AS Version", (err, rows) => {
  if (err) {
    console.error("========== ODBC ERROR ==========");
    console.error(err);
    console.error("================================");
    return;
  }

  console.log("CONNECTED!");
  console.log(rows);
});
