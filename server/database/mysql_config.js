/*
 * 설정
 *
 * @date 2019-02-01
 * @author ThreeOn
 */

module.exports = {
    host: "127.0.0.1",
    port: 3306,
    user: "kc_etp",
    password: "kc_etp",
    database: "kc_etp",
    db_model: [
        { file: './mysql/user/member_model', modelName: 'UserMember' },
        { file: './mysql/user/etpregister_model', modelName: 'EtpRegister' },
        { file: './mysql/admin/member_model', modelName: 'AdminMember' },
    ],
}