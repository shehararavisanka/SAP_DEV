const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const UoMGroup = require('../controllers/Masters/UoMGroup.controller');

router.get('/Select/ALL', isAuth, UoMGroup.SelectData); 
router.get('/SelectByDate', isAuth, UoMGroup.SelectDataBydate); 

module.exports = router;