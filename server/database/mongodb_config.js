/*
 * 설정
 *
 * @date 2018-08-31
 * @author ThreeOn
 */

module.exports = {
    db_url: "mongodb://127.0.0.1:27017/etp",
    db_schemas: [
        { file: './mongodb/user_schema', collection: 'users', schemaName: 'UserSchema', modelName: 'UserModel' },
        { file: './mongodb/board_schema', collection: 'boards', schemaName: 'BoardSchema', modelName: 'BoardModel' },
    ],
}