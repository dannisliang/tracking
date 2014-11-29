var mysql = require('mysql');
var db = require('../util/db.js');
//获取微信账号列表
var getWechatUsers=function(params,res){
	var sql="select * from wechats;";
	db.getList(sql,null,showUsers,res);
}
var showUsers=function(data,res){
	
	res.writeHead(200,{"Content-Type":"text/html"});
	var _str=[];
	_str.push("<table>");
	_str.push("<tr><th>微信账号</th><th>微信id</th><th>描述</th></tr>");
	for(var i=0;i<data.length;i++){
		_str.push("<tr><td>"+data[i].name+"</td><td>"+data[i].wechat_id+"</td><td>"+data[i].desc+"</td></tr>");
	}
	_str.push("</table>");
	res.write(_str.join(""));
	res.end();
}
var addUser=function(params,res){
	var sql="insert into wechats set ?";
	var obj={
		"wechat_id":params.wechat_id,
		"wechat_code":params.wechat_code,
		"name":params.name,
		"desc":params.desc,
		"classify":0
	};
	db.addItem(sql,obj,addUserAfter,res);
}
var addUserAfter=function(data,res){
	res.writeHead(200,{"Content-Type":"text/html"});
	res.write("添加成功,<a href=\"\">查看用户列表</a>");
	res.end();
}
exports.getWechatUsers=getWechatUsers;