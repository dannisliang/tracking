-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-11-29 08:29:14
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `weixin`
--
CREATE DATABASE IF NOT EXISTS `weixin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `weixin`;

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `wechat_id` bigint(20) NOT NULL COMMENT '微信id',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `cont` text NOT NULL COMMENT '文章内容',
  `pv` int(11) NOT NULL COMMENT '访问量',
  `praise` int(11) NOT NULL COMMENT '点赞数',
  `classify` smallint(6) NOT NULL COMMENT '分类id',
  `url` varchar(500) NOT NULL COMMENT '文章的url',
  `author` varchar(255) DEFAULT NULL,
  `cover` varchar(500) DEFAULT NULL,
  `datetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `wechat_id`, `title`, `cont`, `pv`, `praise`, `classify`, `url`, `author`, `cover`, `datetime`) VALUES
(4, 1, '公共发型分子韩寒', '朝鲜所有后的真正领军人物金正恩，这位了不起的朝鲜最高发型领袖现如今和部下联系，主要通过两个圆纸筒和一根棉线做成的土电话，尽管如此，他依然对全国每一分钟的发型趋势了如指掌，只要他一声令下，全国人民可以统一在不出一刻钟的时间内换上同一种发型。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTY2NjY4Nw==&amp;mid=200882176&amp;idx=1&amp;sn=946fd4ecec5830584271035a7eada7cb&amp;scene=4#wechat_redirect', '曾培然', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/JnS0ibCmmzdcyQU15jcKsXJ9ALIKKCopy54Ae9B18ZWKoialTNH0YZRrMFhMYP60V1bMHTibEuCUvLFRcQC15JHJA\\/0', 1415438946),
(5, 1, '娶妻当娶猫头鹰', '在金丽华乔装外出期间，陪伴韩寒入眠的，是日后被他无情嘲讽的诗人赵丽华，她当时以一款LUOLAI床罩的身份，出现在韩寒床上，而且长达两个月之久——这也是韩寒了解事情原委后，公开撰文向赵丽华道歉的主因之一：哪怕是床罩，你也不能白睡人家。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTY2NjY4Nw==&amp;mid=200859838&amp;idx=1&amp;sn=7a7b5c5d41fe4d43f0b5768fc63ba632&amp;scene=4#wechat_redirect', '曾培然', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/JnS0ibCmmzddNKKuKtcMWAmPbxRBKTLqibb8LjadCBhthIRFZVUwIxMkNfnISPKibCZSHlzZLgl3ibT8ftoC9icWr5g\\/0', 1415342734),
(6, 1, '韩寒和他的跳蚤', '有人说嫉妒是明明自己喝了毒药，却希望对方死，韩寒没那么严重，但他确实希望自己喝泻药却让郭敬明拉肚子。诚如韩寒所言，这是一个又痛又痒的时代，只是，韩寒身上的痛没多少，他好像一直很痒，被一只跳蚤搞的。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTY2NjY4Nw==&amp;mid=200848599&amp;idx=1&amp;sn=6df3aa17b2e2a374376e22220ababd76&amp;scene=4#wechat_redirect', '曾培然', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/JnS0ibCmmzdfLScryH7huG2gExFMfyqmqmOMJcrgJx3vnLBesPoVcTDTdh7lHicnxaWKwOT7CfN5ZQVG0GDib1ib1Q\\/0', 1415278488),
(7, 2, '我对你的好，并不要你全都知晓', '﻿点击上方蓝色[此时]即可订阅每天睡前推送优美文章，分享此时此刻，让夜晚的梦境更安详我什么也没忘，但有些事只', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202807707&amp;idx=1&amp;sn=f16ea767d40740508d2ac24d3a0daacd&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqJje3elRb8iblt5ShrrFSVSSWKlRZp7wHRqo1ic338PBnQhIibwvkIT7vibSLjBqZweovdWgibHWOfcuqA\\/0', 1417179233),
(8, 2, '嗨！是我啊！', '嗨！是我啊！你们好吗？你没有看错「看书有道」今天改名为「此时」了此时此刻，你有没有感到惊喜呢？北岛说“那时我', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202779474&amp;idx=1&amp;sn=b575f34bdb598ce0d4243585a31245b9&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqKvos56p5WMe8968JXNcE319UvdL34dYJQb0SVu94udOCJb5ib3sLa0QCfq9ZwU0lp2XsgexsEGGUA\\/0', 1417091517),
(9, 2, '我们到底要怎样的生活？', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详命运就像自己的掌纹，虽然弯弯曲曲，', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202752172&amp;idx=1&amp;sn=bd7f5f8de583b60005050c88d4f4e3f3&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqIokl6exY8Gjf1VKeaJlC4U0RxJMdJgsMyIAInaiaE0yWzS6EM2RiaGLlw1p3IYglIUKXNnbaqWHKiaQ\\/0', 1417004258),
(10, 2, 'A common story', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详动心的时候万物复苏，什么都奔向欢喜', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202723254&amp;idx=1&amp;sn=de57f60a5093e723c463d996a38b0658&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqIqGbymErcVuoPrHDZx2W4IMssev7wzhyu0JiaTibuca1Wl0zm0e0ibY8PVHpOUaooKeU2qChficGY9yg\\/0', 1416918773),
(11, 2, '就连周杰伦都娶了昆凌', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详就连周杰伦都娶了昆凌赵牧南我妈这个', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202698230&amp;idx=1&amp;sn=fe273f6ec4835a17c928410ad38b1d12&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqKm8c9lA0Vcon2DxBDJicvxVr8gUHVERrica0nzaiaYjh4ianwuIrYHdmqgicjJfGt9qoYJ2Dt9VxE1vKg\\/0', 1416832687),
(12, 2, '请先把自己升级成女神', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详女人如果不性感就要感性；如果没有感', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202674182&amp;idx=1&amp;sn=6558207aaec713ac666ce4610a9b25e4&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqJLN9icS6XfOo6qhlLVXFmPngsOVXMYOOuYq0ma8fGKgBLacI3lzqHM7cXMVeV7SDgLo8cc6991QDg\\/0', 1416749215),
(13, 2, '多情城市', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详原来只要抬头，就能看见比手中更明亮', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202655018&amp;idx=1&amp;sn=71b2351cbeb28b167c3da63c636c82a1&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqI13AIdr7jjuCv2QxhfMarzegshRQX5j44z4rpRlAmOaBdyRG973g0FnIQd8ZLT6EbmsNjqlVib1og\\/0', 1416666290),
(14, 2, '让我执迷不悔，任性地沉醉', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详幸福，从没捷径，也没有完美无瑕，只', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202622376&amp;idx=1&amp;sn=0510897aa3fa8209d94836c5684b2f88&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqJnibFWr4QFXeVFl4kQ91299SwPeOVF0DpL4icKpvrXCdavDJJ2r0mcia8PJkcDXkr8angwLkibMlrBXQ\\/0', 1416575047),
(15, 2, '认真的人不要打招呼', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详在生命中曾经有过的所有灿烂，终究都', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202588471&amp;idx=1&amp;sn=c4e3692c9031a94cee5af4dd3ca76c5a&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqIBiaYsQzIXas1pPiaRgDTyI55iaGpKPGhJW954gf99VoNWHLTD6H6MHQswYDl2TibFicEMMFMLlX71X2Q\\/0', 1416490202),
(16, 2, '是你不能坚持了，还是我的任性推开了', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详多年后，生命里来来去去的人多得我都', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202559946&amp;idx=1&amp;sn=a2ad411db39807387fd920ca18dfbce6&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqJ29zBib4ReS9MbVqf86rcemKxiak5hd2ArTbaNqAU0UZ2TPCvovT4LsXCfD28MdX1pQgCOCITjUXQg\\/0', 1416402965),
(17, 3, '我 要 射 了', '如果你看过《塞拉菲尼手抄本》，那么你可能不会对下面长着一只蜗牛鸡巴的男人或者两腿夹着一棵莴苣的女人持有太多的', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202155557&amp;idx=1&amp;sn=baa432a113a9a3c0c64f13c005298c52&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9tRhZHrJqT8UaRoX16cicvgicxohShxsU82n8VSykSjX0Dyh0icL5G7dnNVS8buuxhibDIdD5Y8AMkhFg\\/0', 1417238542),
(18, 3, '变态！女大学生偷拍4名舍友裸照 满足男友', '女大学生偷拍4名舍友裸照 满足男友变态心理每日一测这是一张北大女生宿舍里一个女生的自拍照，仔细看看，有哪些令', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202143748&amp;idx=1&amp;sn=6fffba8b84ffa4b107bfcd6abc2f1d87&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9u39Zic2ibv1AGIdrtflnHrK7WTagibYJFNAic0DsB4ouPvagAUHMlHQ9HXH4zc783ZPxoZ2kpxYAnTFw\\/0', 1417171864),
(19, 3, '摩擦、摩擦，这个冬天擦出热情的火花', ' 时尚时尚最时尚，摩擦摩擦再摩擦。在2014最强洗脑神曲的旋律还未散去之前，同样讲述小人物梦想故事的微电影版', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202124630&amp;idx=1&amp;sn=7b38be53c195291f2f8e63bc96f1a6b9&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9vAzzTKKqRV5eRDXPlMhK95jLXUarticEpMMklvvHCqFI75uGia7tTZvicia9cKW7d69NL8RYlVWbjYiaw\\/0', 1417081404),
(20, 3, '宇宙最“冷”的游戏要内测了 点进去看的人都被冻住了', '　　如果你也是个游戏宅男宅女，那你千万别告诉我你不知道TGC是什么！如果你知道TGC是什么，那你千万别告诉我', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202105761&amp;idx=1&amp;sn=2c32663181809bc651b4ae73ffc97c1f&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9sgbicxKib16Oc72vMWV7CgtXe5OCF4uQjgH04YanouuYcgyFGY7PUl3adxrK1uBke9trgH8kpFMK3g\\/0', 1416996911),
(21, 3, '22种你吃不到的汉堡，咪咪汉堡好诱人啊！！', '法国艺术家duo Quentin和Thomas是Fat &amp; Furious汉堡店的创始人。他们自己形容自己是', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202078033&amp;idx=1&amp;sn=5f28f33003f8af2d66dc3a070a04f37b&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9vav8VBjBVTIMRsoJVB8XCz8C3cP7TnkIOkwBiczVNSdp8DK5qqX6bsCxGQ6TJqfQqibcDERbmIKCHg\\/0', 1416906140),
(22, 3, '星际穿越回来，你必须干的事儿！', '从星际穿越回来，你会思考什么？是要去用更多的爱来守护家人，还是用更多行动保护地球？亦或者是——超越自己的领地', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202052390&amp;idx=1&amp;sn=a476a13f4f90c2967f970536322d0bda&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9teXMPI7EOibMMFt1qJSQ1icXGMv88Ujhrbh5wC53wCU7No4mxqKKEPxibwOjLIJI2Mv3chHsVBw60vw\\/0', 1416830670),
(23, 3, '各种大尺度床照曝光，那尺度太大我不敢看~~~', '各种大尺度情趣房间看完了，我们一起去开房吧！！每日一测一天一个书法家死了，留下下面这幅图。三名嫌疑人分别是鲁', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202013363&amp;idx=1&amp;sn=a26c87282c7c263eca02099d7eca516f&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9uYaFJwn9jtef6BTpTDDUgucJRUUORjNvnyuFpmToRaMEfvPmeb683Siab0L59CtOR929Jia3o2hDUg\\/0', 1416712666),
(24, 3, '如何抚 摸才能让她更舒服？？？？', '我相信你是因为标题进来的，仔细的看完，你就知道这么摸才能让她舒服了。。。  1. 猫猫2. 狗狗3. 兔纸4', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=201994445&amp;idx=1&amp;sn=5cb1e6e73e56b92febe4528328c9d591&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9ttBtUysLF1R2MMRXqvcR5YHF38U8RHJ47raGgoM5NKXIjgYFSicQqR8dFcA9mTSTep1icmAo9Ymnrg\\/0', 1416649921),
(25, 3, '全球咪咪照大集锦', '这些咪咪照，你肯定没见过沙滩雨伞芭蕾舞鼠妈妈的鼻子尼加拉瓜大教堂的屋顶蘑菇蛋壳布鲁克林发电厂护耳草桥两座山峰', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=201945671&amp;idx=1&amp;sn=e588914f1bda706057e0e8d0a78c20f5&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9v28UdhLJPtOlNufXoLtuzaey0kPzTZHBJnmnTSznFec5ECWXnUEOEG92T1lwIy3KEgttYzNSccDA\\/0', 1416556774),
(26, 3, '小孩子根本看不懂的MV，未成年止步', 'WiFi下观看，土豪随意每日一测小明想追一个女孩，但这个女孩很讨厌这个男孩，有一天她发了如下内容的短信给男孩', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=201922591&amp;idx=1&amp;sn=21f4043ee16bab6a319784cb31f5aee0&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9tkxnJia1ILvRGpuyyZZSfb6Oo8gic6OU1Aa3ibwKCdtNebwsqDBsoK498EWTxJhE5p1XjF57d9UmnAw\\/0', 1416476689),
(27, 4, '8张PPT迅速了解：垂直行业的泡沫和生存法则', '11月28日，拉勾网创始人、董事长许单单财经天下举办的“异想大会”上，深度阐述近年来泡沫横生的垂直行业。许单', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202960114&amp;idx=1&amp;sn=4db451a3344d45af0bd4631c98daff51&amp;scene=4#wechat_redirect', '许单单', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSNCKZtTlw6ptT1hOUTbQNicd2WretwTibygNjO7eic7VkI4Z0LCWXYkChpdBuZofogic7d9kGQ2Um7Gqg\\/0', 1417189175),
(28, 4, '50页干货PPT：揭秘6.3亿网民的行为习惯与消费进化', '　综合来看，PC端互联网规模及营销市场规模近年来呈稳步增长势态，但增长速度在逐年下降，而移动互联网市场规模仍', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202918995&amp;idx=1&amp;sn=80fa18559f19a0afdd5f802d38a37deb&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSNc3g6loITVxiaicwTYzQCLf033GQELz5hMlibnyVmjGWmLd9uKFRia9HnFvBm4DYnPNJnvDJmVwM9I5g\\/0', 1417085362),
(29, 4, '新技能get√ | 如何快速入门一个陌生知识领域', '3W君看了一个coding视频，激发了学习的热情，如今依然不会敲下一行代码；看了别人在弹尤克里里，激发了好奇', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202891204&amp;idx=1&amp;sn=6cb7cfe72be3dd4914c0c4c5f1d7e359&amp;scene=4#wechat_redirect', 'Heidixie', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSNFgqCsfzh3icqGKP7y1Q4b5eqS6XaLcjibdHnu6SBVasicNW9ja6dCf7jDd5hicoac4EBSIouXrYLAyA\\/0', 1417006249),
(30, 4, '互联网时代方法论：寻找产品的那一点灵性', '图选自“iPod剪影艺术”南朝时谢灵运与颜延之并称颜谢，但有一次“颜延之尝问鲍照己与谢灵运优劣”，鲍照说：“', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202867203&amp;idx=1&amp;sn=d39c7233d70927800255751c4349ed87&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSMk4BO8wvyJCMSKlgeAYA0rmuRNWWL0EZibN3rTicnXwBwbnajgUdFULZrItJtHAGaIrmr1qPPGtnug\\/0', 1416920748),
(31, 4, '别任性！那个时代回不去了', '很多传统企业家问我：“润总，你研究互联网，能不能教我，怎么用互联网的办法保护我们原来的利益？”可是，如果你原', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202840434&amp;idx=1&amp;sn=727919da89fff86456aabd1df2825646&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSMKAHlFkzwZ7lSKiaEFhia4tyq8kNNicdj9SU3ajU7eCajibKFZG8mjzN9KXrmWAXicL5BlHqIM7S0joZA\\/0', 1416838644),
(32, 4, '字幕组招惹了谁？揭秘人人影视射手网关闭的真正原因', '3W导读：继人人影视宣布“清理内容”后，射手网也宣布关闭，陪伴我们长大的2大看外国影视节目必备网站可能就此永', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202810923&amp;idx=1&amp;sn=c72968e06eb18dca55d4086f379a5144&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSPfwGNw0icXrVYXzortMFFvdqhXn8XqtC6GYEXuMYRtXro4R7oleflOBUdLAHR4uVRiaAkkLlmKa8VQ\\/0', 1416748320),
(33, 4, '马化腾：腾讯做的不叫抄袭,互联网也会成为“传统行业”', '3W导读：移动互联网的商业模式日渐成型，移动互联网到来，让我们这样做了10几年的公司要重新考虑，比如游戏怎么', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202787793&amp;idx=1&amp;sn=0f21ede3f8b6884b8b332136f3d56f50&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSOwRduBmPLibaQ6E3DXR6cDl8uMYiaAQEIAkmiagjX8EPMkdwTpIxSkWKicPOsYYibgwbFCK4NAlicYx08A\\/0', 1416660335),
(34, 4, '媒体广告人路在何方？从30家初创公司眼中窥视创业趋势', '3W导读：本文作者辞去了做了4年半的豆瓣全职工作，走访了超过30个创业团队，对于未来新媒体以及创业趋势得出了', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202763371&amp;idx=1&amp;sn=267b3e02d105e371b92a2fa7a0aa941c&amp;scene=4#wechat_redirect', '叶飞', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSPSJWDVfu5uqibvTfHL2ClicYjBU616nX49lhetXAMsicIicaIX2mA8dDPvIticNt5icfM1On16Vlrw9N6Q\\/0', 1416576060),
(35, 4, '马云,雷军,马化腾,李彦宏,张朝阳！最全的互联网大会演讲精华', '3W君导读：首届世界互联网大会今日在浙江乌镇开幕。本文罗列了互联网大佬的演讲精华。【重磅推送】如果您想收看本', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202731492&amp;idx=1&amp;sn=d8068cdf06468b8e8e520db288123063&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSMhcgvahLaBjBuHpa3WggptL2pZXn7ibicSXs9tdy0evFibqibtmDdcrZfkNEVUZMibgu8vkiatsK0uljbA\\/0', 1416489291),
(36, 4, '有点失落怕被边缘化？互联网焦虑症怎么破', '3W君导读：互联网焦虑症，什么症状？有点失落感觉边缘化；有点焦虑互联网那些话题搞不懂参与不上；有点不安担心未', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202653616&amp;idx=1&amp;sn=2ea7fef984b58ac4dbea52d2dc596e62&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSNfNFApLUibUO5fOdQKdTn7ceNmVNV51ow2xr68JiaHfER0c9ZxCx3OHbD9UAuPicm1Hia4vDpRD85Q9Q\\/0', 1416402190);

-- --------------------------------------------------------

--
-- 表的结构 `wechats`
--

DROP TABLE IF EXISTS `wechats`;
CREATE TABLE IF NOT EXISTS `wechats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '微信号自增id',
  `wechat_id` varchar(255) NOT NULL COMMENT '微信号',
  `wechat_code` varchar(255) NOT NULL COMMENT '微信code',
  `name` varchar(255) NOT NULL COMMENT '公众账号的名称',
  `desc` varchar(500) NOT NULL COMMENT '公众账号的描述',
  `classify` smallint(6) NOT NULL COMMENT '分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='微信号信息表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `wechats`
--

INSERT INTO `wechats` (`id`, `wechat_id`, `wechat_code`, `name`, `desc`, `classify`) VALUES
(1, 'Einwoody', 'MjM5NTY2NjY4Nw', '曾言真语', '师承王小波和伍迪.艾伦，在文字游戏中给您尽可能多的资讯', 1),
(2, 'yiqikanshu', 'MjM5MDIwNTcyMA', '看书有道', '一本书，一句话，一段情，一生思索', 0),
(3, 'lengxhboss', 'MjM5NzIyODk4MA', '十万个冷笑话', '收集各类笑话，各种萌', 0),
(4, 'studywww', 'MjM5OTM5OTAyMQ', '3W互联网深度精选', '关注互联网行业趋势、产品创新、创业与投资、互联网领袖言论，每天推荐一篇最有价值的深度互联网干货', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
