/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50704
Source Host           : localhost:3306
Source Database       : yaheng

Target Server Type    : MYSQL
Target Server Version : 50704
File Encoding         : 65001

Date: 2015-09-11 20:21:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jkd_access`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_access`;
CREATE TABLE `jkd_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限分配表';

-- ----------------------------
-- Records of jkd_access
-- ----------------------------
INSERT INTO `jkd_access` VALUES ('2', '73', '3', '60', null);
INSERT INTO `jkd_access` VALUES ('2', '72', '3', '60', null);
INSERT INTO `jkd_access` VALUES ('2', '71', '3', '60', null);
INSERT INTO `jkd_access` VALUES ('2', '70', '3', '60', null);
INSERT INTO `jkd_access` VALUES ('2', '69', '3', '60', null);
INSERT INTO `jkd_access` VALUES ('2', '68', '3', '60', null);
INSERT INTO `jkd_access` VALUES ('2', '67', '3', '60', null);
INSERT INTO `jkd_access` VALUES ('2', '60', '2', '1', null);
INSERT INTO `jkd_access` VALUES ('2', '66', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '65', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('3', '14', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('3', '13', '3', '4', '');
INSERT INTO `jkd_access` VALUES ('3', '12', '3', '4', '');
INSERT INTO `jkd_access` VALUES ('3', '11', '3', '4', '');
INSERT INTO `jkd_access` VALUES ('3', '10', '3', '4', '');
INSERT INTO `jkd_access` VALUES ('3', '4', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('3', '9', '3', '3', '');
INSERT INTO `jkd_access` VALUES ('3', '8', '3', '3', '');
INSERT INTO `jkd_access` VALUES ('3', '7', '3', '3', '');
INSERT INTO `jkd_access` VALUES ('3', '3', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('3', '6', '3', '2', '');
INSERT INTO `jkd_access` VALUES ('3', '5', '3', '2', '');
INSERT INTO `jkd_access` VALUES ('3', '2', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('3', '1', '1', '0', '');
INSERT INTO `jkd_access` VALUES ('4', '7', '3', '3', '');
INSERT INTO `jkd_access` VALUES ('4', '3', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('4', '6', '3', '2', '');
INSERT INTO `jkd_access` VALUES ('4', '5', '3', '2', '');
INSERT INTO `jkd_access` VALUES ('4', '2', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('4', '1', '1', '0', '');
INSERT INTO `jkd_access` VALUES ('2', '64', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '63', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '62', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '61', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '59', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '58', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '57', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '56', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '55', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '54', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '53', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '52', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '51', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '50', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '49', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '48', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '47', '3', '46', null);
INSERT INTO `jkd_access` VALUES ('2', '46', '2', '1', null);
INSERT INTO `jkd_access` VALUES ('2', '31', '3', '26', null);
INSERT INTO `jkd_access` VALUES ('2', '30', '3', '26', null);
INSERT INTO `jkd_access` VALUES ('2', '29', '3', '26', null);
INSERT INTO `jkd_access` VALUES ('2', '28', '3', '26', null);
INSERT INTO `jkd_access` VALUES ('2', '27', '3', '26', null);
INSERT INTO `jkd_access` VALUES ('2', '26', '2', '1', null);
INSERT INTO `jkd_access` VALUES ('2', '25', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '24', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '23', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '22', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('3', '14', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('3', '13', '3', '4', '');
INSERT INTO `jkd_access` VALUES ('3', '12', '3', '4', '');
INSERT INTO `jkd_access` VALUES ('3', '11', '3', '4', '');
INSERT INTO `jkd_access` VALUES ('3', '10', '3', '4', '');
INSERT INTO `jkd_access` VALUES ('3', '4', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('3', '9', '3', '3', '');
INSERT INTO `jkd_access` VALUES ('3', '8', '3', '3', '');
INSERT INTO `jkd_access` VALUES ('3', '7', '3', '3', '');
INSERT INTO `jkd_access` VALUES ('3', '3', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('3', '6', '3', '2', '');
INSERT INTO `jkd_access` VALUES ('3', '5', '3', '2', '');
INSERT INTO `jkd_access` VALUES ('3', '2', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('3', '1', '1', '0', '');
INSERT INTO `jkd_access` VALUES ('4', '7', '3', '3', '');
INSERT INTO `jkd_access` VALUES ('4', '3', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('4', '6', '3', '2', '');
INSERT INTO `jkd_access` VALUES ('4', '5', '3', '2', '');
INSERT INTO `jkd_access` VALUES ('4', '2', '2', '1', '');
INSERT INTO `jkd_access` VALUES ('4', '1', '1', '0', '');
INSERT INTO `jkd_access` VALUES ('2', '21', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '20', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '19', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '18', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '17', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '16', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '15', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '9', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '8', '3', '14', null);
INSERT INTO `jkd_access` VALUES ('2', '14', '2', '1', null);
INSERT INTO `jkd_access` VALUES ('2', '10', '3', '4', null);
INSERT INTO `jkd_access` VALUES ('2', '4', '2', '1', null);
INSERT INTO `jkd_access` VALUES ('2', '7', '3', '3', null);
INSERT INTO `jkd_access` VALUES ('2', '3', '2', '1', null);
INSERT INTO `jkd_access` VALUES ('2', '6', '3', '2', null);
INSERT INTO `jkd_access` VALUES ('2', '5', '3', '2', null);
INSERT INTO `jkd_access` VALUES ('2', '2', '2', '1', null);
INSERT INTO `jkd_access` VALUES ('2', '1', '1', '0', null);
INSERT INTO `jkd_access` VALUES ('2', '74', '3', '60', null);
INSERT INTO `jkd_access` VALUES ('2', '75', '3', '60', null);

-- ----------------------------
-- Table structure for `jkd_ad`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_ad`;
CREATE TABLE `jkd_ad` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_img` varchar(255) NOT NULL,
  `position` char(10) NOT NULL DEFAULT '0',
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkd_ad
-- ----------------------------
INSERT INTO `jkd_ad` VALUES ('40', '微信二维码', '', '55d597a7bb1ab.jpg', 'wxqr', '0', 'zh-cn');
INSERT INTO `jkd_ad` VALUES ('38', '15年专业生产皮草皮衣经验，紧跟国际流行趋势', '', '55c9560074854.jpg', 'news', '0', 'zh-cn');
INSERT INTO `jkd_ad` VALUES ('39', '选择我们，将我们的美丽传递四方', '', '55c95622ca713.jpg', 'agent', '0', 'zh-cn');

-- ----------------------------
-- Table structure for `jkd_admin`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_admin`;
CREATE TABLE `jkd_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT '登录账号',
  `pwd` char(32) DEFAULT NULL COMMENT '登录密码',
  `status` int(11) DEFAULT '1' COMMENT '账号状态',
  `remark` varchar(255) DEFAULT '' COMMENT '备注信息',
  `find_code` char(5) DEFAULT NULL COMMENT '找回账号验证码',
  `time` int(10) DEFAULT NULL COMMENT '开通时间',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表';

-- ----------------------------
-- Records of jkd_admin
-- ----------------------------
INSERT INTO `jkd_admin` VALUES ('1', '超级管理员', 'admin@qq.com', 'b3a14e5d4d69f57700561f48eb717504', '1', '我是超级管理员 哈哈~~', null, '1427546072');
INSERT INTO `jkd_admin` VALUES ('5', null, 'admin8', 'b3a14e5d4d69f57700561f48eb717504', '1', '', null, '1433506760');

-- ----------------------------
-- Table structure for `jkd_case`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_case`;
CREATE TABLE `jkd_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `published` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  `content` text,
  `lang` varchar(5) DEFAULT 'zh-cn',
  `sort` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkd_case
-- ----------------------------
INSERT INTO `jkd_case` VALUES ('1', '亚恒服饰案例1', '243', '1', '1439279284', null, '', 'zh-cn', '0');
INSERT INTO `jkd_case` VALUES ('4', '亚恒服饰案例2', '243', '1', '1439279284', null, '', 'zh-cn', '0');
INSERT INTO `jkd_case` VALUES ('5', '亚恒服饰案例3', '243', '1', '1439279284', null, '', 'zh-cn', '0');
INSERT INTO `jkd_case` VALUES ('6', '亚恒服饰案例4', '243', '1', '1439279284', null, '', 'zh-cn', '0');
INSERT INTO `jkd_case` VALUES ('12', '亚恒服饰案例5', '243', '1', '1439279284', null, '', 'zh-cn', '0');
INSERT INTO `jkd_case` VALUES ('11', '亚恒服饰案例6', '243', '1', '1439279284', null, '', 'zh-cn', '0');
INSERT INTO `jkd_case` VALUES ('10', '亚恒服饰案例7', '243', '1', '1439279284', null, '', 'zh-cn', '0');
INSERT INTO `jkd_case` VALUES ('13', '亚恒服饰案例8', '243', '1', '1439279284', null, '', 'zh-cn', '0');
INSERT INTO `jkd_case` VALUES ('14', '亚恒服饰案例9', '243', '1', '1439279284', null, '', 'zh-cn', '0');

-- ----------------------------
-- Table structure for `jkd_category`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_category`;
CREATE TABLE `jkd_category` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `pid` int(5) DEFAULT NULL COMMENT 'parentCategory上级分类',
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `type` char(2) NOT NULL DEFAULT 'n',
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻分类表';

