const express = require("express");
const schedule = require("node-schedule");
const authRouter = require("./routes/auth.route");
const requestLogger = require("./util/request.logger");
const logger = require("./util/default.logger");
const environment = require("./config/environment"); 

const MainController = require("./controllers/Main.controller");


const BPMaster = require("./routes/MainController.route");
const ItemMaster = require("./routes/ItemMaster.Controller");
const Warehousemaster = require("./routes/Warehousemaster.controller");
const HouseBankAccounts = require("./routes/HouseBankAccounts.controller");
const SalesEmployees = require("./routes/SalesEmployees.controller");
const Users = require("./routes/Users.controller");




const YAML = require('yamljs');
const swaggerUi = require('swagger-ui-express');
const https = require("https");
const app = express();
 

 
// running port
const PORT = 4500;

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept, Authorization"
  );
  res.header("Access-Control-Allow-Methods", "GET, POST, PUT, OPTIONS, DELETE");
  next();
});

app.use(express.json());

if (environment.requestLogEnable) {
  requestLogger.registerRequestLogger(app);
} else {
  logger.info("Request logger disabled.");
}
  


const swaggerDocument = YAML.load('./master-data-api.yaml');

app.use(
    '/api-docs',
    swaggerUi.serve,
    swaggerUi.setup(swaggerDocument)
);
//https://localhost:4500/api-docs
 
 


//apis
app.use("/api/auth", authRouter);
//customer
app.use("/api/BPMaster", BPMaster);
app.use("/api/ItemMaster", ItemMaster);
app.use("/api/Warehouse", Warehousemaster);
app.use("/api/HouseBankAccounts", HouseBankAccounts);
app.use("/api/SalesEmployees", SalesEmployees);
app.use("/api/Users", Users);

 

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  const err = new Error("API Not Found");
  err.httpStatusCode = 404;
  return next(err);
});

// error handler
app.use((err, req, res, next) => {
  const status = err.httpStatusCode || 500;
  const message = err.message;

  res.status(status).json({ message: message });
});
 
// Example APIs
app.get("/api/BPMaster/Select/ALL", (req, res) => {
    res.json({
        success: true,
        data: []
    });
});


app.listen(PORT, () => {
    

  var j = schedule.scheduleJob(
    // "*/" + environment.CycleTime + " * * * *",
      "* * * * *",
    () => {
      logger.info(`Executing every ${environment.CycleTime} minutes!`);
      logger.info(`/************************/`);

        MainController.UpdateChecking();
   
    }
  );
});
