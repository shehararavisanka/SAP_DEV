const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const SalesEmployees = require('../controllers/Masters/SalesEmployees.controller');

router.get('/Select/ALL',  SalesEmployees.SelectData); 
router.get('/SelectByDate',  SalesEmployees.SelectDataBydate); 

module.exports = router;