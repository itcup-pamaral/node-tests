var connection = require('./connection');


module.exports = {
  configure: function(app) {
    app.get('/activity/', function(req, res) {

        connection.acquire( function(err, conn){
                var queryProcesses = "select custom_wf_processo.data_ini, substring(custom_wf_diagrama_producao.nome,1,18) as name_diag , custom_wf_processo.creator, custom_wf_processo.id, time_to_sec(TIMEDIFF(now(),custom_wf_processo.data_ini))/60 as remaining_time from custom_wf_diagrama_producao, custom_wf_processo, custom_wf_processo_tarefa, joomla_rsform_submission_values, custom_wf_processo_arvore, custom_wf_processo_alertas where custom_wf_diagrama_producao.alias=custom_wf_processo.nome and custom_wf_processo_tarefa.id_processo=custom_wf_processo.id and custom_wf_processo_tarefa.id_reg_form=joomla_rsform_submission_values.SubmissionId and joomla_rsform_submission_values.FieldName='Nome do Processo' and joomla_rsform_submission_values.Fieldname != 'texto' and custom_wf_processo.tarefa=custom_wf_processo_arvore.alias and custom_wf_processo_arvore.id_processo=custom_wf_processo.id and custom_wf_processo_arvore.motivo != 'nao' and custom_wf_processo.id=custom_wf_processo_alertas.id_processo and custom_wf_diagrama_producao.versao=custom_wf_processo.versao order by custom_wf_processo.data_ini desc limit 0,20";
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

    app.get('/', function(req,res){
      res.render( 'index', { title: "ITCup testooo" } );
    });
  }
};
