var query = require("querystring");
var db = require('../util/db.js');
var article = require("./article.js");
var constant = require("../constant.js");
var robot = require("../util/robot.js");
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
		_str.push("<tr><td><a href='/user/artList?wechat_id="+data[i].id+"'>"+data[i].name+"</a></td><td>"+data[i].wechat_id+"</td><td>"+data[i].desc+"</td></tr>");
	}
	_str.push("</table>");
	res.write(_str.join(""));
	res.end();
}
//添加微信用户
var addUser=function(res,params){
	db.addItem(sql,obj,getContList,params);
}
//获取内容列表
var getContList=function(res,data,param){
	res.writeHead(200,{"Content-Type":"text/html;"});
	res.write('<head><meta charset="utf-8"/></head>');
	if(data.insertId){
		var key=constant.key,
		uid=constant.uid,
		wechat_code=param.wechat_code,
		prefix=constant.prefix,
		subfix=constant.subfix,
		url=prefix+wechat_code+subfix;
		console.log(url);
		robot.getCont(url,printCont,data.insertId);
		res.write("添加成功,<a href=\"/user\">查看用户列表</a>");
	}else{
		res.write("添加失败,<a href=\"/user/addView\">添加用户</a>");
	}
	res.end();
}

var printCont=function(text,id){
	//获取页面的msgList列表
	var list;
	if(/msgList = '(.*?)'/.test(text)){
		str = RegExp["$1"];
		str = htmlDecode(str);
		list = JSON.parse(str);
	}
	if(list){
		//将解析后的json数据插入到文章列表中
		article.addArticle(id,list);
	}else{
		console.log("key过期需要重新获取");
	}
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
//解析返回的数据格式，解析成json字符
function htmlDecode(e) {
	return e.replace(/&#39;/g, "'").replace(/<br\s*(\/)?\s*>/g, "\n").replace(/&nbsp;/g, " ").replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&quot;/g, '"').replace(/&amp;/g, "&");
}

//获取微信账号列表
exports.getWechatUsers = getWechatUsers;
//添加user模版
exports.addUserTpl = addUserTpl;
//添加微信用户
exports.addUser = addUser;
