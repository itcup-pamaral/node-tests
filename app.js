var express = require('express');
var bodyparser = require('body-parser');
var router = require('./routes');


 
var app = express();
app.use(bodyparser.urlencoded({extended: true}));
app.use(bodyparser.json());
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.use('/weblibs', express.static( __dirname + '/weblibs'));

router.init();
router.configure(app);

 
var server = app.listen(8000, function() {
  console.log('Server listening on port ' + server.address().port);
});
