var mysql = require('mysql');
 
function Connection() {
  this.pool = null;
 
  this.init = function() {
    this.pool = mysql.createPool({
      connectionLimit: 10,
      host: '10.240.0.2',
      user: 'nodejs',
      password: 'nodejspass',
      database: 'testes'
    });
  };
 
  this.acquire = function(callback) {
    this.pool.getConnection(function(err, connection) {
      callback(err, connection);
    });
  };
}
 
module.exports = new Connection();
