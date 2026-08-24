var hana = require("@sap/hana-client");
const Common = require("../config/environment");
const logger = require("./../util/default.logger");
const environment = require("../config/environment");

var conn = hana.createConnection();

var conn_params = {
  serverNode: Common.IP + ":" + Common.Port,
  uid: Common.DBUsername,
  pwd: Common.DBPassword,
};
conn.connect(conn_params, function (err) {
  if (!!err) {
    logger.error("Database connectivity error: " + err);
  } else {
    logger.info("Connected to " + environment.companyDB);
  }
});

module.exports.con = conn;
