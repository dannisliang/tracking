var mysql = require('mysql');
//数据库连接配置
var conn = mysql.createConnection({
    host: 'localhost',//数据库host
    user: 'root',//数据库用户名
    password: '',//数据库密码
    database:'weixin',//数据库名
    port: 3306//数据端口号
});


//获取单个对象信息
var getItem=function(sql,params,callback){
	exports.query(sql,params);
}
//获取列表信息
var getList=function(sql,params,callback,res){
	query(sql,params,callback,res);
}
//添加单个信息
var addItem=function(sql,params,callback){
	query(sql,params,callback);
}
//删除单个信息
var delItem=function(){
	exports.query(sql,params);
}
//query查询操作
var query=function(sql,params,callback,res){
	if(!conn._connectCalled){
		conn.connect();
	}
	conn.query(sql,params, function(err, rows, fields) {
		if (err) throw err;
		callback(rows,res);
	});
}
exports.getList = getList;
exports.addItem = addItem;
exports.delItem = delItem;