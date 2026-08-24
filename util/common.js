const { exec } = require("child_process");
const path = require("path");
const environment = require("../config/environment");
const http = require("http");

// open a url in chrome
exports.OpenURL = (url) => {
  const filePath = path.join(environment.localIP, "\\Interfaces\\index.html");
  res.sendFile(filePath);
};

exports.GetResponse = (status, message, body) => {
  return {
    status: status,
    message: message,
    body: body,
  };
};

exports.JSONIsEmpty = (object) => {
  var stringifiedObject = JSON.stringify(object);
  var returnValue = false;

  if (stringifiedObject === "{}" || stringifiedObject === "[]") {
    returnValue = true;
  }

  return returnValue;
};

exports.CallAPI = (path, method, body) => {
  const options = {
    hostname: environment.localIP + ":" + environment.RunningPort,
    path: path,
    method: method,
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(body),
  };

  try {
    const request = http.request(options, (response) => {
      response.setEncoding("utf8");

      response.on("data", (chunk) => {
        data += chunk;
      });

      response.on("end", () => {
        console.log(data);
      });
    });
  } catch (error) {}
};
