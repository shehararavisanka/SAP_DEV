const express = require("express");
const schedule = require("node-schedule");
const authRouter = require("./routes/auth.route");
const requestLogger = require("./util/request.logger");
const logger = require("./util/default.logger");
const environment = require("./config/environment");
const bgprocesss = require("./util/bgprocess");
const app = express();
 
const Badmaster = require("./routes/BadmasterCreate.route");
const MainController = require("./controllers/Main.controller");

 

// running port
const PORT = process.env.PORT || environment.RunningPort;

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

app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerDocument));
 
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

app.listen(PORT, () => {
  logger.info(`API listens on port: ${PORT}`);

  var j = schedule.scheduleJob(
    // "*/" + environment.CycleTime + " * * * *",
    "* * * * * *",
    () => {
      logger.info(`Executing every ${environment.CycleTime} minutes!`);
      logger.info(`/************************/`);

       MainController.UpdateChecking();
   
    }
  );
});
