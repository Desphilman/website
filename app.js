const express = require("express");
const Recaptcha = require('recaptcha-v2').Recaptcha;
const path = require("path");
const app = express();
const PUBLIC_KEY  = '6Lcy_i4aAAAAAGInSrxCDvkpDBA48QbFwLd6G-M6';
const mysql = require('mysql');
require('dotenv').config();
const PRIVATE_KEY=process.env.PRIVATE_KEY;
//starting server
const port = 3157;
app.listen(port,()=>{ console.log("servre listening on port : ",port)});

//using absolute path for rendering html
app.use('/images', express.static(__dirname + '/html/images'));
app.use('/css', express.static(__dirname + '/html/css'));
app.use('/js', express.static(__dirname + '/html/js'));
//app.use(morgan());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());


//mysql connection
const conn = mysql.createConnection({
	host: process.env.DB_HOST,
	user: process.env.DB_USER,
	password: process.env.DB_PASSWORD,
	database: process.env.DB_DB
});



app.get('/',function(req,res) {
  res.sendFile(path.join(__dirname + '/html/index.html'));
});

app.get('/survey',function(req,res) {
  res.sendFile(path.join(__dirname + '/html/survey/survey.html'));
});

app.get('/services',function(req,res) {
  res.sendFile(path.join(__dirname + '/html/services/services.html'));
});

app.post('/survey' , function(req, res , next) {
    var data = {
		remoteip:  req.connection.remoteAddress,
		response:  req.body['g-recaptcha-response'],
		secret: PRIVATE_KEY
    };
    var recaptcha = new Recaptcha(PUBLIC_KEY, PRIVATE_KEY, data);

    recaptcha.verify(function(success, error_code) {
        if (success) {
        	const userDetails=req.body;
			 delete userDetails['g-recaptcha-response'];

			  // insert user data into users table
			  var sql = 'INSERT INTO survey SET ?';
			  conn.query(sql, userDetails,function (err, data) { 
			      if (err) throw err;
			         console.log("User data is inserted successfully "); 
			  });
			 res.redirect('/'); 

                    }
        else {
           console.log("captcha failed"); // Redisplay the form.
          res.redirect('/survey');
        }
    });
});
  

//res.end(JSON.stringify(req.body));
 
//console.log("post recived",req.body);



//test


