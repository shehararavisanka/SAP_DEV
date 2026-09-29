const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const PriceList = require('../controllers/Masters/PriceList.controller');

router.get('/Select/ALL', isAuth, PriceList.SelectData); 
router.get('/SelectByDate',isAuth,  PriceList.SelectDataBydate); 

module.exports = router;