var user = require("./server/user.js"); 
var article= require("./server/article.js");
var handle = {} 
//用户
exports.handle=handle;
handle["/user"] = user.getWechatUsers;
handle["/user/list"] = user.getWechatUsers;
handle["/user/add/success"] = user.addUserAfter;

