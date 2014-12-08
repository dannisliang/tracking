var getImg=function(res,params){
	res.writeHead(200,{"Content-Type":"text/html;"});
	res.write('<head><meta charset="utf-8"/></head>');
	res.write("<img src='http://mmbiz.qpic.cn/mmbiz/JnS0ibCmmzdcyQU15jcKsXJ9ALIKKCopy54Ae9B18ZWKoialTNH0YZRrMFhMYP60V1bMHTibEuCUvLFRcQC15JHJA/0'/>");
	res.end();
}
//获取微信账号列表
exports.getImg=getImg;
