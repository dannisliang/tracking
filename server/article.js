var db = require('../util/db.js');
var $ = require('jQuery');
//获取微信账号列表
var addArticle=function(wechat_id,params){
	console.log("addArticle");
	params=params.list;
	for(var i=0;i<params.length;i++){
		var obj={
			"wechat_id":wechat_id,
			"title":params[i].app_msg_ext_info.title,
			"cont":params[i].app_msg_ext_info.digest,
			"pv":1,
			"praise":1,
			"classify":1,
			"url":params[i].app_msg_ext_info.content_url,
			"author":params[i].app_msg_ext_info.author,
			"cover":params[i].app_msg_ext_info.cover,
			"datetime":params[i].comm_msg_info.datetime,
			"article_id":params[i].comm_msg_info.id
		};
		var sql="insert into article set ?";
		db.addItem(sql,obj,getArticleList);
	}
}
var getArticleList=function(data){
	console.log("添加成功");
}
var getListByUser=function(parms,res){
	var sql="select * from article where wechat_id = ?";
	var wechat_id=params.wechat_id;
	db.getList(sql,wechat_id,showArticleList,res);
}
var showArticleList=function(res,data){
	res.writeHead(200,{"Content-Type":"text/html;"});
	res.write('<head><meta charset="utf-8"/></head>');
	res.write("文章列表");
	var _str=[];
	for(var i=0;i<data.length;i++){
		
	}
	res.end();
}
exports.getArticle=getArticle;
exports.getArtList=getArtList;
exports.addArticle=addArticle;
exports.getListByUser=getListByUser;
