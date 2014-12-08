var user = require("./server/user.js"); 
var article= require("./server/article.js");
var test=require("./server/test.js");
var handle = {} 
//用户
exports.handle=handle;
handle["/user"] = user.getWechatUsers;
handle["/user/list"] = user.getWechatUsers;
handle["/user/addView"] = user.addUserTpl;
handle["/user/addUser"] = user.addUser;
handle["/user/add/success"] = user.addUserAfter;
handle["/user/getArticle"] = user.getArticle;
//根据用户id获取文章列表
handle["/user/artList"]= article.getListByUser;
handle["/test"]=test.getImg;

