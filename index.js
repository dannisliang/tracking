var user = require('./server/user.js');
var http = require('http');
var key="c2e1b4ba73895db8e189b8872112f86e92160b980f2dc4b7c30660193b384303954d7d4a02bd19570817754a80ed45b0",
uid="ODM2NDE0NTIx",
prefix="http://mp.weixin.qq.com/mp/getmasssendmsg?__biz=",
subfix="==&uin="+exports.uid+"&key="+exports.key;
//var constant = require('./constant.js');
var robot = require('./util/robot.js');
//console.log(constant);
/*
http.createServer(function(request,response){
	user.getWechatUsers(null,response);
}).listen(9999);*/
function getCont(){
	var url=prefix+"MjM5NTY2NjY4Nw"+subfix;
	//console.log(url);
	robot.getCont(url,printCont);
}
var printCont=function(data){
	console.log(data);
}
getCont();