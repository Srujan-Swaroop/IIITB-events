// set up ======================================================================
var express = require('express');
var app = express(); 						// create our app w/ express
var mysql=require('mysql');
var port = process.env.PORT || 4001; 				// set the port
// var database = require('./config/database'); 			// load the database config
var morgan = require('morgan');
var bodyParser = require('body-parser');
var methodOverride = require('method-override');
var path = require('path');
var http = require('http');
var multer  = require('multer');

var storage = multer.diskStorage({
  destination: './uploads/',
  filename: function (req, file, cb) {
    cb(null, file.originalname.replace(path.extname(file.originalname), "") + '-' + Date.now() + path.extname(file.originalname))
  }
})

var upload = multer({ storage: storage });





// configuration ===============================================================
var connection=mysql.createConnection({

    host:'localhost',
    user:'root',
    password:'' ,
    database:'sampled'
});
connection.connect(function(error){
//callback
    if(!!error)
    {
        console.log(error);
    }
    else
    {
        console.log("connected to database");
    }
});

  

app.use(express.static(__dirname + '/public'));
app.use(express.static(__dirname + '/public' + '/html'));
app.use(express.static(__dirname + '/public' + '/css'));
app.use(express.static(__dirname + '/public' + '/js'));  
app.use(express.static(__dirname + '/public' + '/events'));
app.use(express.static(__dirname + '/public' + '/gallery'+'/rise'));
app.use(express.static(__dirname + '/public' + '/gallery'+'/spandan'));
app.use(express.static(__dirname + '/public' + '/gallery'+'/infin8'));
app.use(express.static(__dirname + '/public' + '/gallery'+'/sangam'));
app.use(express.static(__dirname + '/public' + '/gallery'+'/yamini'));
app.use(express.static(__dirname + '/public' + '/gallery'+'/convocation')); 
app.use(express.static(__dirname + '/public' + '/gallery'+'/foundationday')); 
app.use(express.static(__dirname + '/uploads')); 

	// set the static files location /public/img will be /img for users



app.use(morgan('dev')); // log every request to the console
app.use(bodyParser.urlencoded({'extended': 'true'})); // parse application/x-www-form-urlencoded
app.use(bodyParser.json()); // parse application/json
app.use(bodyParser.json({type: 'application/vnd.api+json'})); // parse application/vnd.api+json as json
app.use(methodOverride('X-HTTP-Method-Override')); // override with the X-HTTP-Method-Override header in the request


// routes ======================================================================
require('./app/routes.js')(app,connection,upload);

// listen (start app with node server.js) ======================================
app.listen(port);
console.log("App listening on port " + port);
