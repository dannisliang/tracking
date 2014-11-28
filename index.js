var user = require('./server/user.js');
var article = require('./server/article.js');
var http = require('http');
var $ = require('jQuery');
var key="122af43c2d88d49d92194f6762e236ab479bf8ee4e1f61f96ee6e66a113daa5870a3fb9a026f729d14e58a7f1124f65d",
uid="ODM2NDE0NTIx",
wechat_id="MjM5NTY2NjY4Nw",
prefix="http://mp.weixin.qq.com/mp/getmasssendmsg?__biz=",
subfix="==&uin="+uid+"&key="+key;
var list;
//var constant = require('./constant.js');
var robot = require('./util/robot.js');
//console.log(constant);
/*
http.createServer(function(request,response){
	user.getWechatUsers(null,response);
}).listen(9999);*/
function getCont(){
	var url=prefix+wechat_id+subfix;
	//console.log(url);
	url="http://192.168.2.194:6999/test3.html";
	robot.getCont(url,printCont);
}
var printCont=function(text){
	/*var str_arr=[];
	for(var i=0;i<27857;i++){
		str_arr[i]=i;
	}
	str_arr=str_arr.join("")+"ee";*/
	//console.log(text);
	console.log(/msgList = '(\S*)/.test(text));
	console.log(RegExp["$1"]);
	//console.log(/msgList = '(\S*)'/.test(text));
	if(/msgList = '(\S*)'/.test(text)){
		str = RegExp["$1"];
		str = htmlDecode(str);
		list = JSON.parse(str);
	}
	console.log(list);
	//article.addArticle(list);
}

getCont();
function htmlDecode(e) {
	return e.replace(/&#39;/g, "'").replace(/<br\s*(\/)?\s*>/g, "\n").replace(/&nbsp;/g, " ").replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&quot;/g, '"').replace(/&amp;/g, "&");
}