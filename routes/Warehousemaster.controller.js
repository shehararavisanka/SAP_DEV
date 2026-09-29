const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const warehouse = require('../controllers/Masters/Warehousemaster.controller');

router.get('/Select/ALL', isAuth, warehouse.SelectData); 
router.get('/SelectByDate', isAuth,  warehouse.SelectDataBydate); 

module.exports = router;