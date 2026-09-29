const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const Currency = require('../controllers/Masters/Currency.controller');

router.get('/Select/ALL', isAuth, Currency.SelectData); 
router.get('/SelectByDate', isAuth, Currency.SelectDataBydate); 

module.exports = router;