const jwt = require('jsonwebtoken');

module.exports = (req, res, next) => {
  const token = req.get('Authorization').split(' ')[1];
  let decodedToken;
  try {
    decodedToken = jwt.verify(token, 'longer-secret-is-better');
  } catch (err) {
   // err.statusCode = 500;
   // throw err;

    const error = new Error('Couldn`t find the Authorization.');
    error.statusCode = 401;
    throw error;
  }

  if (!decodedToken) {
    const error = new Error('Not authenticated.');
    error.statusCode = 401;
    throw error;
  }

  next();
};
