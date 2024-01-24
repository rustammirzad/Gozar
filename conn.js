const express = require("express");
const router = express.Router();

const mysql = require('mysql')

const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"online_shoping"
})

router.get(db)

module.exports = router;
