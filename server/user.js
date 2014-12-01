var query = require("querystring");
var mysql = require('mysql');
var db = require('../util/db.js');
var user={};
//获取微信账号列表
var getWechatUsers=function(res){
	var sql="select * from wechats;";
	db.getList(sql,null,showUsers,res);
}
var showUsers=function(res,data){
	res.writeHead(200,{"Content-Type":"text/html;"});
	res.write('<head><meta charset="utf-8"/></head>');
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
//添加微信用户
var addUser=function(res,req){
	var postData = ""; 
	req.setEncoding("utf8"); 
	req.addListener("data", function(postDataChunk) { 
		postData += postDataChunk; 
    }); 
	req.addListener("end", function() {
		//获取post参数
		req = query.parse(postData);
		var name=req.name,
		wechat_id=req.wechat_id,
		wechat_code=req.wechat_code,
		desc=req.desc;
		var sql="insert into wechats set ?";
		var obj={
			"wechat_id":wechat_id,
			"wechat_code":wechat_code,
			"name":name,
			"desc":desc,
			"classify":0
		};
		db.addItem(sql,obj,addUserAfter,res);
    }); 
}
//添加用户的回调
var addUserAfter=function(res,data){
	res.writeHead(200,{"Content-Type":"text/html;"});
	res.write('<head><meta charset="utf-8"/></head>');
	if(data.insertId){
		res.write("添加成功,<a href=\"/user\">查看用户列表</a>");
	}else{
		res.write("添加失败,<a href=\"/user/addView\">添加用户</a>");
	}
	res.end();
}

var addUserTpl=function(res){
	res.writeHead(200,{"Content-Type":"text/html;"});
	res.write('<head><meta charset="utf-8"/></head>');
	var str=[];
	str.push("<form action=\"/user/addUser\" method=\"post\"><table>");
	str.push("<tr><td>微信号</td><td><input name=\"name\"/></td></tr>");
	str.push("<tr><td>微信id</td><td><input name=\"wechat_id\"/></td></tr>");
	str.push("<tr><td>微信code</td><td><input name=\"wechat_code\"/></td></tr>");
	str.push("<tr><td>描述</td><td><input name=\"desc\"/></td></tr>");
	str.push("<tr><td><input type=\"submit\" value=\"提交\"/></td><td></td></tr>");
	str.push("</table></form>");
	res.write(str.join(""));
	res.end();
}


//获取微信账号列表
exports.getWechatUsers = getWechatUsers;
//添加user模版
exports.addUserTpl = addUserTpl;
//添加用户成功
exports.addUserAfter = addUserAfter;
//添加微信用户
exports.addUser = addUser;
