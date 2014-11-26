var user = require('./server/user.js');
var http = require('http');
http.createServer(function(request,response){
	test(response);
	//user.getWechatUsers(null,response);
}).listen(9999);
console.log("server start http://localhost:9999");
function test(response){
	response.writeHead(200,{"Content-Type":"text/plain"});
	response.write("hello test");
	response.end();
}

 




