const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const ItemMaster = require('../controllers/Inventory.controller');

router.get('/Select/ALL', isAuth, ItemMaster.SelectData); 

module.exports = router;