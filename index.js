var http = require('http');
var url = require("url");
var route = require("./routes/routes.js").route; 
var handle= require('./handle.js');

http.createServer(function(request,response){
	//获取请求的路径参数
	var pathname = url.parse(request.url).pathname; 
	route(handle.handle,pathname,response,request);
}).listen(9999);
console.log("server start");
