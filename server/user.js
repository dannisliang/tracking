var mysql = require('mysql');
var db = require('../util/db.js');
//获取微信账号列表
var getWechatUsers=function(){
	var sql="select * from wechats;";
	var users=db.getList(sql,null);
	console.log(users);
}
exports.getWechatUsers=getWechatUsers;