var myUtil = require('../myUtil.js');
var $ = require('jQuery');
var http = require('http');
var url="http://mp.weixin.qq.com/mp/getmasssendmsg?__biz=MjM5NTY2NjY4Nw&key=b0212c493356f8b0ad417e39d44eee253901cbd3300c0fa382c22a21fe774ca276cdd2a341f55257c1a31606bd54fcc0==#wechat_redirect";
//var url="http://mp.weixin.qq.com/mp/getmasssendmsg?__biz=MjM5NTY2NjY4Nw==#wechat_webview_type=1&wechat_redirect";
//var url="http://mp.weixin.qq.com/mp/getmasssendmsg?__biz=MjM5NTY2NjY4Nw==&uin=ODM2NDE0NTIx&key=63ae54cc90a5df05f399484d726abbfb35e0faacff1bed1c1b6366d0dfd348c0018f8c580b266c5487e3ed53349bfbc5&devicetype=android-18&version=26000036&lang=zh_CN&pass_ticket=xZehGaW7aQpjnEjPKLNj1Wn0FV6PrueH9ZqrwEz43sYYtAvYNnLAS5iLdWO%2BSB0z";
http.createServer(function(request, response) {   
	 myUtil.get(url,function(content,status){
		var movie={}
		movie.name = $(content).find('span[property="v:itemreviewed"]').text();
		movie.director = $(content).find('#info span:nth-child(1) a').text();
		//console.log(movie);
		response.writeHead(200, {"Content-Type": "text/html"});
		response.write(content);
		response.end();
	});
}).listen(9999); 
 console.log("Server has started."); 




