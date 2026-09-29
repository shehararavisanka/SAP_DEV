const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const CompanyDetails = require('../controllers/Masters/CompanyDetails.controller');

router.get('/Select/ALL', isAuth, CompanyDetails.SelectData); 
router.get('/SelectByDate', isAuth, CompanyDetails.SelectDataBydate); 

module.exports = router;