var connection = require('./connection');


module.exports = {
  configure: function(app) {
    app.get('/activity/', function(req, res) {

        connection.acquire( function(err, conn){
                var queryProcesses = 'select custom_wf_processo.data_ini, substring(custom_wf_diagrama_producao.nome,1,18), custom_wf_processo.creator, substring(joomla_rsform_submission_values.FieldValue,1,18)$
                conn.query( queryProcesses , [] , function(err,result){
                        conn.release();
                        res.send(result);
                });
        });


    });

 
    app.post('/activity/', function(req, res) {
      res.send( { status : 0 } );
    });
 
    app.put('/activity/', function(req, res) {
      res.send( { status : 0 } );
    });
 
    app.get('/activity/:id/', function(req, res) {
      res.send( { id : req.params.id , name : 'activity number ' + req.params.id , description : 'this describes the activity', owner : 'pedro amaral' } );
    });
  }
};
