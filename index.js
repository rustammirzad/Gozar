const express = require('express')
const app = express()
const mysql = require('mysql')

const {json } = require('express')
const cors = require('cors')

app.use(express.json())

app.use(cors({
    origin:["http://localhost:3000"],
    methods:["POST","GET"],
    credentials:true
}))

const cookieParser = require('cookie-parser')
const session = require('express-session')

app.use(cookieParser())

app.use(session({
    secret:'secret',
    saveUninitialized:false,
    cookie:{
        secure: false,
        maxAge: 1000*60*60*24
    }
}))
const bodyParser = require('body-parser');
app.use(bodyParser.json())

app.use('/images', express.static('./images'))
app.use('/icons', express.static('./icons'))

const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"online_shoping"
})


app.get('/',(req,res) => {
    const sql = "SELECT * FROM `items` ORDER BY item_id DESC";    
    db.query(sql,(err,data) => {
        if(err) return json(err);
        return res.json(data)
    })
})

app.get('/:id', (req,res) => {
    const id = req.params.id
    const sql = `SELECT * FROM items where item_id=${id}`;
    db.query(sql,(err,data) => {
        if(err) return json(err);
        return res.json(data)
    })
})



app.post('/login', (req,res) => {
    const sql = "SELECT * FROM users WHERE user_email=? and password=?";  
    let users = {
        user_email : req.body.username,
        password : req.body.password
    }
    console.log(users)
    db.query(sql,[users.user_email,users.password],(err,data) => {
        if(err) return res.json(err)
        if (data.length > 0) {
            req.session.userid = data[0].user_id;
            console.log(req.session.userid)
            return res.json({Login:true,userid:req.session.userid});
        }else{
            return res.json("Not Record")
        }
    })

})

app.get('/check-login',(req,res) => {
    if (req.session.userid) {
        console.log(`user Id : ${req.session.userid}`)
        return res.json({Login:true,userid:req.session.userid})
    }else{
        return res.json({Login:false})
    }
})

app.get("/setCookie",(req,res) => {
    res.cookie('userID','alijan')    
    //res.cookie("userID","rustam",{maxAge:minute})
    res.send(`cookie `)
})

app.get("/getCookie",(req,res) => {
    //return res.send("Welcome")
    const userid = req.cookies.userID
    return res.send(userid)
})

app.listen(8081,()=> console.log("Server start port : 8081"))
