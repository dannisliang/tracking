var http = require('http');
var url = require("url");
var route = require("./routes/routes.js").route; 
var handle= require('./handle.js');
var query = require("querystring");
var fs = require("fs");

http.createServer(function(request,response){
	request.setEncoding("utf8"); 
	var params;
	//获取请求的路径参数
	var pathname = url.parse(request.url).pathname;
	if(pathname.indexOf("mmbiz.qpic.cn")!=-1||pathname.indexOf("mp.weixin.qq.com")!=-1){
		 var IMGS = new imageServer(http, url);
		IMGS.http(url.parse(request.url, true).query.url, function(data) {
			res.writeHead(200, {"Content-Type": data.type});
			res.write(data.body, "binary");
			res.end();
		});
	}else{
		//取得后缀名
		var ext = pathname.match(/(\.[^.]+|)$/)[0];

		switch(ext){
			case ".css":
			case ".js":
				fs.readFile(fs.realpathSync('.')+request.url, 'utf-8',function (err, data) {//读取内容 
					if (err) throw err; 
					response.writeHead(200, { 
						"Content-Type": { 
							".css":"text/css", 
							".js":"application/javascript", 
						}[ext] 
					}); 
					response.write(data); 
					response.end(); 
				});
				break;
			case "":
			default:{
				//get请求
				if(request.method=="GET"){
					params=url.parse(request.url,true).query;
					route(handle.handle,pathname,response,params);
				//post请求
				}else{
					var postData="";
					request.addListener("data", function(postDataChunk) { 
						postData += postDataChunk; 
					});
					request.addListener("end", function() {
						//获取post参数
						params = query.parse(postData);
						route(handle.handle,pathname,response,params);
					});
				}
			}
		}
	}
}).listen(9999);
var imageServer = function(http, url) {
    var _url = url;
    var _http = http;

    this.http = function(url, callback, method) {
        method = method || 'GET';
        callback = callback ||
        function() {};
        var urlData = _url.parse(url);
        var request = _http.createClient(80, urlData.host).
        request(method, urlData.pathname, {
            "host": urlData.host
        });

        request.end();

        request.on('response', function(response) {
            var type = response.headers["content-type"],
                body = "";
            response.setEncoding('binary');
            response.on('end', function() {
                var data = {
                    type: type,
                    body: body
                };
                callback(data);

            });
            response.on('data', function(chunk) {
                if (response.statusCode == 200) body += chunk;
            });
        });

    };
};
console.log("server start");
