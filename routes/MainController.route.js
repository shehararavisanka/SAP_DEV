const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const bedmaster = require('../controllers/Main.controller.js');

router.post('/', isAuth, bedmaster.UpdateChecking); 

module.exports = router;