const sapLogin = require("../SAP_Connection/SapLogin.controller");
const ServerUrl = require("../config/environment");
const axios = require("axios");
const logger = require("../util/default.logger");

exports.sapPost = async (saplocation, dataset, Sapmethod, callback) => {
  var response;

  try {
    // log in to SAP
    var saplogindt = await sapLogin.sapLogin();

    console.log('sap session id ' + saplogindt.SessionId);

    // set process.env.NODE_TLS_REJECT_UNAUTHORIZED to 0
    process.env.NODE_TLS_REJECT_UNAUTHORIZED = 0;

    if (process.env.NODE_ENV == "development") {
      process.env.NODE_TLS_REJECT_UNAUTHORIZED = 0;
    }

    // prepare axios payload
    var dataset = {
      url: ServerUrl.sapServiceLayer + "/b1s/v1/" + saplocation,
      method: Sapmethod,
      data: dataset,
      headers: {
        Cookie: `B1SESSION=${saplogindt.SessionId};`,
      },
    };

    // send the prepared payload using axios
    response = await axios(dataset);
  } catch (error) {
    if (error.response.status == 400) {
      logger.error("Bad Request: " + error.response.data.error.message.value);
    } else {
      logger.error("Error: " + JSON.stringify(error.response.data));
      response = error.response.data;
    }

    return error
  }

  return response;
};
