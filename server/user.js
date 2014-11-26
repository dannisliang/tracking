var mysql = require('mysql');
var db = require('../util/db.js');
//获取微信账号列表
var getWechatUsers=function(params,res){
	var sql="select * from wechats;";
	showUsers(null,res);
	//var users=db.getList(sql,null,showUsers,res);
	//回调函数
	var showUsers=function(data,res){
		res.writeHead(200,{"Content-Type":"text/plain"});
		/*var _str=[];
		_str.push("<table>");
		_str.push("<tr><th>微信账号</th><th>微信id</th><th>描述</th></tr>");
		for(var i=0;i<data.length;i++){
			_str.push("<tr><td>"+data[i].name+"</td><td>"+data[i].wechat_id+"</td><td>"+data[i].desc+"</td></tr>");
		}
		_str.push("</table>");
		res.write(_str.join(""));*/
		res.write("test");
		res.end();
	}
}

exports.getWechatUsers=getWechatUsers;