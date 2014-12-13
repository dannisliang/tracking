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
		db.addItem(sql,obj,addArticleCallback);
	}
}
var addArticleCallback=function(data){
	console.log("添加成功");
}
//根据微信id获取文章列表
var getListByUser=function(res,params){
	var sql="select * from article where wechat_id = ? limit 10";
	var wechat_id=params.wechat_id;
	db.getList(sql,wechat_id,showArticleList,res);
}
//显示文章列表
var showArticleList=function(res,data){
	res.writeHead(200,{"Content-Type":"text/html;"});
	res.write('<head><meta charset="utf-8"/><meta id="viewport" name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no"><link type="text/css" rel="stylesheet" href="/css/article_detail.css"/> </head>');
	var _str=[];
	_str.push("<div class=\"msg_page\">");
	for(var i=0;i<data.length;i++){
		
		_str.push('<div class="msg_list"><div class="msg_list_hd"><h3 class="msg_list_date">2014年11月8日</h3></div><div class="msg_list_bd"><div msgid="200882177" class="msg_wrapper" id="WXAPPMSG200882177"><p class="msg_date">2014年11月8日</p><div class="msg_inner_wrapper default_box news_box"><a hrefs="http://mp.weixin.qq.com/s?__biz=MjM5NTY2NjY4Nw==&amp;mid=200882176&amp;idx=1&amp;sn=946fd4ecec5830584271035a7eada7cb&amp;scene=4#wechat_redirect" class="msg_item news redirect"><div class="msg_item_hd"><h4 class="msg_title">'+data[i].title+'</h4></div><div class="msg_item_bd"><div class="msg_cover"><img  src="'+data[i].cover.replace(/\\\//g,"/")+'"></div><p class="msg_desc">朝鲜所有后的真正领军人物金正恩，这位了不起的朝鲜最高发型领袖现如今和部下联系，主要通过两个圆纸筒和一根棉线做成的土电话，尽管如此，他依然对全国每一分钟的发型趋势了如指掌，只要他一声令下，全国人民可以统一在不出一刻钟的时间内换上同一种发型。</p></div><div class="msg_item_ft"><a href="'+data[i].url.replace(/\\\//g,"/")+'">阅读原文</a><span class="add_on_icon arrow"></span></div></a></div></div></div></div>');
	}
	_str.push("</div>");
	res.write(_str.join(""));
	res.end();
}
//解析返回的数据格式，解析成json字符
function htmlDecode(e) {
	return e.replace(/&#39;/g, "'").replace(/<br\s*(\/)?\s*>/g, "\n").replace(/&nbsp;/g, " ").replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&quot;/g, '"').replace(/&amp;/g, "&");
}
exports.addArticle=addArticle;
exports.getListByUser=getListByUser;
