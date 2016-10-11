var express = require('express');
var bodyparser = require('body-parser');
var router = require('./routes');

 
var app = express();
app.use(bodyparser.urlencoded({extended: true}));
app.use(bodyparser.json());

router.configure(app);

app.get('/', function(req,res){
	res.render( 'index', { title: "ITCup test" } );
});

 
var server = app.listen(8000, function() {
  console.log('Server listening on port ' + server.address().port);
});
