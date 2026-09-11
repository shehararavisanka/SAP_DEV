const express = require('express');
const router = express.Router();
const isAuth = require('../middleware/is-auth');
const Users = require('../controllers/Masters/Users.controller');

router.get('/Select/ALL',  Users.SelectData); 
router.get('/SelectByDate',  Users.SelectDataBydate); 

module.exports = router;