const { validationResult } = require('express-validator');
const jwt = require('jsonwebtoken');

exports.user_login = (req, res, next) => {
  
  // hardcode user name password for admin
  console.log(req.body)
  const userName = req.body.username;
  const password = req.body.password;

  if (!userName) {
    const error = new Error('Could not find the user.');
    error.statusCode = 401;
    throw error;
  }

  if (!password) {
    const error = new Error('Incorrect username or password.');
    error.statusCode = 401;
    throw error;
  }

  let jwtToken = jwt.sign(
    {
      id: userName,
      role: 'user',
    },
    'longer-secret-is-better',
    {
      expiresIn: '1h',
    }
  );
  res.status(200).json({
    message: 'User found.',
    token: jwtToken,
    expiresIn: 3600,
    role: 'user',
  });
};
