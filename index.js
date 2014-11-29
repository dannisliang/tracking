var user = require('./server/user.js');
var article = require('./server/article.js');
var http = require('http');
var $ = require('jQuery');
var key="ae7efdf4934858e5267e166045d9c50ed003b312d3a87d2843acfccd6dc4576335579796d3fd2cabf226e341b40f3123",
uid="ODM2NDE0NTIx",
wechat_id="MjM5OTM5OTAyMQ",
prefix="http://mp.weixin.qq.com/mp/getmasssendmsg?__biz=",
subfix="==&uin="+uid+"&key="+key;
var list;
//var constant = require('./constant.js');
var robot = require('./util/robot.js');
//console.log(constant);

http.createServer(function(request,response){
	user.getWechatUsers(null,response);
}).listen(9999);
function getCont(){
	var url=prefix+wechat_id+subfix;
	//console.log(url);
	//url="http://192.168.2.194:6999/test2.html";
	robot.getCont(url,printCont);
}
var printCont=function(text){
	//获取页面的msgList列表
	if(/msgList = '(.*?)'/.test(text)){
		str = RegExp["$1"];
		str = htmlDecode(str);
		list = JSON.parse(str);
	}
	//将解析后的json数据插入到文章列表中
	article.addArticle(4,list);
}

//getCont();
function htmlDecode(e) {
	return e.replace(/&#39;/g, "'").replace(/<br\s*(\/)?\s*>/g, "\n").replace(/&nbsp;/g, " ").replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&quot;/g, '"').replace(/&amp;/g, "&");
}