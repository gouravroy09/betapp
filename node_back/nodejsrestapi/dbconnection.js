var mysql=require('mysql');
var connection=mysql.createPool({

host:'localhost',
user:'root',
password:'2012@roy@2012',
database:'betapp',
multipleStatements: true



});
module.exports=connection;			