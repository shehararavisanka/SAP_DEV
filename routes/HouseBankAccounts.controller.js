const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const HouseBankAccounts = require('../controllers/Masters/HouseBankAccounts.controller');

router.get('/Select/ALL',  HouseBankAccounts.SelectData); 
router.get('/SelectByDate',  HouseBankAccounts.SelectDataBydate); 

module.exports = router;