-- ----------------------------
-- Records of jkd_category
-- ----------------------------
INSERT INTO `jkd_category` VALUES ('1', '0', '新闻活动', 'n', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('61', '0', '皮衣系列', 'p', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('62', '0', '皮草系列', 'p', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('68', '62', '皮毛一体系列', 'p', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('70', '62', '兔毛皮外套', 'p', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('71', '62', '水貂外套', 'p', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('72', '62', '貉子毛外套', 'p', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('73', '62', '狐狸毛外套', 'p', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('74', '62', '羊毛皮外套', 'p', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('84', null, '2012秋冬', 's', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('83', null, '2012春夏', 's', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('85', null, '2013春夏', 's', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('86', null, '2013秋冬', 's', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('87', null, '2014春夏', 's', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('88', null, '2014秋冬', 's', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('89', null, '2015春夏', 's', 'zh-cn');
INSERT INTO `jkd_category` VALUES ('90', null, '2015秋冬', 's', 'zh-cn');

-- ----------------------------
-- Table structure for `jkd_field`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_field`;
CREATE TABLE `jkd_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `model_id` int(11) NOT NULL COMMENT '所属模型id',
  `name` varchar(128) NOT NULL COMMENT '字段名称',
  `comment` varchar(32) NOT NULL COMMENT '字段注释',
  `type` varchar(32) NOT NULL COMMENT '字段类型',
  `length` varchar(16) NOT NULL COMMENT '字段长度',
  `value` varchar(128) NOT NULL COMMENT '字段默认值',
  `is_require` tinyint(4) DEFAULT '0' COMMENT '是否必需',
  `is_unique` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否唯一',
  `is_index` tinyint(4) DEFAULT '0' COMMENT '是否添加索引',
  `is_system` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否系统字段',
  `is_list_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '列表中显示',
  `auto_filter` varchar(32) NOT NULL COMMENT '自动过滤函数',
  `auto_fill` varchar(32) NOT NULL COMMENT '自动完成函数',
  `fill_time` varchar(16) NOT NULL DEFAULT 'both' COMMENT '填充时机',
  `relation_model` int(11) NOT NULL COMMENT '关联的模型',
  `relation_field` varchar(128) NOT NULL COMMENT '关联的字段',
  `relation_value` varchar(128) NOT NULL COMMENT '关联显示的值',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `fk_field_model` (`model_id`),
  CONSTRAINT `jkd_field_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `jkd_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据模型字段';

-- ----------------------------
-- Records of jkd_field
-- ----------------------------

-- ----------------------------
-- Table structure for `jkd_gif`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_gif`;
CREATE TABLE `jkd_gif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` varchar(200) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkd_gif
-- ----------------------------
INSERT INTO `jkd_gif` VALUES ('1', '321,322,323,324,325,326,327,328', '');

-- ----------------------------
-- Table structure for `jkd_images`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_images`;
CREATE TABLE `jkd_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(20) NOT NULL,
  `savename` varchar(100) NOT NULL,
  `savepath` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkd_images
-- ----------------------------
INSERT INTO `jkd_images` VALUES ('114', 'team', '20150512115817_12048.png', '/Uploads/image/page/20150512/20150512115817_12048.png', '1431933351');
INSERT INTO `jkd_images` VALUES ('115', 'team', '20150512095716_78848.png', '/Uploads/image/page/20150512/20150512095716_78848.png', '1431933457');
INSERT INTO `jkd_images` VALUES ('116', 'team', '20150512095716_78848.png', '/Uploads/image/page/20150512/20150512095716_78848.png', '1431933520');
INSERT INTO `jkd_images` VALUES ('117', 'team', '20150512095716_78848.png', '/Uploads/image/page/20150512/20150512095716_78848.png', '1431933560');
INSERT INTO `jkd_images` VALUES ('118', 'team', '20150512095716_78848.png', '/Uploads/image/page/20150512/20150512095716_78848.png', '1431933576');
INSERT INTO `jkd_images` VALUES ('119', 'team', '20150512115817_12048.png', '/Uploads/image/page/20150512/20150512115817_12048.png', '1431933588');
INSERT INTO `jkd_images` VALUES ('121', 'video', '20150512151305_96874.jpg', '/Uploads/image/page/20150512/20150512151305_96874.jpg', '1431936385');
INSERT INTO `jkd_images` VALUES ('122', 'video', '20150512151305_96874.jpg', '/Uploads/image/page/20150512/20150512151305_96874.jpg', '1431936719');
INSERT INTO `jkd_images` VALUES ('123', 'video', '20150518165134_52537.jpg', '/Uploads/image/page/20150518/20150518165134_52537.jpg', '1431939102');
INSERT INTO `jkd_images` VALUES ('162', 'product', '20150519170725_49180.png', '/Uploads/image/product/20150519/20150519170725_49180.png', '1432026446');
INSERT INTO `jkd_images` VALUES ('168', 'product', '20150519171351_54114.png', '/Uploads/image/product/20150519/20150519171351_54114.png', '1432026832');
INSERT INTO `jkd_images` VALUES ('158', 'product', '20150519170442_67753.png', '/Uploads/image/product/20150519/20150519170442_67753.png', '1432026284');
INSERT INTO `jkd_images` VALUES ('156', 'product', '20150519170124_88996.png', '/Uploads/image/product/20150519/20150519170124_88996.png', '1432026084');
INSERT INTO `jkd_images` VALUES ('167', 'product', '20150519171225_14505.png', '/Uploads/image/product/20150519/20150519171225_14505.png', '1432026746');
INSERT INTO `jkd_images` VALUES ('153', 'product', '20150519165857_68852.png', '/Uploads/image/product/20150519/20150519165857_68852.png', '1432025938');
INSERT INTO `jkd_images` VALUES ('152', 'product', '20150519165831_60986.png', '/Uploads/image/product/20150519/20150519165831_60986.png', '1432025914');
INSERT INTO `jkd_images` VALUES ('131', 'product', '20150518173842_30120.png', '/Uploads/image/product/20150518/20150518173842_30120.png', '1431941923');
INSERT INTO `jkd_images` VALUES ('165', 'product', '20150519171035_32279.png', '/Uploads/image/product/20150519/20150519171035_32279.png', '1432026636');
INSERT INTO `jkd_images` VALUES ('138', 'video', '20150518175927_83028.jpg', '/Uploads/image/page/20150518/20150518175927_83028.jpg', '1431943169');
INSERT INTO `jkd_images` VALUES ('139', 'video', '20150518175927_83028.jpg', '/Uploads/image/page/20150518/20150518175927_83028.jpg', '1431943291');
INSERT INTO `jkd_images` VALUES ('140', 'video', '20150518180301_93009.jpg', '/Uploads/image/page/20150518/20150518180301_93009.jpg', '1431943382');
INSERT INTO `jkd_images` VALUES ('141', 'video', '20150518180359_49155.jpg', '/Uploads/image/page/20150518/20150518180359_49155.jpg', '1431943440');
INSERT INTO `jkd_images` VALUES ('87', 'video', '20150508114129_82688.jpg', '/Uploads/image/page/20150508/20150508114129_82688.jpg', '1431056490');
INSERT INTO `jkd_images` VALUES ('88', 'video', '20150508134909_80246.jpg', '/Uploads/image/page/20150508/20150508134909_80246.jpg', '1431064150');
INSERT INTO `jkd_images` VALUES ('89', 'video', '20150508134945_30747.jpg', '/Uploads/image/page/20150508/20150508134945_30747.jpg', '1431064204');
INSERT INTO `jkd_images` VALUES ('90', 'news', '20150508141141_71366.jpg', '/Uploads/image/news/20150508/20150508141141_71366.jpg', '1431675395');
INSERT INTO `jkd_images` VALUES ('91', 'news', '20150508142524_75091.jpg', '/Uploads/image/news/20150508/20150508142524_75091.jpg', '1431066480');
INSERT INTO `jkd_images` VALUES ('92', 'news', '20150508143149_70875.jpg', '/Uploads/image/news/20150508/20150508143149_70875.jpg', '1431335738');
INSERT INTO `jkd_images` VALUES ('93', 'news', '20150508143433_11203.jpg', '/Uploads/image/news/20150508/20150508143433_11203.jpg', '1431335699');
INSERT INTO `jkd_images` VALUES ('94', 'news', '20150508143538_80883.jpg', '/Uploads/image/news/20150508/20150508143538_80883.jpg', '1431066949');
INSERT INTO `jkd_images` VALUES ('95', 'news', '20150508143625_76596.jpg', '/Uploads/image/news/20150508/20150508143625_76596.jpg', '1431327886');
INSERT INTO `jkd_images` VALUES ('96', 'news', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1438334400');
INSERT INTO `jkd_images` VALUES ('97', 'news', '20150508143753_13902.jpg', '/Uploads/image/news/20150508/20150508143753_13902.jpg', '1431067075');
INSERT INTO `jkd_images` VALUES ('98', 'news', '20150508143856_27306.jpg', '/Uploads/image/news/20150508/20150508143856_27306.jpg', '1431335669');
INSERT INTO `jkd_images` VALUES ('99', 'news', '20150508143935_10752.jpg', '/Uploads/image/news/20150508/20150508143935_10752.jpg', '1431680755');
INSERT INTO `jkd_images` VALUES ('144', 'product', '20150518175230_80945.png', '/Uploads/image/product/20150518/20150518175230_80945.png', '1431944865');
INSERT INTO `jkd_images` VALUES ('157', 'product', '20150519170140_74787.png', '/Uploads/image/product/20150519/20150519170140_74787.png', '1432026101');
INSERT INTO `jkd_images` VALUES ('164', 'product', '20150519170938_64244.png', '/Uploads/image/product/20150519/20150519170938_64244.png', '1432026579');
INSERT INTO `jkd_images` VALUES ('166', 'product', '20150519171126_37778.png', '/Uploads/image/product/20150519/20150519171126_37778.png', '1432026687');
INSERT INTO `jkd_images` VALUES ('147', 'product', '20150509115156_78804.jpg', '/Uploads/image/product/20150509/20150509115156_78804.jpg', '1431944940');
INSERT INTO `jkd_images` VALUES ('146', 'product', '20150518175410_23156.png', '/Uploads/image/product/20150518/20150518175410_23156.png', '1431944915');
INSERT INTO `jkd_images` VALUES ('106', 'team', '20150512093406_62673.jpg', '/Uploads/image/page/20150512/20150512093406_62673.jpg', '1431394451');
INSERT INTO `jkd_images` VALUES ('107', 'team', '20150512093406_62673.jpg', '/Uploads/image/page/20150512/20150512093406_62673.jpg', '1431394461');
INSERT INTO `jkd_images` VALUES ('108', 'team', '20150512095716_78848.png', '/Uploads/image/page/20150512/20150512095716_78848.png', '1431395871');
INSERT INTO `jkd_images` VALUES ('109', 'team', '20150512095716_78848.png', '/Uploads/image/page/20150512/20150512095716_78848.png', '1431397638');
INSERT INTO `jkd_images` VALUES ('110', 'team', '20150512095716_78848.png', '/Uploads/image/page/20150512/20150512095716_78848.png', '1431397645');
INSERT INTO `jkd_images` VALUES ('111', 'team', '20150512115817_12048.png', '/Uploads/image/page/20150512/20150512115817_12048.png', '1431403100');
INSERT INTO `jkd_images` VALUES ('112', 'team', '20150512115817_12048.png', '/Uploads/image/page/20150512/20150512115817_12048.png', '1431403432');
INSERT INTO `jkd_images` VALUES ('113', 'video', '20150512151305_96874.jpg', '/Uploads/image/page/20150512/20150512151305_96874.jpg', '1431414787');
INSERT INTO `jkd_images` VALUES ('169', 'course', '20150606182652_19354.png', '/xinlang/Uploads/image/page/20150606/20150606182652_19354.png', '1433586413');
INSERT INTO `jkd_images` VALUES ('170', 'course', '20150606182652_19354.png', '/xinlang/Uploads/image/page/20150606/20150606182652_19354.png', '1433729931');
INSERT INTO `jkd_images` VALUES ('171', 'course', '20150606182652_19354.png', '/xinlang/Uploads/image/page/20150606/20150606182652_19354.png', '1433730471');
INSERT INTO `jkd_images` VALUES ('172', 'news', '20150731150535_90255.jpg', '/yaheng/Uploads/image/news/20150731/20150731150535_90255.jpg', '1438326339');
INSERT INTO `jkd_images` VALUES ('173', 'news', '20150731150554_56090.jpg', '/yaheng/Uploads/image/news/20150731/20150731150554_56090.jpg', '1438326356');
INSERT INTO `jkd_images` VALUES ('174', 'news', '20150731150612_20728.jpg', '/yaheng/Uploads/image/news/20150731/20150731150612_20728.jpg', '1438326374');
INSERT INTO `jkd_images` VALUES ('175', 'news', '20150608115743_15421.jpg', '/xinlang/Uploads/image/news/20150608/20150608115743_15421.jpg', '1433747828');
INSERT INTO `jkd_images` VALUES ('176', 'news', '20150608115743_15421.jpg', '/xinlang/Uploads/image/news/20150608/20150608115743_15421.jpg', '1434437173');
INSERT INTO `jkd_images` VALUES ('177', 'team', '20150612094119_39786.jpg', '/xinlang/Uploads/image/page/20150612/20150612094119_39786.jpg', '1434073288');
INSERT INTO `jkd_images` VALUES ('178', 'team', '20150612094119_39786.jpg', '/xinlang/Uploads/image/page/20150612/20150612094119_39786.jpg', '1434073291');
INSERT INTO `jkd_images` VALUES ('179', 'team', '20150612100156_49649.jpg', '/xinlang/Uploads/image/page/20150612/20150612100156_49649.jpg', '1434074525');
INSERT INTO `jkd_images` VALUES ('180', 'team', '20150612150746_40094.jpg', '/xinlang/Uploads/image/page/20150612/20150612150746_40094.jpg', '1434092880');
INSERT INTO `jkd_images` VALUES ('181', 'team', '20150612150819_77153.jpg', '/xinlang/Uploads/image/page/20150612/20150612150819_77153.jpg', '1434092904');
INSERT INTO `jkd_images` VALUES ('182', 'team', '20150612150850_93372.jpg', '/xinlang/Uploads/image/page/20150612/20150612150850_93372.jpg', '1434092931');
INSERT INTO `jkd_images` VALUES ('183', 'team', '20150612150850_93372.jpg', '/xinlang/Uploads/image/page/20150612/20150612150850_93372.jpg', '1434093545');
INSERT INTO `jkd_images` VALUES ('184', 'team', '20150612150850_93372.jpg', '/xinlang/Uploads/image/page/20150612/20150612150850_93372.jpg', '1434093957');
INSERT INTO `jkd_images` VALUES ('185', 'team', '20150612152612_80592.png', '/xinlang/Uploads/image/page/20150612/20150612152612_80592.png', '1434093975');
INSERT INTO `jkd_images` VALUES ('186', 'team', '20150612152650_85467.png', '/xinlang/Uploads/image/page/20150612/20150612152650_85467.png', '1434094011');
INSERT INTO `jkd_images` VALUES ('187', 'team', '20150612152650_85467.png', '/xinlang/Uploads/image/page/20150612/20150612152650_85467.png', '1434094101');
INSERT INTO `jkd_images` VALUES ('188', 'team', '20150612152612_80592.png', '/xinlang/Uploads/image/page/20150612/20150612152612_80592.png', '1434094107');
INSERT INTO `jkd_images` VALUES ('189', 'team', '20150612152858_61619.jpg', '/xinlang/Uploads/image/page/20150612/20150612152858_61619.jpg', '1434094139');
INSERT INTO `jkd_images` VALUES ('190', 'team', '20150612152911_83572.jpg', '/xinlang/Uploads/image/page/20150612/20150612152911_83572.jpg', '1434094153');
INSERT INTO `jkd_images` VALUES ('191', 'team', '20150612152934_82861.jpg', '/xinlang/Uploads/image/page/20150612/20150612152934_82861.jpg', '1434094178');
INSERT INTO `jkd_images` VALUES ('192', 'team', '20150612152953_87898.jpg', '/xinlang/Uploads/image/page/20150612/20150612152953_87898.jpg', '1434094195');
INSERT INTO `jkd_images` VALUES ('193', 'team', '20150612150819_77153.jpg', '/xinlang/Uploads/image/page/20150612/20150612150819_77153.jpg', '1434094232');
INSERT INTO `jkd_images` VALUES ('194', 'team', '20150612150850_93372.jpg', '/xinlang/Uploads/image/page/20150612/20150612150850_93372.jpg', '1434094251');
INSERT INTO `jkd_images` VALUES ('195', 'video', '20150612172637_83287.png', '/xinlang/Uploads/image/page/20150612/20150612172637_83287.png', '1434101207');
INSERT INTO `jkd_images` VALUES ('196', 'video', '20150613091359_85020.jpg', '/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg', '1434158041');
INSERT INTO `jkd_images` VALUES ('197', 'course', '20150613091359_85020.jpg', '/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg', '1434158062');
INSERT INTO `jkd_images` VALUES ('198', 'course', '20150613091359_85020.jpg', '/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg', '1434158073');
INSERT INTO `jkd_images` VALUES ('199', 'course', '20150613091359_85020.jpg', '/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg', '1434158539');
INSERT INTO `jkd_images` VALUES ('200', 'course', '20150613091359_85020.jpg', '/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg', '1434159340');
INSERT INTO `jkd_images` VALUES ('201', 'course', '20150613091359_85020.jpg', '/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg', '1434165185');
INSERT INTO `jkd_images` VALUES ('202', 'course', '20150606182652_19354.png', '/xinlang/Uploads/image/page/20150606/20150606182652_19354.png', '1434175850');
INSERT INTO `jkd_images` VALUES ('203', 'course', '20150613144501_11197.png', '/xinlang/Uploads/image/page/20150613/20150613144501_11197.png', '1434177903');
INSERT INTO `jkd_images` VALUES ('204', 'news', '20150731172320_62965.jpg', '/yaheng/Uploads/image/news/20150731/20150731172320_62965.jpg', '1438334677');
INSERT INTO `jkd_images` VALUES ('205', 'product', '20150806151843_44310.png', '/yaheng/Uploads/image/product/20150806/20150806151843_44310.png', '1438845539');
INSERT INTO `jkd_images` VALUES ('206', 'product', '20150806151850_31854.jpg', '/yaheng/Uploads/image/product/20150806/20150806151850_31854.jpg', '1438845539');
INSERT INTO `jkd_images` VALUES ('218', 'product', '20150806153047_18833.png', '/yaheng/Uploads/image/product/20150806/20150806153047_18833.png', '1438863838');
INSERT INTO `jkd_images` VALUES ('217', 'product', '20150806153032_62962.jpg', '/yaheng/Uploads/image/product/20150806/20150806153032_62962.jpg', '1438863838');
INSERT INTO `jkd_images` VALUES ('222', 'product', '20150807110059_38916.jpg', '/yaheng/Uploads/image/product/20150807/20150807110059_38916.jpg', '1438916556');
INSERT INTO `jkd_images` VALUES ('221', 'product', '20150807110052_55096.jpg', '/yaheng/Uploads/image/product/20150807/20150807110052_55096.jpg', '1438916556');
INSERT INTO `jkd_images` VALUES ('341', 'product', '20150807110052_55096.jpg', '/yaheng/Uploads/image/product/20150807/20150807110052_55096.jpg', '1441939241');
INSERT INTO `jkd_images` VALUES ('342', 'product', '20150807110059_38916.jpg', '/yaheng/Uploads/image/product/20150807/20150807110059_38916.jpg', '1441939241');
INSERT INTO `jkd_images` VALUES ('229', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277405');
INSERT INTO `jkd_images` VALUES ('230', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277453');
INSERT INTO `jkd_images` VALUES ('231', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277478');
INSERT INTO `jkd_images` VALUES ('232', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277599');
INSERT INTO `jkd_images` VALUES ('233', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277760');
INSERT INTO `jkd_images` VALUES ('234', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277762');
INSERT INTO `jkd_images` VALUES ('235', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277811');
INSERT INTO `jkd_images` VALUES ('236', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277839');
INSERT INTO `jkd_images` VALUES ('237', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277868');
INSERT INTO `jkd_images` VALUES ('238', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277880');
INSERT INTO `jkd_images` VALUES ('239', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439277888');
INSERT INTO `jkd_images` VALUES ('240', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439278234');
INSERT INTO `jkd_images` VALUES ('241', 'case', '20150731171959_47378.jpg', '/yaheng/Uploads/image/news/20150731/20150731171959_47378.jpg', '1439278449');
INSERT INTO `jkd_images` VALUES ('242', 'case', '20150811154222_42384.jpg', '/yaheng/Uploads/image/case/20150811/20150811154222_42384.jpg', '1439278944');
INSERT INTO `jkd_images` VALUES ('243', 'case', '20150811154801_67142.jpg', '/yaheng/Uploads/image/case/20150811/20150811154801_67142.jpg', '1439279284');
INSERT INTO `jkd_images` VALUES ('246', 'product', '20150821115542_69411.jpg', '/yaheng/Uploads/image/gif/20150821/20150821115542_69411.jpg', '1440129345');
INSERT INTO `jkd_images` VALUES ('247', 'product', '20150821115542_69411.jpg', '/yaheng/Uploads/image/gif/20150821/20150821115542_69411.jpg', '1440129358');
INSERT INTO `jkd_images` VALUES ('248', 'product', '20150821115552_74896.jpg', '/yaheng/Uploads/image/gif/20150821/20150821115552_74896.jpg', '1440129358');
INSERT INTO `jkd_images` VALUES ('249', 'product', '20150821115557_35721.gif', '/yaheng/Uploads/image/gif/20150821/20150821115557_35721.gif', '1440129358');
INSERT INTO `jkd_images` VALUES ('250', 'product', '20150821115542_69411.jpg', '/yaheng/Uploads/image/gif/20150821/20150821115542_69411.jpg', '1440129421');
INSERT INTO `jkd_images` VALUES ('338', 'product', '20150807110052_55096.jpg', '/yaheng/Uploads/image/product/20150807/20150807110052_55096.jpg', '1441939004');
INSERT INTO `jkd_images` VALUES ('339', 'product', '20150807110059_38916.jpg', '/yaheng/Uploads/image/product/20150807/20150807110059_38916.jpg', '1441939004');
INSERT INTO `jkd_images` VALUES ('340', 'product', '20150821141153_21758.jpg', '/yaheng/Uploads/image/product/20150821/20150821141153_21758.jpg', '1441939004');
INSERT INTO `jkd_images` VALUES ('321', 'gif', '20150821155859_68331.png', '/yaheng/Uploads/image/gif/20150821/20150821155859_68331.png', '1440143976');
INSERT INTO `jkd_images` VALUES ('322', 'gif', '20150821155904_93647.png', '/yaheng/Uploads/image/gif/20150821/20150821155904_93647.png', '1440143976');
INSERT INTO `jkd_images` VALUES ('323', 'gif', '20150821155910_27852.png', '/yaheng/Uploads/image/gif/20150821/20150821155910_27852.png', '1440143976');
INSERT INTO `jkd_images` VALUES ('324', 'gif', '20150821155915_94234.png', '/yaheng/Uploads/image/gif/20150821/20150821155915_94234.png', '1440143976');
INSERT INTO `jkd_images` VALUES ('325', 'gif', '20150821155921_38482.png', '/yaheng/Uploads/image/gif/20150821/20150821155921_38482.png', '1440143976');
INSERT INTO `jkd_images` VALUES ('326', 'gif', '20150821155925_18138.png', '/yaheng/Uploads/image/gif/20150821/20150821155925_18138.png', '1440143976');
INSERT INTO `jkd_images` VALUES ('327', 'gif', '20150821155930_82993.png', '/yaheng/Uploads/image/gif/20150821/20150821155930_82993.png', '1440143976');
INSERT INTO `jkd_images` VALUES ('328', 'gif', '20150821155935_57661.png', '/yaheng/Uploads/image/gif/20150821/20150821155935_57661.png', '1440143976');

-- ----------------------------
-- Table structure for `jkd_input`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_input`;
CREATE TABLE `jkd_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `field_id` int(11) NOT NULL COMMENT '字段id',
  `is_show` tinyint(4) NOT NULL DEFAULT '0' COMMENT '表单域是否显示',
  `label` varchar(32) NOT NULL COMMENT '表单域标签',
  `remark` varchar(128) NOT NULL COMMENT '表单域域',
  `type` varchar(32) NOT NULL COMMENT '表单域类型',
  `width` int(11) NOT NULL DEFAULT '20' COMMENT '表单域宽度',
  `height` int(11) NOT NULL DEFAULT '8' COMMENT '表单域高度',
  `opt_value` text NOT NULL COMMENT '表单域可选值',
  `value` varchar(128) NOT NULL COMMENT '表单域默认值',
  `editor` varchar(32) NOT NULL COMMENT '编辑器类型',
  `html` text NOT NULL COMMENT '表单域html替换',
  `show_order` int(11) DEFAULT NULL COMMENT '表单域显示顺序',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `fk_field_input` (`field_id`),
  CONSTRAINT `jkd_input_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `jkd_field` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段表单域信息';

-- ----------------------------
-- Records of jkd_input
-- ----------------------------

-- ----------------------------
-- Table structure for `jkd_link`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_link`;
CREATE TABLE `jkd_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `display` int(1) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `target` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkd_link
-- ----------------------------

-- ----------------------------
-- Table structure for `jkd_member`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_member`;
CREATE TABLE `jkd_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `weibo_uid` varchar(15) DEFAULT NULL COMMENT '对应的新浪微博uid',
  `tencent_uid` varchar(20) DEFAULT NULL COMMENT '腾讯微博UID',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱地址',
  `nickname` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `pwd` char(32) DEFAULT NULL COMMENT '密码',
  `reg_date` int(10) DEFAULT NULL,
  `reg_ip` char(15) DEFAULT NULL COMMENT '注册IP地址',
  `verify_status` int(1) DEFAULT '0' COMMENT '电子邮件验证标示 0未验证，1已验证',
  `verify_code` varchar(32) DEFAULT NULL COMMENT '电子邮件验证随机码',
  `verify_time` int(10) DEFAULT NULL COMMENT '邮箱验证时间',
  `verify_exp_time` int(10) DEFAULT NULL COMMENT '验证邮件过期时间',
  `find_fwd_code` varchar(32) DEFAULT NULL COMMENT '找回密码验证随机码',
  `find_pwd_time` int(10) DEFAULT NULL COMMENT '找回密码申请提交时间',
  `find_pwd_exp_time` int(10) DEFAULT NULL COMMENT '找回密码验证随机码过期时间',
  `avatar` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `birthday` int(10) DEFAULT NULL COMMENT '用户生日',
  `sex` int(1) DEFAULT NULL COMMENT '0女1男',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `intr` varchar(500) DEFAULT NULL COMMENT '个人介绍',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `phone` varchar(30) DEFAULT NULL COMMENT '电话',
  `fax` varchar(30) DEFAULT NULL,
  `qq` int(15) DEFAULT NULL,
  `msn` varchar(100) DEFAULT NULL,
  `login_ip` varchar(15) DEFAULT NULL COMMENT '登录ip',
  `login_time` int(10) DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=352 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站前台会员表';

-- ----------------------------
-- Records of jkd_member
-- ----------------------------

-- ----------------------------
-- Table structure for `jkd_message`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_message`;
CREATE TABLE `jkd_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` char(15) NOT NULL,
  `display` int(1) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkd_message
-- ----------------------------
INSERT INTO `jkd_message` VALUES ('76', '地村 要', '2147483647', '1', '2', '0', '1439372478', '3');
INSERT INTO `jkd_message` VALUES ('72', '123', '321', '', '', '0', '1439352115', '');
INSERT INTO `jkd_message` VALUES ('73', '11', '22', '', '', '0', '1439352185', '');
INSERT INTO `jkd_message` VALUES ('74', '2', '22', '', '', '0', '1439352310', '');
INSERT INTO `jkd_message` VALUES ('75', '苛棋要在在', '2147483647', '', '', '0', '1439372199', '');
INSERT INTO `jkd_message` VALUES ('77', '地厅要', '18521310002', '2', '22', '0', '1439372642', '222');
INSERT INTO `jkd_message` VALUES ('78', '要要', '15555555555', '', '', '0', '1440226271', '');
INSERT INTO `jkd_message` VALUES ('79', '要在', '15555555555', '&lt;script&gt;alert(1)&lt;/scrip', '', '0', '1440226989', '');

-- ----------------------------
-- Table structure for `jkd_model`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_model`;
CREATE TABLE `jkd_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) NOT NULL COMMENT '模型名称',
  `tbl_name` varchar(32) NOT NULL COMMENT '数据表名称',
  `menu_name` varchar(32) NOT NULL COMMENT '菜单名称',
  `is_inner` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为内部表',
  `has_pk` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否包含主键',
  `tbl_engine` varchar(16) NOT NULL DEFAULT 'InnoDB' COMMENT '引擎类型',
  `description` text NOT NULL COMMENT '模型描述',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据模型信息';

-- ----------------------------
-- Records of jkd_model
-- ----------------------------

-- ----------------------------
-- Table structure for `jkd_nav`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_nav`;
CREATE TABLE `jkd_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL,
  `nav_name` varchar(255) NOT NULL,
  `parent_id` smallint(5) NOT NULL DEFAULT '0',
  `guide` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `link` varchar(225) NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `target` int(1) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL COMMENT '方法',
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkd_nav
-- ----------------------------
INSERT INTO `jkd_nav` VALUES ('61', 'link', '高级定制', '0', '0', 'top', '', 'zh-cn', '3', '0', 'haute', '', '', '');
INSERT INTO `jkd_nav` VALUES ('56', 'link', '品牌代理', '0', '0', 'top', '', 'zh-cn', '1', '0', 'agent', null, null, null);
INSERT INTO `jkd_nav` VALUES ('57', 'news', '新闻活动', '0', '1', 'top', '', 'zh-cn', '2', '0', 'news', null, null, null);
INSERT INTO `jkd_nav` VALUES ('67', 'link', '产品系列', '0', '0', 'top', '', 'zh-cn', '4', '0', 'product', null, null, null);
INSERT INTO `jkd_nav` VALUES ('69', 'link', '新品发布', '0', '0', 'top', '', 'zh-cn', '5', '0', 'release', null, null, null);
INSERT INTO `jkd_nav` VALUES ('70', 'link', '蓓特蔓', '0', '0', 'top', '', 'zh-cn', '6', '0', 'bety', null, null, null);
INSERT INTO `jkd_nav` VALUES ('71', 'link', '首页', '0', '0', 'top', '', 'zh-cn', '7', '0', '', null, null, null);

-- ----------------------------
-- Table structure for `jkd_news`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_news`;
CREATE TABLE `jkd_news` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cid` smallint(3) DEFAULT NULL COMMENT '所在分类',
  `title` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `keywords` varchar(50) DEFAULT NULL COMMENT '文章关键字',
  `description` mediumtext COMMENT '文章描述',
  `status` tinyint(1) DEFAULT '1',
  `summary` varchar(255) DEFAULT NULL COMMENT '文章摘要',
  `published` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  `content` text,
  `click` int(11) NOT NULL DEFAULT '0',
  `aid` smallint(3) DEFAULT NULL COMMENT '发布者UID',
  `is_recommend` int(1) NOT NULL DEFAULT '0',
  `image_id` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT 'zh-cn',
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of jkd_news
-- ----------------------------
INSERT INTO `jkd_news` VALUES ('39', '1', '蓓特蔓（Bety Magi）皮草品牌經營發展趨勢', '蓓特蔓,BetyMagi', '蓓特蔓(BetyMagi)这个牌子有皮装吗?', '1', '上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。', '1431067058', '1438334400', '<p>\n	<strong><span style=\"font-size:18px;\">公司簡介</span></strong><br />\n　　上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。<br />\n　　蘊盛國際主要是生產，批發和銷售各種皮草皮衣外套，圍巾，<br />\n　　帽子，手套等系列產品為主;同時開發部分男士裘皮體系系列服裝。女士服飾主要水貂，羊毛皮，狐狸毛，貉子毛為主，男士服飾主要以水貂，羊毛為主。公司產品將會逐漸配套備女士皮草相關搭配產品。通過實施產品組合戰略，將產品分為形象產品，競爭產品，銷量產品，獲得組合競爭優勢，最大限度滿足消費需求和競爭。<br />\n　　同時公司會提供高端定制，為有不同需求的客戶量身訂制高端皮草皮衣服裝，客戶可以選擇現有的款式進行修改訂制，也可以描述自己的需求，我們可以根據需求設計訂做。<br />\n　　在研發方面，公司擁有資深設計師，經常到紐約、倫敦、巴黎、米蘭、東京等時尚都市的第一線去了解女性服飾及配件的最新流行與消費趨勢，每一季度根據市場潮流結合客戶需求設計新的款式，做到銷售一季，開發一季，隨時進行服裝款式的調整與設計，於細節中體現最前沿的經典時尚。<br />\n<span style=\"font-size:18px;\"><strong>企業文化</strong></span><br />\n　　企業願望：成為令人喜愛的時尚企業<br />\n　　服務宗旨：以服務為基礎，滿足不同客戶群體的需求<br />\n　　企業精神：誠信為本，品質優先，不斷創新，勇於實踐<br />\n　　企業使命：夢想的傳遞，個性的彰顯，用自然，時尚，充滿個性的皮草來演繹突顯不同的個性氣質。<br />\n　　企業定位：25歲以上成熟自信，獨立，了解時尚，注重品味，不盲目跟從的時尚人士，白領階層，全方位路線，多元化款式。<br />\n<strong><span style=\"font-size:18px;\">品牌特點</span></strong><br />\n　　Bety Magi表現出來的不僅是一個品牌，更是一種個性而摩登的生活態度<br />\n　　它針對自我意識及獨立個性的現代女性，勇於表達自我，隨時發揮自我氣質和魅力，懂得愛自己，並享受因此帶來的生活之美。<br />\n　　從Bety Magi感受到的是一種輕鬆自然，心之所至的真情真我，以及與潮流趨勢同步的投入感。它會成為都市知性女子最貼心的時裝品牌。<br />\n　　多樣的生活方式是時尚的產物，女人，可以時而優雅風情，女人味十足的高貴公主，時而是新潮，大方得體的現代休閑女性，時而又是熱衷運動，陽光燦爛的時尚女郎，一個不高興，不可以是叛逆不羈，我行我素，還有那麼點頹廢的感覺， Bety Magi蓓特蔓倡導一種時尚的生活，以變幻，不同風格的時尚來應變現代女性不同的時尚生活空間，讓女人任何時候都有了扮演自己喜歡的生活舞台角色的時尚衣裳，更用一種無言的方式來表達自己的內心渴望。<br />\n　　善變，成了時尚的最大特點，不變是大家追求時尚渴望自由的心。Bety Magi，讓你在時尚中保持自由，讓大都市的女郎們發自身獨特風格和個性解碼，滿足上班，約會，PARTY，度假，甚至運動等都市生活原各個層面，無論何時何地，BetyMagi的女郎們永遠是最具個性魅力的亮點。<br />\n<strong><span style=\"font-size:18px;\">營銷渠道及服務</span></strong><br />\n　　目前，皮草行業大多數生產商利用皮革城進行門店銷售，雖然開有淘寶店，但並沒有真正重視網絡營銷，Bety magi將會利用國家大力支持互聯網的發展， 抓住這個機遇，利用全網營銷的優勢，結合傳統的營銷方式大力推廣我們的品牌，並逐漸地將我們的品牌推向國際市場。公司會建立公司官網，同時結合淘寶，阿裡巴巴等平台進行全網營銷，做好網絡布局進行全網營銷推廣，並參加有影響力的專業博覽會拓展自己的業務。適當的時候可以進行店下銷售，建立自己的店鋪。同時公司將會適時開拓國外市場。<br />\n　　就公司服務方面，將會不斷完善售前，售中，售后服務，同時做好訂單，發貨的售后服務。及時處理客戶投訴及售后服務問題，對客戶滿意度，客戶流失率等問題進行調查，以掌握客戶需求的變化，知道消費者對產品的滿意和不滿意之處並訊速改進。\n</p>\n<div>\n	<div>\n		<br />\n	</div>\n</div>', '239', '1', '0', '96', 'zh-cn', '');
INSERT INTO `jkd_news` VALUES ('43', '1', '蓓特蔓（Bety Magi）皮草品牌經營發展趨勢2', '蓓特蔓,BetyMagi', '蓓特蔓(BetyMagi)这个牌子有皮装吗?', '1', '上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。', '1433746266', '1438326339', '<p>\n	<strong><span style=\"font-size:18px;\">公司簡介</span></strong><br />\n　　上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。<br />\n　　蘊盛國際主要是生產，批發和銷售各種皮草皮衣外套，圍巾，<br />\n　　帽子，手套等系列產品為主;同時開發部分男士裘皮體系系列服裝。女士服飾主要水貂，羊毛皮，狐狸毛，貉子毛為主，男士服飾主要以水貂，羊毛為主。公司產品將會逐漸配套備女士皮草相關搭配產品。通過實施產品組合戰略，將產品分為形象產品，競爭產品，銷量產品，獲得組合競爭優勢，最大限度滿足消費需求和競爭。<br />\n　　同時公司會提供高端定制，為有不同需求的客戶量身訂制高端皮草皮衣服裝，客戶可以選擇現有的款式進行修改訂制，也可以描述自己的需求，我們可以根據需求設計訂做。<br />\n　　在研發方面，公司擁有資深設計師，經常到紐約、倫敦、巴黎、米蘭、東京等時尚都市的第一線去了解女性服飾及配件的最新流行與消費趨勢，每一季度根據市場潮流結合客戶需求設計新的款式，做到銷售一季，開發一季，隨時進行服裝款式的調整與設計，於細節中體現最前沿的經典時尚。<br />\n<span style=\"font-size:18px;\"><strong>企業文化</strong></span><br />\n　　企業願望：成為令人喜愛的時尚企業<br />\n　　服務宗旨：以服務為基礎，滿足不同客戶群體的需求<br />\n　　企業精神：誠信為本，品質優先，不斷創新，勇於實踐<br />\n　　企業使命：夢想的傳遞，個性的彰顯，用自然，時尚，充滿個性的皮草來演繹突顯不同的個性氣質。<br />\n　　企業定位：25歲以上成熟自信，獨立，了解時尚，注重品味，不盲目跟從的時尚人士，白領階層，全方位路線，多元化款式。<br />\n<strong><span style=\"font-size:18px;\">品牌特點</span></strong><br />\n　　Bety Magi表現出來的不僅是一個品牌，更是一種個性而摩登的生活態度<br />\n　　它針對自我意識及獨立個性的現代女性，勇於表達自我，隨時發揮自我氣質和魅力，懂得愛自己，並享受因此帶來的生活之美。<br />\n　　從Bety Magi感受到的是一種輕鬆自然，心之所至的真情真我，以及與潮流趨勢同步的投入感。它會成為都市知性女子最貼心的時裝品牌。<br />\n　　多樣的生活方式是時尚的產物，女人，可以時而優雅風情，女人味十足的高貴公主，時而是新潮，大方得體的現代休閑女性，時而又是熱衷運動，陽光燦爛的時尚女郎，一個不高興，不可以是叛逆不羈，我行我素，還有那麼點頹廢的感覺， Bety Magi蓓特蔓倡導一種時尚的生活，以變幻，不同風格的時尚來應變現代女性不同的時尚生活空間，讓女人任何時候都有了扮演自己喜歡的生活舞台角色的時尚衣裳，更用一種無言的方式來表達自己的內心渴望。<br />\n　　善變，成了時尚的最大特點，不變是大家追求時尚渴望自由的心。Bety Magi，讓你在時尚中保持自由，讓大都市的女郎們發自身獨特風格和個性解碼，滿足上班，約會，PARTY，度假，甚至運動等都市生活原各個層面，無論何時何地，BetyMagi的女郎們永遠是最具個性魅力的亮點。<br />\n<strong><span style=\"font-size:18px;\">營銷渠道及服務</span></strong><br />\n　　目前，皮草行業大多數生產商利用皮革城進行門店銷售，雖然開有淘寶店，但並沒有真正重視網絡營銷，Bety magi將會利用國家大力支持互聯網的發展， 抓住這個機遇，利用全網營銷的優勢，結合傳統的營銷方式大力推廣我們的品牌，並逐漸地將我們的品牌推向國際市場。公司會建立公司官網，同時結合淘寶，阿裡巴巴等平台進行全網營銷，做好網絡布局進行全網營銷推廣，並參加有影響力的專業博覽會拓展自己的業務。適當的時候可以進行店下銷售，建立自己的店鋪。同時公司將會適時開拓國外市場。<br />\n　　就公司服務方面，將會不斷完善售前，售中，售后服務，同時做好訂單，發貨的售后服務。及時處理客戶投訴及售后服務問題，對客戶滿意度，客戶流失率等問題進行調查，以掌握客戶需求的變化，知道消費者對產品的滿意和不滿意之處並訊速改進。\n</p>\n<div>\n	<div>\n		<br />\n	</div>\n</div>', '2', '1', '0', '172', 'zh-cn', '');
INSERT INTO `jkd_news` VALUES ('44', '1', '蓓特蔓（Bety Magi）皮草品牌經營發展趨勢3', '蓓特蔓,BetyMagi', '蓓特蔓(BetyMagi)这个牌子有皮装吗?', '1', '上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。', '1433746747', '1438326356', '<p>\n	<strong><span style=\"font-size:18px;\">公司簡介</span></strong><br />\n　　上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。<br />\n　　蘊盛國際主要是生產，批發和銷售各種皮草皮衣外套，圍巾，<br />\n　　帽子，手套等系列產品為主;同時開發部分男士裘皮體系系列服裝。女士服飾主要水貂，羊毛皮，狐狸毛，貉子毛為主，男士服飾主要以水貂，羊毛為主。公司產品將會逐漸配套備女士皮草相關搭配產品。通過實施產品組合戰略，將產品分為形象產品，競爭產品，銷量產品，獲得組合競爭優勢，最大限度滿足消費需求和競爭。<br />\n　　同時公司會提供高端定制，為有不同需求的客戶量身訂制高端皮草皮衣服裝，客戶可以選擇現有的款式進行修改訂制，也可以描述自己的需求，我們可以根據需求設計訂做。<br />\n　　在研發方面，公司擁有資深設計師，經常到紐約、倫敦、巴黎、米蘭、東京等時尚都市的第一線去了解女性服飾及配件的最新流行與消費趨勢，每一季度根據市場潮流結合客戶需求設計新的款式，做到銷售一季，開發一季，隨時進行服裝款式的調整與設計，於細節中體現最前沿的經典時尚。<br />\n<span style=\"font-size:18px;\"><strong>企業文化</strong></span><br />\n　　企業願望：成為令人喜愛的時尚企業<br />\n　　服務宗旨：以服務為基礎，滿足不同客戶群體的需求<br />\n　　企業精神：誠信為本，品質優先，不斷創新，勇於實踐<br />\n　　企業使命：夢想的傳遞，個性的彰顯，用自然，時尚，充滿個性的皮草來演繹突顯不同的個性氣質。<br />\n　　企業定位：25歲以上成熟自信，獨立，了解時尚，注重品味，不盲目跟從的時尚人士，白領階層，全方位路線，多元化款式。<br />\n<strong><span style=\"font-size:18px;\">品牌特點</span></strong><br />\n　　Bety Magi表現出來的不僅是一個品牌，更是一種個性而摩登的生活態度<br />\n　　它針對自我意識及獨立個性的現代女性，勇於表達自我，隨時發揮自我氣質和魅力，懂得愛自己，並享受因此帶來的生活之美。<br />\n　　從Bety Magi感受到的是一種輕鬆自然，心之所至的真情真我，以及與潮流趨勢同步的投入感。它會成為都市知性女子最貼心的時裝品牌。<br />\n　　多樣的生活方式是時尚的產物，女人，可以時而優雅風情，女人味十足的高貴公主，時而是新潮，大方得體的現代休閑女性，時而又是熱衷運動，陽光燦爛的時尚女郎，一個不高興，不可以是叛逆不羈，我行我素，還有那麼點頹廢的感覺， Bety Magi蓓特蔓倡導一種時尚的生活，以變幻，不同風格的時尚來應變現代女性不同的時尚生活空間，讓女人任何時候都有了扮演自己喜歡的生活舞台角色的時尚衣裳，更用一種無言的方式來表達自己的內心渴望。<br />\n　　善變，成了時尚的最大特點，不變是大家追求時尚渴望自由的心。Bety Magi，讓你在時尚中保持自由，讓大都市的女郎們發自身獨特風格和個性解碼，滿足上班，約會，PARTY，度假，甚至運動等都市生活原各個層面，無論何時何地，BetyMagi的女郎們永遠是最具個性魅力的亮點。<br />\n<strong><span style=\"font-size:18px;\">營銷渠道及服務</span></strong><br />\n　　目前，皮草行業大多數生產商利用皮革城進行門店銷售，雖然開有淘寶店，但並沒有真正重視網絡營銷，Bety magi將會利用國家大力支持互聯網的發展， 抓住這個機遇，利用全網營銷的優勢，結合傳統的營銷方式大力推廣我們的品牌，並逐漸地將我們的品牌推向國際市場。公司會建立公司官網，同時結合淘寶，阿裡巴巴等平台進行全網營銷，做好網絡布局進行全網營銷推廣，並參加有影響力的專業博覽會拓展自己的業務。適當的時候可以進行店下銷售，建立自己的店鋪。同時公司將會適時開拓國外市場。<br />\n　　就公司服務方面，將會不斷完善售前，售中，售后服務，同時做好訂單，發貨的售后服務。及時處理客戶投訴及售后服務問題，對客戶滿意度，客戶流失率等問題進行調查，以掌握客戶需求的變化，知道消費者對產品的滿意和不滿意之處並訊速改進。\n</p>\n<div>\n	<div>\n		<br />\n	</div>\n</div>', '4', '1', '0', '173', 'zh-cn', '');
INSERT INTO `jkd_news` VALUES ('45', '1', '蓓特蔓（Bety Magi）皮草品牌經營發展趨勢4', '蓓特蔓,BetyMagi', '蓓特蔓(BetyMagi)这个牌子有皮装吗?', '1', '上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。', '1433747792', '1438326374', '<p>\n	<strong><span style=\"font-size:18px;\">公司簡介</span></strong><br />\n　　上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。<br />\n　　蘊盛國際主要是生產，批發和銷售各種皮草皮衣外套，圍巾，<br />\n　　帽子，手套等系列產品為主;同時開發部分男士裘皮體系系列服裝。女士服飾主要水貂，羊毛皮，狐狸毛，貉子毛為主，男士服飾主要以水貂，羊毛為主。公司產品將會逐漸配套備女士皮草相關搭配產品。通過實施產品組合戰略，將產品分為形象產品，競爭產品，銷量產品，獲得組合競爭優勢，最大限度滿足消費需求和競爭。<br />\n　　同時公司會提供高端定制，為有不同需求的客戶量身訂制高端皮草皮衣服裝，客戶可以選擇現有的款式進行修改訂制，也可以描述自己的需求，我們可以根據需求設計訂做。<br />\n　　在研發方面，公司擁有資深設計師，經常到紐約、倫敦、巴黎、米蘭、東京等時尚都市的第一線去了解女性服飾及配件的最新流行與消費趨勢，每一季度根據市場潮流結合客戶需求設計新的款式，做到銷售一季，開發一季，隨時進行服裝款式的調整與設計，於細節中體現最前沿的經典時尚。<br />\n<span style=\"font-size:18px;\"><strong>企業文化</strong></span><br />\n　　企業願望：成為令人喜愛的時尚企業<br />\n　　服務宗旨：以服務為基礎，滿足不同客戶群體的需求<br />\n　　企業精神：誠信為本，品質優先，不斷創新，勇於實踐<br />\n　　企業使命：夢想的傳遞，個性的彰顯，用自然，時尚，充滿個性的皮草來演繹突顯不同的個性氣質。<br />\n　　企業定位：25歲以上成熟自信，獨立，了解時尚，注重品味，不盲目跟從的時尚人士，白領階層，全方位路線，多元化款式。<br />\n<strong><span style=\"font-size:18px;\">品牌特點</span></strong><br />\n　　Bety Magi表現出來的不僅是一個品牌，更是一種個性而摩登的生活態度<br />\n　　它針對自我意識及獨立個性的現代女性，勇於表達自我，隨時發揮自我氣質和魅力，懂得愛自己，並享受因此帶來的生活之美。<br />\n　　從Bety Magi感受到的是一種輕鬆自然，心之所至的真情真我，以及與潮流趨勢同步的投入感。它會成為都市知性女子最貼心的時裝品牌。<br />\n　　多樣的生活方式是時尚的產物，女人，可以時而優雅風情，女人味十足的高貴公主，時而是新潮，大方得體的現代休閑女性，時而又是熱衷運動，陽光燦爛的時尚女郎，一個不高興，不可以是叛逆不羈，我行我素，還有那麼點頹廢的感覺， Bety Magi蓓特蔓倡導一種時尚的生活，以變幻，不同風格的時尚來應變現代女性不同的時尚生活空間，讓女人任何時候都有了扮演自己喜歡的生活舞台角色的時尚衣裳，更用一種無言的方式來表達自己的內心渴望。<br />\n　　善變，成了時尚的最大特點，不變是大家追求時尚渴望自由的心。Bety Magi，讓你在時尚中保持自由，讓大都市的女郎們發自身獨特風格和個性解碼，滿足上班，約會，PARTY，度假，甚至運動等都市生活原各個層面，無論何時何地，BetyMagi的女郎們永遠是最具個性魅力的亮點。<br />\n<strong><span style=\"font-size:18px;\">營銷渠道及服務</span></strong><br />\n　　目前，皮草行業大多數生產商利用皮革城進行門店銷售，雖然開有淘寶店，但並沒有真正重視網絡營銷，Bety magi將會利用國家大力支持互聯網的發展， 抓住這個機遇，利用全網營銷的優勢，結合傳統的營銷方式大力推廣我們的品牌，並逐漸地將我們的品牌推向國際市場。公司會建立公司官網，同時結合淘寶，阿裡巴巴等平台進行全網營銷，做好網絡布局進行全網營銷推廣，並參加有影響力的專業博覽會拓展自己的業務。適當的時候可以進行店下銷售，建立自己的店鋪。同時公司將會適時開拓國外市場。<br />\n　　就公司服務方面，將會不斷完善售前，售中，售后服務，同時做好訂單，發貨的售后服務。及時處理客戶投訴及售后服務問題，對客戶滿意度，客戶流失率等問題進行調查，以掌握客戶需求的變化，知道消費者對產品的滿意和不滿意之處並訊速改進。\n</p>\n<div>\n	<div>\n		<br />\n	</div>\n</div>', '31', '1', '0', '174', 'zh-cn', '');
INSERT INTO `jkd_news` VALUES ('50', '1', '蓓特蔓（Bety Magi）皮草品牌經營發展趨勢', '蓓特蔓,BetyMagi', '蓓特蔓(BetyMagi)这个牌子有皮装吗?', '1', '上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。', '1431067058', '1438334400', '<p>\n	<strong><span style=\"font-size:18px;\">公司簡介</span></strong><br />\n　　上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。<br />\n　　蘊盛國際主要是生產，批發和銷售各種皮草皮衣外套，圍巾，<br />\n　　帽子，手套等系列產品為主;同時開發部分男士裘皮體系系列服裝。女士服飾主要水貂，羊毛皮，狐狸毛，貉子毛為主，男士服飾主要以水貂，羊毛為主。公司產品將會逐漸配套備女士皮草相關搭配產品。通過實施產品組合戰略，將產品分為形象產品，競爭產品，銷量產品，獲得組合競爭優勢，最大限度滿足消費需求和競爭。<br />\n　　同時公司會提供高端定制，為有不同需求的客戶量身訂制高端皮草皮衣服裝，客戶可以選擇現有的款式進行修改訂制，也可以描述自己的需求，我們可以根據需求設計訂做。<br />\n　　在研發方面，公司擁有資深設計師，經常到紐約、倫敦、巴黎、米蘭、東京等時尚都市的第一線去了解女性服飾及配件的最新流行與消費趨勢，每一季度根據市場潮流結合客戶需求設計新的款式，做到銷售一季，開發一季，隨時進行服裝款式的調整與設計，於細節中體現最前沿的經典時尚。<br />\n<span style=\"font-size:18px;\"><strong>企業文化</strong></span><br />\n　　企業願望：成為令人喜愛的時尚企業<br />\n　　服務宗旨：以服務為基礎，滿足不同客戶群體的需求<br />\n　　企業精神：誠信為本，品質優先，不斷創新，勇於實踐<br />\n　　企業使命：夢想的傳遞，個性的彰顯，用自然，時尚，充滿個性的皮草來演繹突顯不同的個性氣質。<br />\n　　企業定位：25歲以上成熟自信，獨立，了解時尚，注重品味，不盲目跟從的時尚人士，白領階層，全方位路線，多元化款式。<br />\n<strong><span style=\"font-size:18px;\">品牌特點</span></strong><br />\n　　Bety Magi表現出來的不僅是一個品牌，更是一種個性而摩登的生活態度<br />\n　　它針對自我意識及獨立個性的現代女性，勇於表達自我，隨時發揮自我氣質和魅力，懂得愛自己，並享受因此帶來的生活之美。<br />\n　　從Bety Magi感受到的是一種輕鬆自然，心之所至的真情真我，以及與潮流趨勢同步的投入感。它會成為都市知性女子最貼心的時裝品牌。<br />\n　　多樣的生活方式是時尚的產物，女人，可以時而優雅風情，女人味十足的高貴公主，時而是新潮，大方得體的現代休閑女性，時而又是熱衷運動，陽光燦爛的時尚女郎，一個不高興，不可以是叛逆不羈，我行我素，還有那麼點頹廢的感覺， Bety Magi蓓特蔓倡導一種時尚的生活，以變幻，不同風格的時尚來應變現代女性不同的時尚生活空間，讓女人任何時候都有了扮演自己喜歡的生活舞台角色的時尚衣裳，更用一種無言的方式來表達自己的內心渴望。<br />\n　　善變，成了時尚的最大特點，不變是大家追求時尚渴望自由的心。Bety Magi，讓你在時尚中保持自由，讓大都市的女郎們發自身獨特風格和個性解碼，滿足上班，約會，PARTY，度假，甚至運動等都市生活原各個層面，無論何時何地，BetyMagi的女郎們永遠是最具個性魅力的亮點。<br />\n<strong><span style=\"font-size:18px;\">營銷渠道及服務</span></strong><br />\n　　目前，皮草行業大多數生產商利用皮革城進行門店銷售，雖然開有淘寶店，但並沒有真正重視網絡營銷，Bety magi將會利用國家大力支持互聯網的發展， 抓住這個機遇，利用全網營銷的優勢，結合傳統的營銷方式大力推廣我們的品牌，並逐漸地將我們的品牌推向國際市場。公司會建立公司官網，同時結合淘寶，阿裡巴巴等平台進行全網營銷，做好網絡布局進行全網營銷推廣，並參加有影響力的專業博覽會拓展自己的業務。適當的時候可以進行店下銷售，建立自己的店鋪。同時公司將會適時開拓國外市場。<br />\n　　就公司服務方面，將會不斷完善售前，售中，售后服務，同時做好訂單，發貨的售后服務。及時處理客戶投訴及售后服務問題，對客戶滿意度，客戶流失率等問題進行調查，以掌握客戶需求的變化，知道消費者對產品的滿意和不滿意之處並訊速改進。\n</p>\n<div>\n	<div>\n		<br />\n	</div>\n</div>', '8', '1', '0', '96', 'zh-cn', '');
INSERT INTO `jkd_news` VALUES ('49', '1', '蓓特蔓（Bety Magi）皮草品牌經營發展趨勢5', '蓓特蔓,BetyMagi', '蓓特蔓(BetyMagi)这个牌子有皮装吗?', '1', '上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品…', '1438334616', '1438334677', '<p>\n	<strong><span style=\"font-size:18px;\">公司簡介</span></strong><br />\n　　上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。<br />\n　　蘊盛國際主要是生產，批發和銷售各種皮草皮衣外套，圍巾，<br />\n　　帽子，手套等系列產品為主;同時開發部分男士裘皮體系系列服裝。女士服飾主要水貂，羊毛皮，狐狸毛，貉子毛為主，男士服飾主要以水貂，羊毛為主。公司產品將會逐漸配套備女士皮草相關搭配產品。通過實施產品組合戰略，將產品分為形象產品，競爭產品，銷量產品，獲得組合競爭優勢，最大限度滿足消費需求和競爭。<br />\n　　同時公司會提供高端定制，為有不同需求的客戶量身訂制高端皮草皮衣服裝，客戶可以選擇現有的款式進行修改訂制，也可以描述自己的需求，我們可以根據需求設計訂做。<br />\n　　在研發方面，公司擁有資深設計師，經常到紐約、倫敦、巴黎、米蘭、東京等時尚都市的第一線去了解女性服飾及配件的最新流行與消費趨勢，每一季度根據市場潮流結合客戶需求設計新的款式，做到銷售一季，開發一季，隨時進行服裝款式的調整與設計，於細節中體現最前沿的經典時尚。<br />\n<span style=\"font-size:18px;\"><strong>企業文化</strong></span><br />\n　　企業願望：成為令人喜愛的時尚企業<br />\n　　服務宗旨：以服務為基礎，滿足不同客戶群體的需求<br />\n　　企業精神：誠信為本，品質優先，不斷創新，勇於實踐<br />\n　　企業使命：夢想的傳遞，個性的彰顯，用自然，時尚，充滿個性的皮草來演繹突顯不同的個性氣質。<br />\n　　企業定位：25歲以上成熟自信，獨立，了解時尚，注重品味，不盲目跟從的時尚人士，白領階層，全方位路線，多元化款式。<br />\n<strong><span style=\"font-size:18px;\">品牌特點</span></strong><br />\n　　Bety Magi表現出來的不僅是一個品牌，更是一種個性而摩登的生活態度<br />\n　　它針對自我意識及獨立個性的現代女性，勇於表達自我，隨時發揮自我氣質和魅力，懂得愛自己，並享受因此帶來的生活之美。<br />\n　　從Bety Magi感受到的是一種輕鬆自然，心之所至的真情真我，以及與潮流趨勢同步的投入感。它會成為都市知性女子最貼心的時裝品牌。<br />\n　　多樣的生活方式是時尚的產物，女人，可以時而優雅風情，女人味十足的高貴公主，時而是新潮，大方得體的現代休閑女性，時而又是熱衷運動，陽光燦爛的時尚女郎，一個不高興，不可以是叛逆不羈，我行我素，還有那麼點頹廢的感覺， Bety Magi蓓特蔓倡導一種時尚的生活，以變幻，不同風格的時尚來應變現代女性不同的時尚生活空間，讓女人任何時候都有了扮演自己喜歡的生活舞台角色的時尚衣裳，更用一種無言的方式來表達自己的內心渴望。<br />\n　　善變，成了時尚的最大特點，不變是大家追求時尚渴望自由的心。Bety Magi，讓你在時尚中保持自由，讓大都市的女郎們發自身獨特風格和個性解碼，滿足上班，約會，PARTY，度假，甚至運動等都市生活原各個層面，無論何時何地，BetyMagi的女郎們永遠是最具個性魅力的亮點。<br />\n<strong><span style=\"font-size:18px;\">營銷渠道及服務</span></strong><br />\n　　目前，皮草行業大多數生產商利用皮革城進行門店銷售，雖然開有淘寶店，但並沒有真正重視網絡營銷，Bety magi將會利用國家大力支持互聯網的發展， 抓住這個機遇，利用全網營銷的優勢，結合傳統的營銷方式大力推廣我們的品牌，並逐漸地將我們的品牌推向國際市場。公司會建立公司官網，同時結合淘寶，阿裡巴巴等平台進行全網營銷，做好網絡布局進行全網營銷推廣，並參加有影響力的專業博覽會拓展自己的業務。適當的時候可以進行店下銷售，建立自己的店鋪。同時公司將會適時開拓國外市場。<br />\n　　就公司服務方面，將會不斷完善售前，售中，售后服務，同時做好訂單，發貨的售后服務。及時處理客戶投訴及售后服務問題，對客戶滿意度，客戶流失率等問題進行調查，以掌握客戶需求的變化，知道消費者對產品的滿意和不滿意之處並訊速改進。\n</p>\n<div>\n	<br />\n</div>\n<div>\n</div>', '98', '1', '0', '204', 'zh-cn', '');
INSERT INTO `jkd_news` VALUES ('51', '1', '蓓特蔓（Bety Magi）皮草品牌經營發展趨勢', '蓓特蔓,BetyMagi', '蓓特蔓(BetyMagi)这个牌子有皮装吗?', '1', '上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。', '1431067058', '1438334400', '<p>\r\n	<strong><span style=\"font-size:18px;\">公司簡介</span></strong><br />\r\n　　上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品牌發展。這樣高端奢華的皮草就成為大多數人的追寵的目標。<br />\r\n　　蘊盛國際主要是生產，批發和銷售各種皮草皮衣外套，圍巾，<br />\r\n　　帽子，手套等系列產品為主;同時開發部分男士裘皮體系系列服裝。女士服飾主要水貂，羊毛皮，狐狸毛，貉子毛為主，男士服飾主要以水貂，羊毛為主。公司產品將會逐漸配套備女士皮草相關搭配產品。通過實施產品組合戰略，將產品分為形象產品，競爭產品，銷量產品，獲得組合競爭優勢，最大限度滿足消費需求和競爭。<br />\r\n　　同時公司會提供高端定制，為有不同需求的客戶量身訂制高端皮草皮衣服裝，客戶可以選擇現有的款式進行修改訂制，也可以描述自己的需求，我們可以根據需求設計訂做。<br />\r\n　　在研發方面，公司擁有資深設計師，經常到紐約、倫敦、巴黎、米蘭、東京等時尚都市的第一線去了解女性服飾及配件的最新流行與消費趨勢，每一季度根據市場潮流結合客戶需求設計新的款式，做到銷售一季，開發一季，隨時進行服裝款式的調整與設計，於細節中體現最前沿的經典時尚。<br />\r\n<span style=\"font-size:18px;\"><strong>企業文化</strong></span><br />\r\n　　企業願望：成為令人喜愛的時尚企業<br />\r\n　　服務宗旨：以服務為基礎，滿足不同客戶群體的需求<br />\r\n　　企業精神：誠信為本，品質優先，不斷創新，勇於實踐<br />\r\n　　企業使命：夢想的傳遞，個性的彰顯，用自然，時尚，充滿個性的皮草來演繹突顯不同的個性氣質。<br />\r\n　　企業定位：25歲以上成熟自信，獨立，了解時尚，注重品味，不盲目跟從的時尚人士，白領階層，全方位路線，多元化款式。<br />\r\n<strong><span style=\"font-size:18px;\">品牌特點</span></strong><br />\r\n　　Bety Magi表現出來的不僅是一個品牌，更是一種個性而摩登的生活態度<br />\r\n　　它針對自我意識及獨立個性的現代女性，勇於表達自我，隨時發揮自我氣質和魅力，懂得愛自己，並享受因此帶來的生活之美。<br />\r\n　　從Bety Magi感受到的是一種輕鬆自然，心之所至的真情真我，以及與潮流趨勢同步的投入感。它會成為都市知性女子最貼心的時裝品牌。<br />\r\n　　多樣的生活方式是時尚的產物，女人，可以時而優雅風情，女人味十足的高貴公主，時而是新潮，大方得體的現代休閑女性，時而又是熱衷運動，陽光燦爛的時尚女郎，一個不高興，不可以是叛逆不羈，我行我素，還有那麼點頹廢的感覺， Bety Magi蓓特蔓倡導一種時尚的生活，以變幻，不同風格的時尚來應變現代女性不同的時尚生活空間，讓女人任何時候都有了扮演自己喜歡的生活舞台角色的時尚衣裳，更用一種無言的方式來表達自己的內心渴望。<br />\r\n　　善變，成了時尚的最大特點，不變是大家追求時尚渴望自由的心。Bety Magi，讓你在時尚中保持自由，讓大都市的女郎們發自身獨特風格和個性解碼，滿足上班，約會，PARTY，度假，甚至運動等都市生活原各個層面，無論何時何地，BetyMagi的女郎們永遠是最具個性魅力的亮點。<br />\r\n<strong><span style=\"font-size:18px;\">營銷渠道及服務</span></strong><br />\r\n　　目前，皮草行業大多數生產商利用皮革城進行門店銷售，雖然開有淘寶店，但並沒有真正重視網絡營銷，Bety magi將會利用國家大力支持互聯網的發展， 抓住這個機遇，利用全網營銷的優勢，結合傳統的營銷方式大力推廣我們的品牌，並逐漸地將我們的品牌推向國際市場。公司會建立公司官網，同時結合淘寶，阿裡巴巴等平台進行全網營銷，做好網絡布局進行全網營銷推廣，並參加有影響力的專業博覽會拓展自己的業務。適當的時候可以進行店下銷售，建立自己的店鋪。同時公司將會適時開拓國外市場。<br />\r\n　　就公司服務方面，將會不斷完善售前，售中，售后服務，同時做好訂單，發貨的售后服務。及時處理客戶投訴及售后服務問題，對客戶滿意度，客戶流失率等問題進行調查，以掌握客戶需求的變化，知道消費者對產品的滿意和不滿意之處並訊速改進。\r\n</p>\r\n<div>\r\n	<div>\r\n		<br />\r\n	</div>\r\n</div>', '246', '1', '0', '96', 'zh-cn', '');

-- ----------------------------
-- Table structure for `jkd_node`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_node`;
CREATE TABLE `jkd_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='权限节点表';

-- ----------------------------
-- Records of jkd_node
-- ----------------------------
INSERT INTO `jkd_node` VALUES ('1', 'Admin', '后台管理', '1', '网站后台管理项目', '10', '0', '1');
INSERT INTO `jkd_node` VALUES ('2', 'Index', '管理首页', '1', '', '1', '1', '2');
INSERT INTO `jkd_node` VALUES ('3', 'Member', '注册会员管理', '1', '', '3', '1', '2');
INSERT INTO `jkd_node` VALUES ('4', 'Webinfo', '系统管理', '1', '', '4', '1', '2');
INSERT INTO `jkd_node` VALUES ('5', 'index', '默认页', '1', '', '5', '2', '3');
INSERT INTO `jkd_node` VALUES ('6', 'myInfo', '我的个人信息', '1', '', '6', '2', '3');
INSERT INTO `jkd_node` VALUES ('7', 'index', '会员首页', '1', '', '7', '3', '3');
INSERT INTO `jkd_node` VALUES ('8', 'index', '管理员列表', '1', '', '8', '14', '3');
INSERT INTO `jkd_node` VALUES ('9', 'addAdmin', '添加管理员', '1', '', '9', '14', '3');
INSERT INTO `jkd_node` VALUES ('10', 'index', '系统设置首页', '1', '', '10', '4', '3');
INSERT INTO `jkd_node` VALUES ('11', 'setEmailConfig', '设置系统邮件', '1', '', '12', '4', '3');
INSERT INTO `jkd_node` VALUES ('12', 'testEmailConfig', '发送测试邮件', '1', '', '0', '4', '3');
INSERT INTO `jkd_node` VALUES ('13', 'setSafeConfig', '系统安全设置', '1', '', '0', '4', '3');
INSERT INTO `jkd_node` VALUES ('14', 'Access', '权限管理', '1', '权限管理，为系统后台管理员设置不同的权限', '0', '1', '2');
INSERT INTO `jkd_node` VALUES ('15', 'nodeList', '查看节点', '1', '节点列表信息', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('16', 'roleList', '角色列表查看', '1', '角色列表查看', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('17', 'addRole', '添加角色', '1', '', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('18', 'editRole', '编辑角色', '1', '', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('19', 'opNodeStatus', '便捷开启禁用节点', '1', '', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('20', 'opRoleStatus', '便捷开启禁用角色', '1', '', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('21', 'editNode', '编辑节点', '1', '', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('22', 'addNode', '添加节点', '1', '', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('23', 'addAdmin', '添加管理员', '1', '', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('24', 'editAdmin', '编辑管理员信息', '1', '', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('25', 'changeRole', '权限分配', '1', '', '0', '14', '3');
INSERT INTO `jkd_node` VALUES ('26', 'News', '资讯管理', '1', '', '0', '1', '2');
INSERT INTO `jkd_node` VALUES ('27', 'index', '新闻列表', '1', '', '0', '26', '3');
INSERT INTO `jkd_node` VALUES ('28', 'category', '新闻分类管理', '1', '', '0', '26', '3');
INSERT INTO `jkd_node` VALUES ('29', 'add', '发布新闻', '1', '', '0', '26', '3');
INSERT INTO `jkd_node` VALUES ('30', 'edit', '编辑新闻', '1', '', '0', '26', '3');
INSERT INTO `jkd_node` VALUES ('31', 'del', '删除信息', '0', '', '0', '26', '3');
INSERT INTO `jkd_node` VALUES ('32', 'SysData', '数据库管理', '1', '包含数据库备份、还原、打包等', '0', '1', '2');
INSERT INTO `jkd_node` VALUES ('33', 'index', '查看数据库表结构信息', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('34', 'backup', '备份数据库', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('35', 'restore', '查看已备份SQL文件', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('36', 'restoreData', '执行数据库还原操作', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('37', 'delSqlFiles', '删除SQL文件', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('38', 'sendSql', '邮件发送SQL文件', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('39', 'zipSql', '打包SQL文件', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('40', 'zipList', '查看已打包SQL文件', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('41', 'unzipSqlfile', '解压缩ZIP文件', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('42', 'delZipFiles', '删除zip压缩文件', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('43', 'downFile', '下载备份的SQL,ZIP文件', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('44', 'repair', '数据库优化修复', '1', '', '0', '32', '3');
INSERT INTO `jkd_node` VALUES ('46', 'Siteinfo', '网站功能', '1', '', '0', '1', '2');
INSERT INTO `jkd_node` VALUES ('47', 'index', '菜单列表', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('48', 'add_nav', '添加/编辑菜单', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('49', 'adindex', '轮播列表', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('50', 'add_ad', '添加/编辑轮播', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('51', 'page', '单页列表', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('52', 'add_page', '添加/编辑单页', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('53', 'tag_index', '标签列表', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('54', 'add_tag', '添加/编辑标签', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('55', 'create_tag', '模版标签生成', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('56', 'file_index', '文件管理', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('57', 'link_index', '友情链接列表', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('58', 'add_link', '添加/编辑友情链接', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('59', 'message', '留言信息列表', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('60', 'Product', '产品管理', '1', '', '0', '1', '2');
INSERT INTO `jkd_node` VALUES ('61', 'delpage', '删除单页', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('62', 'delad', '删除轮播', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('63', 'dellink', '删除友情链接', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('64', 'delmessage', '删除留言', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('65', 'deltag', '删除标签', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('66', 'selectCat', '文章分类', '1', '', '0', '46', '3');
INSERT INTO `jkd_node` VALUES ('67', 'index', '产品列表', '1', '', '0', '60', '3');
INSERT INTO `jkd_node` VALUES ('68', 'edit', '编辑产品', '1', '', '0', '60', '3');
INSERT INTO `jkd_node` VALUES ('69', 'add', '添加产品', '1', '', '0', '60', '3');
INSERT INTO `jkd_node` VALUES ('70', 'category', '分类列表', '1', '', '0', '60', '3');
INSERT INTO `jkd_node` VALUES ('71', 'del', '删除产品', '1', '', '0', '60', '3');
INSERT INTO `jkd_node` VALUES ('72', 'changeAttr', '快速推荐', '1', '', '0', '60', '3');
INSERT INTO `jkd_node` VALUES ('73', 'changeStatus', '快速审核', '0', '', '0', '60', '3');
INSERT INTO `jkd_node` VALUES ('74', 'changePhoneStatus', '手机推荐', '1', '', '0', '60', '3');
INSERT INTO `jkd_node` VALUES ('75', 'checkProductTitle', '标题检查', '1', '', '0', '60', '3');
INSERT INTO `jkd_node` VALUES ('76', 'changeAttr', '快速推荐', '1', '', '0', '26', '3');
INSERT INTO `jkd_node` VALUES ('77', 'changeStatus', '快速审核', '1', '', '0', '26', '3');
INSERT INTO `jkd_node` VALUES ('78', 'Models', '模型管理', '1', '', '0', '1', '2');
INSERT INTO `jkd_node` VALUES ('79', 'index', '模型列表', '1', '', '0', '78', '3');
INSERT INTO `jkd_node` VALUES ('80', 'add', '添加模型', '1', '', '0', '78', '3');

-- ----------------------------
-- Table structure for `jkd_page`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_page`;
CREATE TABLE `jkd_page` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(30) NOT NULL DEFAULT '',
  `parent_id` smallint(5) NOT NULL DEFAULT '0',
  `page_name` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `display` int(1) NOT NULL DEFAULT '0',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  `image_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkd_page
-- ----------------------------
INSERT INTO `jkd_page` VALUES ('53', 'dltj', '0', '代理条件', '<p>热爱皮草皮衣行业，有强烈的<em>事业心和持久</em>的毅力，</p>\n                        <p><em>认同蓓特蔓</em>的理念文化</p>\n                        <p>具备市场开发和管理能力，并具备一定的<em>市场营销和市场推广</em>经验</p>\n                        <p>对蓓特蔓品牌有一定的<em>认知度</em></p>\n                        <p>具备一定的<em>经济实力</em>，有一定的备用资金。</p>', '1', '', '', 'zh-cn', null);
INSERT INTO `jkd_page` VALUES ('48', 'dzlc', '0', '定制流程', '\n	<li>\n		<i>1</i>与顾客沟通，深入了解顾客的需求，喜爱的皮草服装风格，为客户提供款式选择，或者由客户提供款式的照片。通过与客户的深入沟通把客户的想法变得更加实际和具体。\n	</li>\n	<li>\n		<i>2</i>顾客原料选择及颜色：我们提供不同皮毛品质及颜色样供客户选择，所有原村料可以通过环保测试。我们有各种国产，进口的狐狸毛，貉子毛，羊毛皮，水貂，光面羊皮，毛面有不同的颜色和印花风格，皮面风格有光面革，绒面革，清水革，水染蜡感革，植鞣革等 。\n	</li>\n	<li>\n		<i>3</i>通过与客户的沟通，为客户出设计图稿，并就细节与客户沟通与确认。如果客户提供的款式图或设计，我们会做出排板，绘制出一个图样供客户确认。\n	</li>\n	<li>\n		<i>4</i>尺寸确认：我们会提供一组样衣，让客户试身，可以根据客户要求调整尺寸。\n	</li>\n	<li>\n		<i>5</i>客户试样后有不合适的地方，可以就尺寸方面进行调整修改。\n	</li>\n	<li>\n		<i>6</i>中途样品制作：如果客户有其他要求，与设计师及时沟通，在半成品期间进行修改。\n	</li>\n	<li>\n		<i>7</i>皮草服装交付时，对于皮草服装的保养与洗涤，对客户进行说明，为售后服务打好基础。\n	</li>\n	<li>\n		<i>8</i>售后服务：顾客可以前来领取，也可上门送货服务。对皮草后期保养给客户合理建议。\n	</li>', '1', '', '', 'zh-cn', null);
INSERT INTO `jkd_page` VALUES ('49', 'ppjj', '0', '品牌简介', '<p>蓓特蔓以皮草皮衣设计，生产，销售为一体，主要生产以羊毛皮，（獭）兔毛皮，貉子，狐狸，水貂等皮草服装及服饰品，产品远销法国，西班牙，美国，丹麦，日本等国家。同时，与国内知名品牌合作开发皮草系列产品。</p>\n                <p>每一件皮草都根据自身特性精心设计，历经选皮，设计，确定用料，制板，制作布样，试样，修板，算料，配色，钉皮，裁皮，车缝，再钉皮等 多道工序。公司也致力于个人皮草外套订制业务，为消费者提供个性化服务。公司力求将更好的品质，更好的服务，更低的价格带给广大消费者。</p>', '1', '', '', 'zh-cn', null);
INSERT INTO `jkd_page` VALUES ('50', 'ppwh', '0', '品牌文化', '<ul>\n                        <li>\n                            <i></i>\n                            <span>企业愿景</span>\n                            <em>成为令人喜爱的时尚企业</em>\n                        </li>\n                        <li>\n                            <i></i>\n                            <span>服务宗旨</span>\n                            <em>以服务为基础，满足不同客户群体的需求</em>\n                        </li>\n                        <li>\n                            <i></i>\n                            <span>企业精神</span>\n                            <em>诚信为本，品质优先，不断创新，勇于实践</em>\n                        </li>\n                        <li>\n                            <i></i>\n                            <span>企业使命</span>\n                            <em>梦想的传递，个性的彰显，用自然，时尚，充满个性的皮草来演绎突显不同的个性气质。</em>\n                        </li>\n                        <li>\n                            <i></i>\n                            <span>企业定位</span>\n                            <em>25岁以上成熟自信，独立，了解时尚，注重品味，不盲目跟从的时尚人士，白领阶层，全方位路线，多元化款式。</em>\n                        </li>\n                    </ul>', '1', '', '', 'zh-cn', null);
INSERT INTO `jkd_page` VALUES ('51', 'pplx', '0', '品牌路线', '\n<div class=\"btm_b_p2\">\n	BRAND LINE\n</div>\n<div class=\"btm_b_p3\">\n	<i></i><span>品牌路线</span>\n</div>\n<div class=\"btm_b_p4\">\n	摆脱束膊，追求自由。\n</div>\n<div class=\"btm_b_p5\">\n	设计灵感：自然轻松而又帅气。\n</div>\n<div class=\"btm_b_p6\">\n	Bety Magi（蓓特蔓）表现出来是一种个性而摩登的生活态度\n</div>\n<div class=\"btm_b_p7\">\n	BETY MAGI MANIFESTED IS A PERSONALIZED AND MODERN ATTITUDE TO LIFE\n</div>\n<div class=\"btm_b_p8\">\n	2015年8月全面推出Bety Magi蓓特蔓15秋冬系列皮草皮衣新品。\n</div>\n<div class=\"btm_b_p9\">\n	皮草系列：以羊毛皮，（獭）兔毛皮，貉子，狐狸，水貂为主的皮草系列女装和男装。\n                皮衣系列：以羊皮光面皮为主，帅气的朋克风机车服不再是摇滚男孩女孩的专利，走向街头的任何人，随时可以感受机车服带给你的自由和时尚，低调内敛的你，也可以轻松驾驭。\n</div>', '1', '', '', 'zh-cn', null);
INSERT INTO `jkd_page` VALUES ('52', 'ppdl', '0', '品牌代理', ' <p><em>蓓特蔓</em>本着长远发展的大局，希望和代理商共同发展，选择我们，我们会给您一定的支持，但是同时也请本着对企业和个人负责的态度来面对和持续我们的合作。</p>', '1', '', '', 'zh-cn', null);
INSERT INTO `jkd_page` VALUES ('54', 'dllc', '0', '代理流程', '<p>1.	通过网站和或电话咨询了解BETY MAGI（蓓特蔓）</p>\n                        <p>2.	<em>代理商</em>填写相关资料</p>\n                        <p>3.	代理商<em>资格审核</em></p>\n                        <p>4.	达成协议，签订合同</p>\n                        <p>5.	BETY MAGI（蓓特蔓）根据不同<em>区域协助代理商</em>选款式</p>\n                        <p>6.	代理商选定款式和数量，并<em>交付订金</em></p>\n                        <p>7.	<em>BETY MAGI（蓓特蔓）</em>完善的后续支持和操作。</p>', '1', '', '', 'zh-cn', null);

-- ----------------------------
-- Table structure for `jkd_product`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_product`;
CREATE TABLE `jkd_product` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cid` smallint(3) DEFAULT NULL COMMENT '所在分类',
  `sid` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '产品标题',
  `season` varchar(200) DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `material` varchar(200) DEFAULT NULL COMMENT '材质',
  `psize` varchar(32) DEFAULT NULL COMMENT '尺码',
  `pcolor` varchar(200) DEFAULT NULL,
  `image_id` varchar(255) NOT NULL COMMENT '图片',
  `keywords` varchar(50) DEFAULT NULL COMMENT '产品关键字',
  `description` mediumtext COMMENT '产品描述',
  `status` tinyint(1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `summary` varchar(255) DEFAULT NULL COMMENT '产品摘要',
  `published` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  `content` text,
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  `aid` smallint(3) DEFAULT NULL COMMENT '发布者UID',
  `click` int(11) NOT NULL DEFAULT '0',
  `is_new` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_recommend` int(1) NOT NULL DEFAULT '0',
  `wap_display` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of jkd_product
-- ----------------------------
INSERT INTO `jkd_product` VALUES ('56', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '2', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('55', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\n</div>', 'zh-cn', '1', '2', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('57', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '3', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('58', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\"> <img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" /> </div>', 'zh-cn', '1', '4', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('59', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\"> <img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" /> </div>', 'zh-cn', '1', '1', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('60', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '2', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('61', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '57', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('62', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '5', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('63', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '3', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('64', '74', '89', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '3', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('65', '74', '88', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '1', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('66', '74', '88', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '1', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('67', '74', '88', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '1', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('68', '74', '88', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '2', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('69', '74', '88', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '2', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('70', '74', '88', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '3', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('71', '74', '88', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '2', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('72', '68', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '341,342', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438931154', '1441939241', '<div style=\"text-align:center;\">\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" /> \n</div>', 'zh-cn', '1', '1', '1', '1', '0');
INSERT INTO `jkd_product` VALUES ('73', '61', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '338,339,340', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438931976', '1441939004', '<div style=\"text-align:center;\">\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" /> \n</div>', 'zh-cn', '1', '22', '0', '1', '0');
INSERT INTO `jkd_product` VALUES ('74', '74', '90', 'BETYMAGI秋冬2015新款外套皮衣女短款修身韩版机车pu小皮衣女夹克', '2015秋冬', '1365.00', '羊皮', 'S、M、L、XL、2XL', '黑色、白色', '221,222', 'BETYMAGI、蓓特蔓', '', '1', 'https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-11446103982.2.DDHKRE&id=520845945946', '', '1438916461', '1438916556', '<div style=\"text-align:center;\">\r\n	<img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_90752.jpg\" alt=\"\" /><img src=\"/yaheng/Public/kindeditor/php/../../../Uploads/image/product/20150807/20150807110211_46996.jpg\" alt=\"\" />\r\n</div>', 'zh-cn', '1', '44', '1', '1', '0');

-- ----------------------------
-- Table structure for `jkd_role`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_role`;
CREATE TABLE `jkd_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='权限角色表';

-- ----------------------------
-- Records of jkd_role
-- ----------------------------
INSERT INTO `jkd_role` VALUES ('1', '超级管理员', '0', '1', '系统内置超级管理员组，不受权限分配账号限制');
INSERT INTO `jkd_role` VALUES ('2', '管理员', '1', '1', '拥有系统仅此于超级管理员的权限');
INSERT INTO `jkd_role` VALUES ('3', '领导', '1', '1', '拥有所有操作的读权限，无增加、删除、修改的权限');
INSERT INTO `jkd_role` VALUES ('4', '测试组', '1', '1', '测试');

-- ----------------------------
-- Table structure for `jkd_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_role_user`;
CREATE TABLE `jkd_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of jkd_role_user
-- ----------------------------
INSERT INTO `jkd_role_user` VALUES ('3', '4');
INSERT INTO `jkd_role_user` VALUES ('1', '5');

-- ----------------------------
-- Table structure for `jkd_tag`
-- ----------------------------
DROP TABLE IF EXISTS `jkd_tag`;
CREATE TABLE `jkd_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `unique_id` char(20) NOT NULL,
  `content` text NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkd_tag
-- ----------------------------
INSERT INTO `jkd_tag` VALUES ('30', '课程设置', 'kcsz', '婴儿启蒙又称“全脑开发课程”。经过权威的专家和全国成千上百参加课程的宝宝亲身验证，是一套符合0-18个月Baby在成长过程中', 'zh-cn');
INSERT INTO `jkd_tag` VALUES ('31', '机构背景', 'jgbj', '婴儿启蒙又称“全脑开发课程”。经过权威的专家和全国成千上百参加课程的宝宝亲身验证，是一套符合0-18个月Baby在成中', 'zh-cn');
