module.exports = {
  nodeEnv: process.env.ENV || process.env.NODE_ENV || "production",
  logDir: "logs",
  logLevel: "info",
  logFile: "app.log",
  requestLogFile: process.env.MORGAN_LOG || "requests.log",
  requestLogEnable: process.env.REQUEST_LOG_ENABLED || "true",
  requestLogFormat:
    "[:date[iso]] :method :url :status :response-time ms - :res[content-length]",
  requestLogRollingInterval: process.env.MORGAN_LOG_ROLLING_INTERVAL || "1d",


  companyDB: "Z10_TEST",
  username: "PSL2",
  password: "1234",

  Sql_server: "1234",
  Sql_companyDB: "Z10_TEST",
  Sql_username: "PSL2",
  Sql_password: "1234",

  sapServiceLayer: "https://172.16.1.38:50000",
  IP: "172.16.1.38",
  Port: "30041",
  DBUsername: "SYSTEM",
  DBPassword: "Root1234",
  IntermediateDB: "SAP_API_INTTERGRATION",

};
