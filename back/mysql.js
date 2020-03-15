const mysql = require('mysql');
var pool = mysql.createPool({
    host: '127.0.0.1',
    user: 'root',
    password: 'root',
    database: 'bbs'
});
let allServices = {
    query: function (sql, values) {

        return new Promise((resolve, reject) => {
            pool.getConnection(function (err, connection) {
                if (err) {
                    reject(err)
                } else {
                    connection.query(sql, values, (err, rows) => {

                        if (err) {
                            reject(err)
                        } else {
                            resolve(rows)
                        }
                        connection.release()
                    })
                }
            })
        })

    },
   findUserData: function (tableName) {
        // let _sql = `select * from user where username="${name}";`
        let _sql = `select * from ${tableName};`
        return allServices.query(_sql)
    },
    addUserData: (obj) => {
         let _sql = "insert into goods set goods_id=?,goods_desc=?,goods_price=?,goods_url=?,goods_detailurl=?,goods_name=?;"
         return allServices.query(_sql, obj)
     },
     addGroupGoods: (obj) => {
        let _sql = "insert into groupgoods set groupgoods_id=?,groupgoods_desc=?,groupgoods_originalprice=?,groupgoods_groupbuyprice=?,groupgoods_url=?,groupgoods_detailurl=?,groupgoods_name=?,groupgoods_sale=?;"
        return allServices.query(_sql, obj)
    }
}

module.exports = allServices;