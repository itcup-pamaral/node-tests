var express = require('express');
var bodyparser = require('body-parser');
var router = require('./routes');

 
var app = express();
app.use(bodyparser.urlencoded({extended: true}));
app.use(bodyparser.json());

router.configure(app);

app.get('/', function(req,res){
	res.send( '<html><head><title>its on!!</title></head><body><h1>these words say this, and these words dont!</h1></body></html>' );

});

 
var server = app.listen(8000, function() {
  console.log('Server listening on port ' + server.address().port);
});
