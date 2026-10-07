const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const SO = require('../controllers/arcreditmemo.controller');

router.get('/Select/ALL', isAuth, SO.SelectData); 
router.get('/SelectByDate', isAuth, SO.SelectDataBydate); 

module.exports = router;