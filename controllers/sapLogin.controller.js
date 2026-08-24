const fs = require('fs');

const locks = require('locks');
const axios = require('axios');
require('datejs');
const logger = require('../util/default.logger');
const environment = require('../config/environment');
const { data } = require('../util/default.logger');

exports.sapLogin = () => {
  try {
 
   //  const sapData =   fs.readFile("config.Json"); 
   var sapData = fs.readFileSync("config.Json", 'utf8');
     
     
   
    if (sapData) {
      
      if (checkTokenValidity(JSON.parse(sapData))) {
      
        return JSON.parse(sapData);
      } else {
       
        return login();
      }
    } else {
     
      return login();
    }

  } catch (err) {
    console.error(err);
  }

  // access the sapdata
  //check is the token still valid
  //if token is valid proceed with existing token
};

const checkTokenValidity = (sapData) => {
  if (sapData) {
    //if sapdata.expiry date time > current date
 
   
    const expired = Date.compare(new Date(sapData.expireDateTime),new Date());
   
    if (expired != -1) {
      return true;
    }

    return false;
  } else {
    return false;
  }
};

const login = async () => {
  try {

    let mutex = locks.createMutex();

    mutex.timedLock(5000 * 60, function (error) {
      if (error) {

      } else {

        //   const sapData = fs.readFileSync('../confing/sapdata.json', 'utf8');
        var sapData = fs.readFileSync("config.Json", 'utf8');
        let response;

        if (sapData.expireDateTime) {
          if (checkTokenValidity(sapData)) {
            response = JSON.parse(sapData);
          } else {
            response = actualLogin();
          }
        } else {
          response = actualLogin();
        }
        mutex.unlock();

        return response;
      }
    });
  } catch (error) {
    logger.error('Login Failed');
    logger.error(
      `Login Failed.`,
      error.response.data.error.code,
      error.response.data.error.message.value
    );

  }
};

const actualLogin = async () => {

  let payload = {
    CompanyDB: environment.companyDB,
    UserName: environment.username,
    Password: environment.password,
  };

  process.env.NODE_TLS_REJECT_UNAUTHORIZED = 0;
  if (process.env.NODE_ENV == 'development') {
    process.env.NODE_TLS_REJECT_UNAUTHORIZED = 0;
  }

  var response = await axios({
    url: environment.sapUrl + '/b1s/v1/Login',
    method: 'post',
    data: payload,
  });


  logger.info(
    `Login success - Company Name : ${payload.CompanyDB} - User Name : ${payload.UserName}`
  ); 
  if (response && response.data) {
    response.data.expireDateTime = new Date().addMinutes(25);
    try {
      fs.writeFileSync("config.Json", JSON.stringify(response.data));
      logger.info('Login details updated successfully');
    } catch (err) {
      console.error(err);
    }
    return response.data;
  } else {
    logger.log('response not received');
    return null;
  }
};
