const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const warehouse = require('../controllers/Masters/Warehousemaster.controller');

router.get('/Select/ALL',  warehouse.SelectData); 
router.get('/SelectByDate',  warehouse.SelectDataBydate); 

module.exports = router;