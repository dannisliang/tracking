-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-12-03 06:57:28
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
  `article_id` varchar(100) DEFAULT NULL COMMENT '文章id（微信中）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `wechat_id`, `title`, `cont`, `pv`, `praise`, `classify`, `url`, `author`, `cover`, `datetime`, `article_id`) VALUES
(4, 1, '公共发型分子韩寒', '朝鲜所有后的真正领军人物金正恩，这位了不起的朝鲜最高发型领袖现如今和部下联系，主要通过两个圆纸筒和一根棉线做成的土电话，尽管如此，他依然对全国每一分钟的发型趋势了如指掌，只要他一声令下，全国人民可以统一在不出一刻钟的时间内换上同一种发型。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTY2NjY4Nw==&amp;mid=200882176&amp;idx=1&amp;sn=946fd4ecec5830584271035a7eada7cb&amp;scene=4#wechat_redirect', '曾培然', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/JnS0ibCmmzdcyQU15jcKsXJ9ALIKKCopy54Ae9B18ZWKoialTNH0YZRrMFhMYP60V1bMHTibEuCUvLFRcQC15JHJA\\/0', 1415438946, NULL),
(5, 1, '娶妻当娶猫头鹰', '在金丽华乔装外出期间，陪伴韩寒入眠的，是日后被他无情嘲讽的诗人赵丽华，她当时以一款LUOLAI床罩的身份，出现在韩寒床上，而且长达两个月之久——这也是韩寒了解事情原委后，公开撰文向赵丽华道歉的主因之一：哪怕是床罩，你也不能白睡人家。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTY2NjY4Nw==&amp;mid=200859838&amp;idx=1&amp;sn=7a7b5c5d41fe4d43f0b5768fc63ba632&amp;scene=4#wechat_redirect', '曾培然', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/JnS0ibCmmzddNKKuKtcMWAmPbxRBKTLqibb8LjadCBhthIRFZVUwIxMkNfnISPKibCZSHlzZLgl3ibT8ftoC9icWr5g\\/0', 1415342734, NULL),
(6, 1, '韩寒和他的跳蚤', '有人说嫉妒是明明自己喝了毒药，却希望对方死，韩寒没那么严重，但他确实希望自己喝泻药却让郭敬明拉肚子。诚如韩寒所言，这是一个又痛又痒的时代，只是，韩寒身上的痛没多少，他好像一直很痒，被一只跳蚤搞的。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTY2NjY4Nw==&amp;mid=200848599&amp;idx=1&amp;sn=6df3aa17b2e2a374376e22220ababd76&amp;scene=4#wechat_redirect', '曾培然', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/JnS0ibCmmzdfLScryH7huG2gExFMfyqmqmOMJcrgJx3vnLBesPoVcTDTdh7lHicnxaWKwOT7CfN5ZQVG0GDib1ib1Q\\/0', 1415278488, NULL),
(7, 2, '我对你的好，并不要你全都知晓', '﻿点击上方蓝色[此时]即可订阅每天睡前推送优美文章，分享此时此刻，让夜晚的梦境更安详我什么也没忘，但有些事只', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202807707&amp;idx=1&amp;sn=f16ea767d40740508d2ac24d3a0daacd&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqJje3elRb8iblt5ShrrFSVSSWKlRZp7wHRqo1ic338PBnQhIibwvkIT7vibSLjBqZweovdWgibHWOfcuqA\\/0', 1417179233, NULL),
(8, 2, '嗨！是我啊！', '嗨！是我啊！你们好吗？你没有看错「看书有道」今天改名为「此时」了此时此刻，你有没有感到惊喜呢？北岛说“那时我', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202779474&amp;idx=1&amp;sn=b575f34bdb598ce0d4243585a31245b9&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqKvos56p5WMe8968JXNcE319UvdL34dYJQb0SVu94udOCJb5ib3sLa0QCfq9ZwU0lp2XsgexsEGGUA\\/0', 1417091517, NULL),
(9, 2, '我们到底要怎样的生活？', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详命运就像自己的掌纹，虽然弯弯曲曲，', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202752172&amp;idx=1&amp;sn=bd7f5f8de583b60005050c88d4f4e3f3&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqIokl6exY8Gjf1VKeaJlC4U0RxJMdJgsMyIAInaiaE0yWzS6EM2RiaGLlw1p3IYglIUKXNnbaqWHKiaQ\\/0', 1417004258, NULL),
(10, 2, 'A common story', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详动心的时候万物复苏，什么都奔向欢喜', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202723254&amp;idx=1&amp;sn=de57f60a5093e723c463d996a38b0658&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqIqGbymErcVuoPrHDZx2W4IMssev7wzhyu0JiaTibuca1Wl0zm0e0ibY8PVHpOUaooKeU2qChficGY9yg\\/0', 1416918773, NULL),
(11, 2, '就连周杰伦都娶了昆凌', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详就连周杰伦都娶了昆凌赵牧南我妈这个', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202698230&amp;idx=1&amp;sn=fe273f6ec4835a17c928410ad38b1d12&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqKm8c9lA0Vcon2DxBDJicvxVr8gUHVERrica0nzaiaYjh4ianwuIrYHdmqgicjJfGt9qoYJ2Dt9VxE1vKg\\/0', 1416832687, NULL),
(12, 2, '请先把自己升级成女神', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详女人如果不性感就要感性；如果没有感', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202674182&amp;idx=1&amp;sn=6558207aaec713ac666ce4610a9b25e4&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqJLN9icS6XfOo6qhlLVXFmPngsOVXMYOOuYq0ma8fGKgBLacI3lzqHM7cXMVeV7SDgLo8cc6991QDg\\/0', 1416749215, NULL),
(13, 2, '多情城市', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详原来只要抬头，就能看见比手中更明亮', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202655018&amp;idx=1&amp;sn=71b2351cbeb28b167c3da63c636c82a1&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqI13AIdr7jjuCv2QxhfMarzegshRQX5j44z4rpRlAmOaBdyRG973g0FnIQd8ZLT6EbmsNjqlVib1og\\/0', 1416666290, NULL),
(14, 2, '让我执迷不悔，任性地沉醉', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详幸福，从没捷径，也没有完美无瑕，只', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202622376&amp;idx=1&amp;sn=0510897aa3fa8209d94836c5684b2f88&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqJnibFWr4QFXeVFl4kQ91299SwPeOVF0DpL4icKpvrXCdavDJJ2r0mcia8PJkcDXkr8angwLkibMlrBXQ\\/0', 1416575047, NULL),
(15, 2, '认真的人不要打招呼', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详在生命中曾经有过的所有灿烂，终究都', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202588471&amp;idx=1&amp;sn=c4e3692c9031a94cee5af4dd3ca76c5a&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqIBiaYsQzIXas1pPiaRgDTyI55iaGpKPGhJW954gf99VoNWHLTD6H6MHQswYDl2TibFicEMMFMLlX71X2Q\\/0', 1416490202, NULL),
(16, 2, '是你不能坚持了，还是我的任性推开了', '﻿点击上方蓝色[看书有道]即可订阅每天睡前推送优美文章，让夜晚的梦境更安详多年后，生命里来来去去的人多得我都', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5MDIwNTcyMA==&amp;mid=202559946&amp;idx=1&amp;sn=a2ad411db39807387fd920ca18dfbce6&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/L82foEjHPqJ29zBib4ReS9MbVqf86rcemKxiak5hd2ArTbaNqAU0UZ2TPCvovT4LsXCfD28MdX1pQgCOCITjUXQg\\/0', 1416402965, NULL),
(17, 3, '我 要 射 了', '如果你看过《塞拉菲尼手抄本》，那么你可能不会对下面长着一只蜗牛鸡巴的男人或者两腿夹着一棵莴苣的女人持有太多的', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202155557&amp;idx=1&amp;sn=baa432a113a9a3c0c64f13c005298c52&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9tRhZHrJqT8UaRoX16cicvgicxohShxsU82n8VSykSjX0Dyh0icL5G7dnNVS8buuxhibDIdD5Y8AMkhFg\\/0', 1417238542, NULL),
(18, 3, '变态！女大学生偷拍4名舍友裸照 满足男友', '女大学生偷拍4名舍友裸照 满足男友变态心理每日一测这是一张北大女生宿舍里一个女生的自拍照，仔细看看，有哪些令', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202143748&amp;idx=1&amp;sn=6fffba8b84ffa4b107bfcd6abc2f1d87&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9u39Zic2ibv1AGIdrtflnHrK7WTagibYJFNAic0DsB4ouPvagAUHMlHQ9HXH4zc783ZPxoZ2kpxYAnTFw\\/0', 1417171864, NULL),
(19, 3, '摩擦、摩擦，这个冬天擦出热情的火花', ' 时尚时尚最时尚，摩擦摩擦再摩擦。在2014最强洗脑神曲的旋律还未散去之前，同样讲述小人物梦想故事的微电影版', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202124630&amp;idx=1&amp;sn=7b38be53c195291f2f8e63bc96f1a6b9&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9vAzzTKKqRV5eRDXPlMhK95jLXUarticEpMMklvvHCqFI75uGia7tTZvicia9cKW7d69NL8RYlVWbjYiaw\\/0', 1417081404, NULL),
(20, 3, '宇宙最“冷”的游戏要内测了 点进去看的人都被冻住了', '　　如果你也是个游戏宅男宅女，那你千万别告诉我你不知道TGC是什么！如果你知道TGC是什么，那你千万别告诉我', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202105761&amp;idx=1&amp;sn=2c32663181809bc651b4ae73ffc97c1f&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9sgbicxKib16Oc72vMWV7CgtXe5OCF4uQjgH04YanouuYcgyFGY7PUl3adxrK1uBke9trgH8kpFMK3g\\/0', 1416996911, NULL),
(21, 3, '22种你吃不到的汉堡，咪咪汉堡好诱人啊！！', '法国艺术家duo Quentin和Thomas是Fat &amp; Furious汉堡店的创始人。他们自己形容自己是', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202078033&amp;idx=1&amp;sn=5f28f33003f8af2d66dc3a070a04f37b&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9vav8VBjBVTIMRsoJVB8XCz8C3cP7TnkIOkwBiczVNSdp8DK5qqX6bsCxGQ6TJqfQqibcDERbmIKCHg\\/0', 1416906140, NULL),
(22, 3, '星际穿越回来，你必须干的事儿！', '从星际穿越回来，你会思考什么？是要去用更多的爱来守护家人，还是用更多行动保护地球？亦或者是——超越自己的领地', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202052390&amp;idx=1&amp;sn=a476a13f4f90c2967f970536322d0bda&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9teXMPI7EOibMMFt1qJSQ1icXGMv88Ujhrbh5wC53wCU7No4mxqKKEPxibwOjLIJI2Mv3chHsVBw60vw\\/0', 1416830670, NULL),
(23, 3, '各种大尺度床照曝光，那尺度太大我不敢看~~~', '各种大尺度情趣房间看完了，我们一起去开房吧！！每日一测一天一个书法家死了，留下下面这幅图。三名嫌疑人分别是鲁', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=202013363&amp;idx=1&amp;sn=a26c87282c7c263eca02099d7eca516f&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9uYaFJwn9jtef6BTpTDDUgucJRUUORjNvnyuFpmToRaMEfvPmeb683Siab0L59CtOR929Jia3o2hDUg\\/0', 1416712666, NULL),
(24, 3, '如何抚 摸才能让她更舒服？？？？', '我相信你是因为标题进来的，仔细的看完，你就知道这么摸才能让她舒服了。。。  1. 猫猫2. 狗狗3. 兔纸4', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=201994445&amp;idx=1&amp;sn=5cb1e6e73e56b92febe4528328c9d591&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9ttBtUysLF1R2MMRXqvcR5YHF38U8RHJ47raGgoM5NKXIjgYFSicQqR8dFcA9mTSTep1icmAo9Ymnrg\\/0', 1416649921, NULL),
(25, 3, '全球咪咪照大集锦', '这些咪咪照，你肯定没见过沙滩雨伞芭蕾舞鼠妈妈的鼻子尼加拉瓜大教堂的屋顶蘑菇蛋壳布鲁克林发电厂护耳草桥两座山峰', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=201945671&amp;idx=1&amp;sn=e588914f1bda706057e0e8d0a78c20f5&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9v28UdhLJPtOlNufXoLtuzaey0kPzTZHBJnmnTSznFec5ECWXnUEOEG92T1lwIy3KEgttYzNSccDA\\/0', 1416556774, NULL),
(26, 3, '小孩子根本看不懂的MV，未成年止步', 'WiFi下观看，土豪随意每日一测小明想追一个女孩，但这个女孩很讨厌这个男孩，有一天她发了如下内容的短信给男孩', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NzIyODk4MA==&amp;mid=201922591&amp;idx=1&amp;sn=21f4043ee16bab6a319784cb31f5aee0&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/hBibMRJsay9tkxnJia1ILvRGpuyyZZSfb6Oo8gic6OU1Aa3ibwKCdtNebwsqDBsoK498EWTxJhE5p1XjF57d9UmnAw\\/0', 1416476689, NULL),
(27, 4, '8张PPT迅速了解：垂直行业的泡沫和生存法则', '11月28日，拉勾网创始人、董事长许单单财经天下举办的“异想大会”上，深度阐述近年来泡沫横生的垂直行业。许单', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202960114&amp;idx=1&amp;sn=4db451a3344d45af0bd4631c98daff51&amp;scene=4#wechat_redirect', '许单单', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSNCKZtTlw6ptT1hOUTbQNicd2WretwTibygNjO7eic7VkI4Z0LCWXYkChpdBuZofogic7d9kGQ2Um7Gqg\\/0', 1417189175, NULL),
(28, 4, '50页干货PPT：揭秘6.3亿网民的行为习惯与消费进化', '　综合来看，PC端互联网规模及营销市场规模近年来呈稳步增长势态，但增长速度在逐年下降，而移动互联网市场规模仍', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202918995&amp;idx=1&amp;sn=80fa18559f19a0afdd5f802d38a37deb&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSNc3g6loITVxiaicwTYzQCLf033GQELz5hMlibnyVmjGWmLd9uKFRia9HnFvBm4DYnPNJnvDJmVwM9I5g\\/0', 1417085362, NULL),
(29, 4, '新技能get√ | 如何快速入门一个陌生知识领域', '3W君看了一个coding视频，激发了学习的热情，如今依然不会敲下一行代码；看了别人在弹尤克里里，激发了好奇', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202891204&amp;idx=1&amp;sn=6cb7cfe72be3dd4914c0c4c5f1d7e359&amp;scene=4#wechat_redirect', 'Heidixie', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSNFgqCsfzh3icqGKP7y1Q4b5eqS6XaLcjibdHnu6SBVasicNW9ja6dCf7jDd5hicoac4EBSIouXrYLAyA\\/0', 1417006249, NULL),
(30, 4, '互联网时代方法论：寻找产品的那一点灵性', '图选自“iPod剪影艺术”南朝时谢灵运与颜延之并称颜谢，但有一次“颜延之尝问鲍照己与谢灵运优劣”，鲍照说：“', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202867203&amp;idx=1&amp;sn=d39c7233d70927800255751c4349ed87&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSMk4BO8wvyJCMSKlgeAYA0rmuRNWWL0EZibN3rTicnXwBwbnajgUdFULZrItJtHAGaIrmr1qPPGtnug\\/0', 1416920748, NULL),
(31, 4, '别任性！那个时代回不去了', '很多传统企业家问我：“润总，你研究互联网，能不能教我，怎么用互联网的办法保护我们原来的利益？”可是，如果你原', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202840434&amp;idx=1&amp;sn=727919da89fff86456aabd1df2825646&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSMKAHlFkzwZ7lSKiaEFhia4tyq8kNNicdj9SU3ajU7eCajibKFZG8mjzN9KXrmWAXicL5BlHqIM7S0joZA\\/0', 1416838644, NULL),
(32, 4, '字幕组招惹了谁？揭秘人人影视射手网关闭的真正原因', '3W导读：继人人影视宣布“清理内容”后，射手网也宣布关闭，陪伴我们长大的2大看外国影视节目必备网站可能就此永', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202810923&amp;idx=1&amp;sn=c72968e06eb18dca55d4086f379a5144&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSPfwGNw0icXrVYXzortMFFvdqhXn8XqtC6GYEXuMYRtXro4R7oleflOBUdLAHR4uVRiaAkkLlmKa8VQ\\/0', 1416748320, NULL),
(33, 4, '马化腾：腾讯做的不叫抄袭,互联网也会成为“传统行业”', '3W导读：移动互联网的商业模式日渐成型，移动互联网到来，让我们这样做了10几年的公司要重新考虑，比如游戏怎么', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202787793&amp;idx=1&amp;sn=0f21ede3f8b6884b8b332136f3d56f50&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSOwRduBmPLibaQ6E3DXR6cDl8uMYiaAQEIAkmiagjX8EPMkdwTpIxSkWKicPOsYYibgwbFCK4NAlicYx08A\\/0', 1416660335, NULL),
(34, 4, '媒体广告人路在何方？从30家初创公司眼中窥视创业趋势', '3W导读：本文作者辞去了做了4年半的豆瓣全职工作，走访了超过30个创业团队，对于未来新媒体以及创业趋势得出了', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202763371&amp;idx=1&amp;sn=267b3e02d105e371b92a2fa7a0aa941c&amp;scene=4#wechat_redirect', '叶飞', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSPSJWDVfu5uqibvTfHL2ClicYjBU616nX49lhetXAMsicIicaIX2mA8dDPvIticNt5icfM1On16Vlrw9N6Q\\/0', 1416576060, NULL),
(35, 4, '马云,雷军,马化腾,李彦宏,张朝阳！最全的互联网大会演讲精华', '3W君导读：首届世界互联网大会今日在浙江乌镇开幕。本文罗列了互联网大佬的演讲精华。【重磅推送】如果您想收看本', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202731492&amp;idx=1&amp;sn=d8068cdf06468b8e8e520db288123063&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSMhcgvahLaBjBuHpa3WggptL2pZXn7ibicSXs9tdy0evFibqibtmDdcrZfkNEVUZMibgu8vkiatsK0uljbA\\/0', 1416489291, NULL),
(36, 4, '有点失落怕被边缘化？互联网焦虑症怎么破', '3W君导读：互联网焦虑症，什么症状？有点失落感觉边缘化；有点焦虑互联网那些话题搞不懂参与不上；有点不安担心未', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM5OTAyMQ==&amp;mid=202653616&amp;idx=1&amp;sn=2ea7fef984b58ac4dbea52d2dc596e62&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/agEQQ7NdJSNfNFApLUibUO5fOdQKdTn7ceNmVNV51ow2xr68JiaHfER0c9ZxCx3OHbD9UAuPicm1Hia4vDpRD85Q9Q\\/0', 1416402190, NULL),
(37, 5, '感觉人生一眼就能看到尽头', '喧嚣久了，就期待宁静；孤单久了，就渴望爱情', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=204118631&amp;idx=1&amp;sn=dc4cc1c61ee93e28a8c43cb1a8376688&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6Lwf4NLAibMQw4nibb218W3Ts0PDHE0ibPQX799Wdopa7bs9aXkaz4H1iaoMHGa8cs7S2u8D63FRwaJx08g\\/0', 1417362644, NULL),
(38, 5, '打车软件和出租车司机的命运（下）', '没有人能打败趋势！出租车行业的垄断也不例外。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=204082126&amp;idx=1&amp;sn=9a3fe8310f5b16f45fa1a07743934a9e&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6Lwd4jXBI3ndYk4UIyOHOHDN2k0P07HWYH9rETpP986ibFSFTWurgWSz414Epo63Y0v8shibrWEHpRWyg\\/0', 1417269673, NULL),
(39, 5, '深圳-杭州-北京企业招聘电商人才，年底找工作的别错过阿', '如果你在找工作,请加赵敏微信微信号：581777273号人才：该候选人有4年电商实操经验，做过运营经理，做过', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=203962803&amp;idx=1&amp;sn=ddf4aab9b8ba96a502c95e8ad044eebd&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6LwcriaZP6QEMkA2GtKsticBO1s0Zr6hQiasiaGcuCrwPypHm2FaxJY7aPVNK1OHHS7JLiafvfnxQJZrRZRA\\/0', 1417152507, NULL),
(40, 5, '打车软件和出租车司机的命运', '免费的是最贵的，倒贴的是最危险的！', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=203947584&amp;idx=1&amp;sn=9a24968cf1afc360c76986d2269892d4&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6LwcNibSIt5AoFRNhfgj9FVjRx66kWNFdJ5rIOlpAUUoicLSDhx6xMOVN9cTtOfIjhSmRCrWbR9o2VQlQ\\/0', 1417099988, NULL),
(41, 5, '工作和生活如何结合起来？', '如果你想要得到什么，那么请思考清楚你能付出什么。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=203869242&amp;idx=1&amp;sn=0bdad50414d996f1059d9ae576496a1f&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6LwfYtE6t7fLA0M8PAibiaOqbiaZDaZ2wR0UyozNW6KILiatoJDicg8IKicLN9nY0JDiasEHq8xl6KRnddM7AA\\/0', 1416922178, NULL),
(42, 5, '老子智慧-无为', '无为，是老子道德经最难懂的，这篇文章应该能讲明白。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=203818304&amp;idx=1&amp;sn=df304dcf616454fadafa7725a96d5ddf&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6Lwekx9MuzxPU6L5m277cNX9ZLz452xd9M2WfC3Hk6xyl0Gm8qfddMleMUPZX1oDlgMkzRM1ZaJYMaQ\\/0', 1416747999, NULL),
(43, 5, '北京-苏州-福州-广州等公司招聘各类人才，年底企业招人潮', '如果你在找工作,请加赵敏微信微信号：581777264号人才：该候选人有9年工作经验，之前做过某知名B2C平', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=203747522&amp;idx=1&amp;sn=6ddd9e47b15451a59880548aa7f1dc42&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6Lweosj1AMkBB6iciaj8GP79ribhUDibOBVdwnKB38wSGH7uZPuNHuWaUMyopYVJXlY1ap04C5PZ6mibycBQ\\/0', 1416543422, NULL),
(44, 5, '如何从自卑中走出来？', '接受自己的不完美，就是变得完美的开始。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=203721133&amp;idx=1&amp;sn=8cbda6b3a4c9c42b961ba6e2d7be7bae&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6LwdwvDrAPrFIdwCeerMun91ziac1MYWXP8UAh894lJmQuxicqa8nicsTDrFicgbeYsXraAsYt7QmsNsusw\\/0', 1416489114, NULL),
(45, 5, '7天教你玩转微营销（第一天）', '【导读】本系列文章基于微信，从0入门学习微营销，里面有实操，有大咖的观点，也有零一自己的看点。实操和思维统统', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=203661242&amp;idx=1&amp;sn=c10a2a18afdae7418c0e65abf638c3d6&amp;scene=4#wechat_redirect', '零一', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6LwcuCdibdiaF75Gz1dTbMXiaMtjr7BueCn4za2BxvI50eERTcIia0awVZjIiajyJVG4GwXaJ3Eiaiclx5l0vg\\/0', 1416323582, NULL),
(46, 5, '两个导游的故事', '我遇到两个导游，他们有什么不一样？', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5OTM3NjIyMA==&amp;mid=203630035&amp;idx=1&amp;sn=24eb6b829d87661209cb2db7ec7d4f15&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/DibgiaTFa6LwdJ1SBXQxVg7XPQQiaZyn9HyUoBmNggYRaBbfk5pvF3aT04RkBavI5GaJiabfcqV267mgqbYPGp0YJw\\/0', 1416229918, NULL),
(47, 6, '策反克里米亚 普京的战争', '俄罗斯经济系列目录      01 前苏联经济风云 战斗民族的两次大饥荒02 星球大战 前苏联解体中的经济问', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202612099&amp;idx=1&amp;sn=326284fce9fc747ac9e695ca623c987b&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4DJVibJVTWDShVncW3ibx9IatORbOTMgUIjssic0HXg7Jhtu2Q9wCUeS0o3xoUTfN7B3RSBjvd7iclyyA\\/0', 1417262496, NULL),
(48, 6, '内斗，还是内斗！乌克兰三国杀', '俄罗斯经济系列目录      01 前苏联经济风云 战斗民族的两次大饥荒02 星球大战 前苏联解体中的经济问', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202582254&amp;idx=1&amp;sn=6bcbf08d1a2495c9aaf2c29de0f2eb54&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4AkiaPYicuZHicib2leic6U0omEhN7HYJb9d4kgS9HxYd4Tfj10scsO1s7GpSerCTibzN7Kc46MlWBzicwrw\\/0', 1417169947, NULL),
(49, 6, '乌克兰内战第二回合 尤先科搞掉季莫申科', '俄罗斯经济系列目录      01 前苏联经济风云 战斗民族的两次大饥荒02 星球大战 前苏联解体中的经济问', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202552731&amp;idx=1&amp;sn=4d44b63cab0290def2138c3a313dff3e&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4Aeh7GG87bWBluOWgt7GOh27vk96Q83CZyxQeBcvdH7icib1x1OXvZNrGsEl0BtBhiaAqcTXRLCEBVjw\\/0', 1417086536, NULL),
(50, 6, '橙色革命 乌克兰乱局', '俄罗斯经济系列目录      01 前苏联经济风云 战斗民族的两次大饥荒02 星球大战 前苏联解体中的经济问', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202522269&amp;idx=1&amp;sn=6c24d1fd4db898b67de8c87d68fb2905&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4A847piaZrCrOfg6fTvPeNF5QYLHRowxh16ibjfibwpaTMsYwWbxLMd3Tu1SMqib7sNHkfHqtqntI481A\\/0', 1416997268, NULL),
(51, 6, '俄罗斯乌克兰三百年恩怨', '俄罗斯经济系列目录      01 前苏联经济风云 战斗民族的两次大饥荒02 星球大战 前苏联解体中的经济问', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202495973&amp;idx=1&amp;sn=3eb314f0cbf66a144ce81686d56455fe&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4CCXglDvCnWxkWRibiaIg2OiaJ2qT9oZ6N9Uu9mzHnsXhbp0YV3UcIxvWQvYwY3ia8nfWWg7sAm4DXECw\\/0', 1416914392, NULL),
(52, 6, '普京的决心 被牵连的中国商人', '俄罗斯经济系列目录      01 前苏联经济风云 战斗民族的两次大饥荒02 星球大战 前苏联解体中的经济问', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202405603&amp;idx=1&amp;sn=fd605204d3ae488cd80333fbe0d33e8f&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4B3WXicCBPK2DaNcNLdkZCGJKCWibqtSfShBrRpg5nq3B9jTqiab55dJ8LGJJw1a53M4DkrQPP66pvLg\\/0', 1416636838, NULL),
(53, 6, '普京驱逐华商前传：灰色的市场', '俄罗斯经济系列目录      01 前苏联经济风云 战斗民族的两次大饥荒02 星球大战 前苏联解体中的经济问', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202379300&amp;idx=1&amp;sn=ef61d676f487def383690d815b510760&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4BiaqHS5OLcDatUvdicRIY45fzRfD3PBHFyEuJg0CnaqWk2fPuZCpibGrhhBHq0nPJ5Mxhxp5XTu7W1w\\/0', 1416558867, NULL),
(54, 6, '普京大帝的阿基里斯之踵 俄罗斯经济问题', '俄罗斯经济系列目录      01 前苏联经济风云 战斗民族的两次大饥荒02 星球大战 前苏联解体中的经济问', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202336521&amp;idx=1&amp;sn=01af1336ae922c5870f75d805115209f&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4Cv1Zz3mG9hTn6m85r6Pr4OhOSxqDZlIUnTH7sN971J2pdicgLKJiaw8icCLhFzJHphkaQJVRFPHnHNA\\/0', 1416480199, NULL),
(55, 6, '反寡头 普京大帝的救赎', '俄罗斯经济系列目录      01 前苏联经济风云 战斗民族的两次大饥荒02 星球大战 前苏联解体中的经济问', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202226294&amp;idx=1&amp;sn=fcc0b42033883865c889cb924f9e114d&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4BKJeNAic0MVnpRI6Z3OATqfkRxKib9cO1WIDonCzIEk7B1Yic25KgXOaqpzOIaSgm4v6ZXSV9whSibQw\\/0', 1416305072, NULL),
(56, 6, '解读沪港通：会带来A股牛市吗？', '中国股市系列目录      01 梦想与疯狂：近代中国股票史02 810风波：新中国第一次股灾03 3·27', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MjM5NTIxNjI0Mg==&amp;mid=202202098&amp;idx=1&amp;sn=94f33aa6deead8e068b1132b554ebca3&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/9R5G8icrQr4BrkLb2JTibTTic9iaNpZb28DoakICxAwFS3ddhh38UdoGWpohichM9N2efojvNlNcmXmaFibYkh7KOwEQ\\/0', 1416221531, NULL),
(67, 7, '“大资管”背景下银行通道业务风险思考', '作者：金杜律师事务所 陈胜 沈迪\\\\n\\\\n“大资管”时代来临，多种类型的金融管理机构为投资者提供丰富多元的投资渠道。近日，一些一度被叫停入市的机构或将重获银行间债市“入场券”。在此资管新政背景下，本文就银行通道业务的发展趋势、挑战及风险试作阐述。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201928771&amp;idx=1&amp;sn=e610074e5a2436f899d8bb2d446ca211&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9JwjEUibLPtA2vT6Ykt9Bk5O5mr6OHwibuUSBYQJjibM43jZicaxT50jmK1oZGsE2J4BZqn6wk5rj1cSauQ\\/0', 1417492119, '201928773'),
(68, 7, '专栏丨中国在非洲投资的监管', '作者：金杜律师事务所 Paul Schroder 熊进\\\\n\\\\n非洲国家的法律框架一般不对外国投资设置障碍或对外国投资方附加条件，但在实践中会通过其他方式来达到限制或监管外国投资的政治目的。而如何利用法律原则确保对非投资顺利进行，本文试做阐述。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201907374&amp;idx=1&amp;sn=939380cfa22afe6f8f453565598a6c66&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9JwgTpMm5ERH41tZErKppT6ZD09jvqrqLyxmn9yCREF2ShRE2M14CiaumgLT5DswW1ugCfFxLNNEeicag\\/0', 1417405371, '201907375'),
(69, 7, '案例丨颜色商标能否成为“保护色”', '作者：金杜律师事务所  廖飞 \\\\n\\\\n作为非传统商标中的一个重要形态，颜色商标近些年来在许多国家的立法以及司法实践中逐渐受到重视。本文梳理了海外比较有影响力的颜色商标保护实例，供大家参考。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201850071&amp;idx=1&amp;sn=43dc03bf845a19bedf9e496e9b2fc840&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9JwiaHSGM2weSiaDwqYowfwaPiaCcOR8Fn2Iu3Sejw71ms3SLU60cxzlg9ACnvCXosGoxDiacEm0QqaFMLw\\/0', 1417146324, '201850073'),
(70, 7, '聚焦丨律所能否开展上市公司环保核查业务', '作者：金杜律师事务所  吴青  廖倬跃\\\\n\\\\n“149号文”的颁布令拟上市公司的环境表现评估工作全面市场化，随之而来的问题是上市公司的环保表现如何判断？公司的上市律师是否将面临更大的责任和风险？律所能否开展环保核查业务？本文就上述问题展开讨论。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201827317&amp;idx=1&amp;sn=98751fb49fd17a93f11c91f80bf30ce9&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9JwjHJH53ZOdSWJ7Grc9QPthEsEvaBVKZyjWua7HLSsZpZaBobo5CTetFV297SenTeGvt5KF4Kxo7YQ\\/0', 1417059816, '201827318'),
(71, 7, '聚焦丨互联网金融的民事责任风险', '作者：金杜律师事务所 跨境争议解决团队 \\\\n\\\\n对于互联网金融各项具体经营模式中民事责任归责的基础和原则，目前尚缺乏直接对应的法律依据。对此，本文拟提出若干建议，供大家实务中参考。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201801823&amp;idx=1&amp;sn=1dcadaa166a3e9fb8d109f7930f13dc8&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9Jwjd5nS0MicP6o5tEONkSqogcPCChysFLu8ibmBOWNeBArXw7u0zHJ4HAEwHGaVLwTdVd8uHPc9tCX9Q\\/0', 1416973383, '201801824'),
(72, 7, '干货丨证监会资产证券化新旧规定对比', '作者：金杜律师事务所 钟鑫 胡喆 陈府申\\\\n\\\\n与证监会于2013年颁布的《证券公司资产证券化业务管理规定》相比, 证券化新规在许多方面均有了较大的突破。对此, 本文将对证券化新规的核心变化要点予以细致梳理。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201780674&amp;idx=1&amp;sn=51f149afdb2d86fa6a1008f1f42456b5&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9JwgxjhwmE3891YTxvNiaVNAMibSHpuwuMcRut8upBHnvJ68ehOFcRiaRK7Sib2c63TGAYaNHrbM1Av2QJQ\\/0', 1416891453, '201780675'),
(73, 7, '案例丨从宝钢联合体对Aquila的收购看中国对澳矿业投资的成功要素', '作者： 金杜律师事务所 熊进\\\\n\\\\n澳大利亚因资源丰富、法治化程度高、技术先进等优势受到中国投资者青睐，但同时对投资者的经验能力也有更高要求。本文透过近期宝钢联合体对Aquila的收购交易，对在澳成功进行矿业并购项目的主要因素进行分析。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201752310&amp;idx=1&amp;sn=99b198fa7b9038a0d8da802d7d2a631f&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9JwiadNDvicmTetndCRRLP3Pm6hKXrzUrW0ouW1uGsJlwgXxwndafy5uj87pA4Q53RcONu2cT5KopC0Yg\\/0', 1416800835, '201752311'),
(74, 7, '深度丨贸仲委发布2015版仲裁规则', '作者：金杜律师事务所  张守志、何薇、陈军、胡科2014年11月4日，中国国际贸易促进委员会修订并通过了《中', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201681765&amp;idx=1&amp;sn=082f5f06aa4c4858deddbe601ebcfa84&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9JwhzKl4sx2MkSiaHC1oEViaNXzkBGsGyeez6oCcRia9szlgF6HGUb2fMj7hk2FPOLsRS81icGcdT6oo5Mw\\/0', 1416545045, '201681766'),
(75, 7, '沪港通若干法律风险管窥', '作者：金杜律师事务所 牟蓬  单颖之\\\\n\\\\n11月10日两地证监会正式批准启动沪港通，沪市上涨超过2%，创近三年新高。面对投资者高涨的投资热情，本文将在法律层面就沪港通所涉及的股票代持模式、两市股票交收制度的差异及新股认购事宜作出相应分析。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201657713&amp;idx=1&amp;sn=a0d8d93ed0f94eaba7e9bbf02df1df98&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9Jwia5fRGFefTgZerffSDd1LJqTHIIdV8icosxFMvfChKv3uRuuAyR5rBhHbFb19B8vO3CDdPvh01WF9Q\\/0', 1416455008, '201657714'),
(76, 7, '反垄断法试水互联网行业:3Q案件终审判决评述', '作者：金杜律师事务所 宁宣凤 彭荷月 杨旸 邱薇卿 Sarah Eder 郭少毅\\\\n\\\\n这是最高院审理的首个反垄断法案件，最高院在判决中对反垄断法基本原理，特别是滥用市场支配地位方面的原理，进行了翔实的阐述。', 1, 1, 1, 'http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzA4NDMzNjMyNQ==&amp;mid=201636055&amp;idx=1&amp;sn=44738578c5b46069718fcd5f76742485&amp;scene=4#wechat_redirect', '', 'http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/xIk2YdR9Jwjns5zuFbpwzmyEIU4HkZBFpnAicCtS2HAxc9RsFadPREtM8RE0ZJlBibmA1QFzteN2XEWOECibwJUBQ\\/0', 1416368539, '201636056');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='微信号信息表' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `wechats`
--

INSERT INTO `wechats` (`id`, `wechat_id`, `wechat_code`, `name`, `desc`, `classify`) VALUES
(1, 'Einwoody', 'MjM5NTY2NjY4Nw', '曾言真语', '师承王小波和伍迪.艾伦，在文字游戏中给您尽可能多的资讯', 1),
(2, 'yiqikanshu', 'MjM5MDIwNTcyMA', '看书有道', '一本书，一句话，一段情，一生思索', 0),
(3, 'lengxhboss', 'MjM5NzIyODk4MA', '十万个冷笑话', '收集各类笑话，各种萌', 0),
(4, 'studywww', 'MjM5OTM5OTAyMQ', '3W互联网深度精选', '关注互联网行业趋势、产品创新、创业与投资、互联网领袖言论，每天推荐一篇最有价值的深度互联网干货', 0),
(5, 'taobaoguijiaoqi', 'MjM5OTM3NjIyMA', '鬼脚七', '鬼脚七，一个简单的人，分享电商', 0),
(6, 'kenjinrong', 'MjM5NTIxNjI0Mg', '啃金融', '致力于做老少皆宜的金融轻阅读。这没有长篇大论，只有轻松漫画。不卖弄术语，只说大白话，让你一眼看明白华尔街的大事和你身边的菜价有何关联', 0),
(7, 'KWM_China', 'MzA4NDMzNjMyNQ', '金杜说法', '金杜律师事务所是兖州地区居于领先地位的综合性律师事务所，专注于为中外客户就各类境内跨境交易提供全方位的法律解决方案。', 0),
(8, 'zhongwenlaw', 'MjM5NDM5NzIyNA', '中闻律师事务所', '欢迎您关注北京市中闻律师事务公众平台，我们将努力为您提供更加完善的服务', 0),
(9, 'bjdacheng', 'MzA5ODA2OTAxNg', '大成律师事务所', '北京大成律师事务所', 0),
(10, 'JUNHE_LegaIUpdates', 'MzA5MzYzMzYyNQ', '君合法律评论', '君合律师对法律实务、立法动态和热点法律问题的评析与探讨。', 0),
(11, 'bjdeheng', 'MzA4NzQxMDMxNw', '北京德恒律师事务所', '北京德恒律师事务所原名中国律师事务中心', 0),
(12, 'WeGrandallers', 'MzA3NzQ4NTYwNg', '国浩律师北京事务所', '国浩律师（北京）事务所位于北京市CBD商圈泰康金融大厦..', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
