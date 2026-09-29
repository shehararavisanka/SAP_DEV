const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const SalesEmployees = require('../controllers/Masters/SalesEmployees.controller');

router.get('/Select/ALL', isAuth, SalesEmployees.SelectData); 
router.get('/SelectByDate', isAuth, SalesEmployees.SelectDataBydate); 

module.exports = router;