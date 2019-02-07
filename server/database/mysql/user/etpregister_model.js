/*
 * 설정
 *
 * @date 2019-02-07
 * @author ThreeOn
 * /database/mysql/user/etpregister_model.js
 */
var model = {};

model.selectEtpRegisterList = function(options) {
	console.log('selectEtpRegisterList');

    var stmt = 'SELECT * from m001uetpmaster WHERE 1=1';
    
    // if(options.id != null) {
    //     stmt += ` AND ID = \'${options.id}\'`;
    // }
    return stmt;
}

module.exports = model;
