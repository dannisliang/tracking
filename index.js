var http = require('http');
var url = require("url");
var user = require('./server/user.js');
var article = require('./server/article.js');
var robot = require('./util/robot.js');
var route = require("./routes/routes.js").route; 
var handle= require('./handle.js');

var list;

http.createServer(function(request,response){
	//获取请求的路径参数
	var pathname = url.parse(request.url).pathname; 
	route(handle.handle,pathname,response,request);
}).listen(9999);

console.log("server start");
function getCont(){
	var key="4c02ecf06e19ca024e5437be81c200769493c9e8ce85e805885375e060a2cc07340004c296ada7de6fc8b0538a97cc97",
	uid="ODM2NDE0NTIx",
	wechat_id="MzA4NDMzNjMyNQ",
	prefix="http://mp.weixin.qq.com/mp/getmasssendmsg?__biz=",
	subfix="==&uin="+uid+"&key="+key;
	var url=prefix+wechat_id+subfix;
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
	if(list){
		//将解析后的json数据插入到文章列表中
		article.addArticle(7,list);
	}else{
		console.log("key过期需要重新获取");
	}
}

//getCont();
//解析返回的数据格式，解析成json字符
function htmlDecode(e) {
	return e.replace(/&#39;/g, "'").replace(/<br\s*(\/)?\s*>/g, "\n").replace(/&nbsp;/g, " ").replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&quot;/g, '"').replace(/&amp;/g, "&");
}