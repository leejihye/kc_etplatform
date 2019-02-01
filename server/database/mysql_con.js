/*
 * 설정
 *
 * @date 2018-08-31
 * @author ThreeOn
 */
var mysql = require('mysql');

// database 객체에 db, schema, model 모두 추가
var mydb = {};

mydb.init = function(app) {
	console.log('init() 호출됨.');
	
    mydb.db = mysql.createConnection({
        host: "127.0.0.1",
        port: 3306,
        user: "kc_etp",
        password: "kc_etp",
        database: "kc_etp"
    });

    mydb.db.connect(function (err) {
    if (err) {
        console.error('mysql connection error :' + err);
    } else {
        console.info('mysql is connected successfully.');
    }
    })
    app.set('mydb', mydb);
    console.log('mydb 객체가 app 객체의 속성으로 추가됨.');
}

// database 객체를 module.exports에 할당
module.exports = mydb;
