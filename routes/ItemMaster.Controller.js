const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const ItemMaster = require('../controllers/Masters/ItemMaster.controller');

router.get('/Select/ALL',  ItemMaster.SelectData); 
router.get('/SelectByDate',  ItemMaster.SelectDataBydate); 

module.exports = router;