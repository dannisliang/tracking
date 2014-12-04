var myUtil = require('../util/myUtil.js');
var constant = require('../constant.js');
var $ = require('jQuery');
var http = require('http');
var getCont=function(url,callback,id){
	//url="http://mp.weixin.qq.com/mp/getmasssendmsg?__biz=MjM5NTY2NjY4Nw==&uin=ODM2NDE0NTIx&key=c2e1b4ba73895db8e189b8872112f86e92160b980f2dc4b7c30660193b384303954d7d4a02bd19570817754a80ed45b0";
	myUtil.get(url,function(content,status){
		var movie={}
		movie.name = $(content).find('span[property="v:itemreviewed"]').text();
		movie.director = $(content).find('#info span:nth-child(1) a').text();
		if(callback){
			callback(content,id);
		}
	});
}
exports.getCont=getCont;