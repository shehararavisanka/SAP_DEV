const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const BPMaster = require('../controllers/Masters/BPMaster.controller');

router.get('/Select/ALL', isAuth, BPMaster.SelectData); 
router.get('/SelectByDate',isAuth,  BPMaster.SelectDataBydate); 

module.exports = router;