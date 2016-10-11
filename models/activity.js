var connection = require('./../connection');


function Activity(){


 this.get = function(res) {
    connection.acquire(function(err, con) {

      con.query('select * from ', function(err, result) {

        con.release();
        res.send(result);

      });
    });
  };
	



}


module.exports = new Activity();
