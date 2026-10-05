const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const ItemMaster = require('../controllers/SQ.controller');

router.get('/Select/ALL', isAuth, ItemMaster.SelectData); 
router.get('/SelectByDate', isAuth, ItemMaster.SelectDataBydate); 

module.exports = router;