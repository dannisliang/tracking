var db = require('../util/db.js');
var $ = require('jQuery');
//获取微信账号列表
var getArticle=function(params,res){
	var sql="select * from wechats;";
	db.getList(sql,null,showUsers,res);
}
var getArtList=function(params,res){
	//var sql="select * from article where ?";
	db.getList(sql,null,getArticleList,res);
}
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
exports.getArticle=getArticle;
exports.getArtList=getArtList;
exports.addArticle=addArticle;
