# -----------------------------------------------------------
# PHP-Amateur database backup files
# Blog: http://blog.51edm.org
# Type: 系统自动备份
# Description:当前SQL文件包含了表：jkd_access、jkd_ad、jkd_admin、jkd_case、jkd_category、jkd_company、jkd_field、jkd_images、jkd_input、jkd_link、jkd_member、jkd_message、jkd_model、jkd_nav、jkd_news、jkd_node、jkd_page、jkd_product、jkd_role、jkd_role_user、jkd_tag的结构信息，表：jkd_access、jkd_ad、jkd_admin、jkd_case、jkd_category、jkd_company、jkd_field、jkd_images、jkd_input、jkd_link、jkd_member、jkd_message、jkd_model、jkd_nav、jkd_news、jkd_node、jkd_page、jkd_product、jkd_role、jkd_role_user、jkd_tag的数据
# Time: 2015-04-01 07:19:11
# -----------------------------------------------------------
# 当前SQL卷标：#1
# -----------------------------------------------------------


# 数据库表：jkd_access 结构信息
DROP TABLE IF EXISTS `jkd_access`;
CREATE TABLE `jkd_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限分配表' ;

# 数据库表：jkd_ad 结构信息
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_admin 结构信息
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表' ;

# 数据库表：jkd_case 结构信息
DROP TABLE IF EXISTS `jkd_case`;
CREATE TABLE `jkd_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '案例标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_category 结构信息
DROP TABLE IF EXISTS `jkd_category`;
CREATE TABLE `jkd_category` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `pid` int(5) DEFAULT NULL COMMENT 'parentCategory上级分类',
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `type` char(2) NOT NULL DEFAULT 'n',
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻分类表' ;

# 数据库表：jkd_company 结构信息
DROP TABLE IF EXISTS `jkd_company`;
CREATE TABLE `jkd_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  `c_name` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `c_tel` varchar(50) DEFAULT NULL COMMENT '客服热线',
  `c_address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `c_qq` varchar(50) DEFAULT NULL COMMENT '在线QQ客服',
  `c_tag` varchar(50) DEFAULT NULL COMMENT '标签标识',
  `area` varchar(50) DEFAULT NULL COMMENT '地区',
  `c_url` varchar(255) DEFAULT NULL COMMENT '公司网址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_c_name` (`c_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_field 结构信息
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='数据模型字段' ;

# 数据库表：jkd_images 结构信息
DROP TABLE IF EXISTS `jkd_images`;
CREATE TABLE `jkd_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(20) NOT NULL,
  `savename` varchar(100) NOT NULL,
  `savepath` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_input 结构信息
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字段表单域信息' ;

# 数据库表：jkd_link 结构信息
DROP TABLE IF EXISTS `jkd_link`;
CREATE TABLE `jkd_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `display` int(1) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `target` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_member 结构信息
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
) ENGINE=MyISAM AUTO_INCREMENT=351 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站前台会员表' ;

# 数据库表：jkd_message 结构信息
DROP TABLE IF EXISTS `jkd_message`;
CREATE TABLE `jkd_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(32) NOT NULL,
  `moblie` char(15) NOT NULL,
  `display` int(1) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_model 结构信息
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='数据模型信息' ;

# 数据库表：jkd_nav 结构信息
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_news 结构信息
DROP TABLE IF EXISTS `jkd_news`;
CREATE TABLE `jkd_news` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cid` smallint(3) DEFAULT NULL COMMENT '所在分类',
  `title` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `keywords` varchar(50) DEFAULT NULL COMMENT '文章关键字',
  `description` mediumtext COMMENT '文章描述',
  `status` tinyint(1) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL COMMENT '文章摘要',
  `published` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  `content` text,
  `click` int(11) NOT NULL DEFAULT '0',
  `aid` smallint(3) DEFAULT NULL COMMENT '发布者UID',
  `is_recommend` int(1) NOT NULL DEFAULT '0',
  `image_id` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='新闻表' ;

# 数据库表：jkd_node 结构信息
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
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='权限节点表' ;

# 数据库表：jkd_page 结构信息
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_product 结构信息
DROP TABLE IF EXISTS `jkd_product`;
CREATE TABLE `jkd_product` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cid` smallint(3) DEFAULT NULL COMMENT '所在分类',
  `title` varchar(200) DEFAULT NULL COMMENT '产品标题',
  `price` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `psize` varchar(32) NOT NULL,
  `image_id` varchar(255) NOT NULL COMMENT '图片',
  `keywords` varchar(50) DEFAULT NULL COMMENT '产品关键字',
  `description` mediumtext COMMENT '产品描述',
  `status` tinyint(1) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL COMMENT '产品摘要',
  `published` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  `content` text,
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  `aid` smallint(3) DEFAULT NULL COMMENT '发布者UID',
  `click` int(11) NOT NULL DEFAULT '0',
  `is_recommend` int(1) NOT NULL DEFAULT '0',
  `wap_display` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='产品表' ;

# 数据库表：jkd_role 结构信息
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='权限角色表' ;

# 数据库表：jkd_role_user 结构信息
DROP TABLE IF EXISTS `jkd_role_user`;
CREATE TABLE `jkd_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色表' ;

# 数据库表：jkd_tag 结构信息
DROP TABLE IF EXISTS `jkd_tag`;
CREATE TABLE `jkd_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `unique_id` char(20) NOT NULL,
  `content` text NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ;



# 数据库表：jkd_access 数据信息
INSERT INTO `jkd_access` VALUES ('2','8','3','14','');
INSERT INTO `jkd_access` VALUES ('2','14','2','1','');
INSERT INTO `jkd_access` VALUES ('2','10','3','4','');
INSERT INTO `jkd_access` VALUES ('2','4','2','1','');
INSERT INTO `jkd_access` VALUES ('2','7','3','3','');
INSERT INTO `jkd_access` VALUES ('2','3','2','1','');
INSERT INTO `jkd_access` VALUES ('2','6','3','2','');
INSERT INTO `jkd_access` VALUES ('2','5','3','2','');
INSERT INTO `jkd_access` VALUES ('2','2','2','1','');
INSERT INTO `jkd_access` VALUES ('2','1','1','0','');
INSERT INTO `jkd_access` VALUES ('3','14','2','1','');
INSERT INTO `jkd_access` VALUES ('3','13','3','4','');
INSERT INTO `jkd_access` VALUES ('3','12','3','4','');
INSERT INTO `jkd_access` VALUES ('3','11','3','4','');
INSERT INTO `jkd_access` VALUES ('3','10','3','4','');
INSERT INTO `jkd_access` VALUES ('3','4','2','1','');
INSERT INTO `jkd_access` VALUES ('3','9','3','3','');
INSERT INTO `jkd_access` VALUES ('3','8','3','3','');
INSERT INTO `jkd_access` VALUES ('3','7','3','3','');
INSERT INTO `jkd_access` VALUES ('3','3','2','1','');
INSERT INTO `jkd_access` VALUES ('3','6','3','2','');
INSERT INTO `jkd_access` VALUES ('3','5','3','2','');
INSERT INTO `jkd_access` VALUES ('3','2','2','1','');
INSERT INTO `jkd_access` VALUES ('3','1','1','0','');
INSERT INTO `jkd_access` VALUES ('4','7','3','3','');
INSERT INTO `jkd_access` VALUES ('4','3','2','1','');
INSERT INTO `jkd_access` VALUES ('4','6','3','2','');
INSERT INTO `jkd_access` VALUES ('4','5','3','2','');
INSERT INTO `jkd_access` VALUES ('4','2','2','1','');
INSERT INTO `jkd_access` VALUES ('4','1','1','0','');
INSERT INTO `jkd_access` VALUES ('2','9','3','14','');
INSERT INTO `jkd_access` VALUES ('2','15','3','14','');
INSERT INTO `jkd_access` VALUES ('2','16','3','14','');
INSERT INTO `jkd_access` VALUES ('2','17','3','14','');
INSERT INTO `jkd_access` VALUES ('2','18','3','14','');
INSERT INTO `jkd_access` VALUES ('2','19','3','14','');
INSERT INTO `jkd_access` VALUES ('2','20','3','14','');
INSERT INTO `jkd_access` VALUES ('2','21','3','14','');
INSERT INTO `jkd_access` VALUES ('2','22','3','14','');
INSERT INTO `jkd_access` VALUES ('2','23','3','14','');
INSERT INTO `jkd_access` VALUES ('2','24','3','14','');
INSERT INTO `jkd_access` VALUES ('2','25','3','14','');
INSERT INTO `jkd_access` VALUES ('2','26','2','1','');
INSERT INTO `jkd_access` VALUES ('2','27','3','26','');
INSERT INTO `jkd_access` VALUES ('2','28','3','26','');
INSERT INTO `jkd_access` VALUES ('2','29','3','26','');
INSERT INTO `jkd_access` VALUES ('2','30','3','26','');
INSERT INTO `jkd_access` VALUES ('2','31','3','26','');


# 数据库表：jkd_ad 数据信息
INSERT INTO `jkd_ad` VALUES ('23','首页1','#','5517511a2b641.png','index','10','zh-cn');
INSERT INTO `jkd_ad` VALUES ('24','首页2','#','551751231d76f.png','index','9','zh-cn');
INSERT INTO `jkd_ad` VALUES ('25','首页3','#','5517512b9d625.png','index','8','zh-cn');


# 数据库表：jkd_admin 数据信息
INSERT INTO `jkd_admin` VALUES ('1','超级管理员','admin@qq.com','b3a14e5d4d69f57700561f48eb717504','1','我是超级管理员 哈哈~~','','1427546072');


# 数据库表：jkd_case 数据信息


# 数据库表：jkd_category 数据信息
INSERT INTO `jkd_category` VALUES ('1','0','信托计划','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('2','1','行业新闻','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('4','1','信托渠道','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('5','1','行业研究','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('3','1','机构动态','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('52','0','分类1','p','zh-cn');
INSERT INTO `jkd_category` VALUES ('55','0','分类2','p','zh-cn');
INSERT INTO `jkd_category` VALUES ('54','53','666666666','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('56','0','分类3','p','zh-cn');
INSERT INTO `jkd_category` VALUES ('57','0','学员案例','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('58','0','九口袋资讯','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('59','0','课程试听','n','zh-cn');


# 数据库表：jkd_company 数据信息
INSERT INTO `jkd_company` VALUES ('1','1427595007','1427595007','九口袋-成都分公司','400-099-2629','成都高新区天府大道中段吉泰路88号香年广场T3 1208室','548788','cd','成都','http://cd.9koudai.net');
INSERT INTO `jkd_company` VALUES ('2','1427595088','1427595088','九口袋-杭州分公司','400-099-2629','杭州市江干区秋涛北路373号6号创意园2号楼3楼','88785848','hz','杭州','http://www.hzjkd.com');
INSERT INTO `jkd_company` VALUES ('3','1427595126','1427595126','九口袋-浦东分公司','400-993-9529','上海市浦东区桃林路18号环球广场A座2701室','2578656','pd','浦东','');
INSERT INTO `jkd_company` VALUES ('4','1427595248','1427595886','九口袋-嘉定分公司','400-099-2629','上海市嘉定区环城路2222号嘉乐园大厦11楼','1234567','jd','嘉定','http://www.9koudai.org.cn');


# 数据库表：jkd_field 数据信息
INSERT INTO `jkd_field` VALUES ('25','4','id','表主键','INT','','','0','1','1','1','1','','','both','0','','','1427546953','1427546953');
INSERT INTO `jkd_field` VALUES ('26','4','created_at','创建时间','INT','','','0','0','1','1','1','','time','insert','0','','','1427546953','1427546953');
INSERT INTO `jkd_field` VALUES ('27','4','updated_at','更新时间','INT','','','0','0','1','1','1','','time','both','0','','','1427546953','1427546953');
INSERT INTO `jkd_field` VALUES ('28','4','title','案例标题','VARCHAR','255','','1','1','0','0','1','','','both','0','','','1427547275','1427547275');
INSERT INTO `jkd_field` VALUES ('29','5','id','表主键','INT','','','0','1','1','1','1','','','both','0','','','1427594509','1427594509');
INSERT INTO `jkd_field` VALUES ('30','5','created_at','创建时间','INT','','','0','0','1','1','1','','time','insert','0','','','1427594509','1427594509');
INSERT INTO `jkd_field` VALUES ('31','5','updated_at','更新时间','INT','','','0','0','1','1','1','','time','both','0','','','1427594509','1427594509');
INSERT INTO `jkd_field` VALUES ('32','5','c_name','公司名称','VARCHAR','50','','1','1','0','0','1','','','both','0','','','1427594605','1427594605');
INSERT INTO `jkd_field` VALUES ('33','5','c_tel','客服热线','VARCHAR','50','','0','0','0','0','1','','','both','0','','','1427594649','1427594649');
INSERT INTO `jkd_field` VALUES ('34','5','c_address','公司地址','VARCHAR','255','','0','0','0','0','1','','','both','0','','','1427594702','1427594702');
INSERT INTO `jkd_field` VALUES ('35','5','c_qq','在线QQ客服','VARCHAR','50','','0','0','0','0','1','','','both','0','','','1427594730','1427594730');
INSERT INTO `jkd_field` VALUES ('36','5','c_tag','标签标识','VARCHAR','50','','0','0','0','0','1','','','both','0','','','1427594788','1427594788');
INSERT INTO `jkd_field` VALUES ('37','5','area','地区','VARCHAR','50','','0','0','0','0','1','','','both','0','','','1427594811','1427594811');
INSERT INTO `jkd_field` VALUES ('38','5','c_url','公司网址','VARCHAR','255','','0','0','0','0','1','','','both','0','','','1427594838','1427594838');


# 数据库表：jkd_images 数据信息
INSERT INTO `jkd_images` VALUES ('40','news','20140310073926_27245.jpg','/newconist/Uploads/image/product/20140310/20140310073926_27245.jpg','1394437811');
INSERT INTO `jkd_images` VALUES ('39','product','20140310074050_66596.jpg','/newconist/Uploads/image/product/20140310/20140310074050_66596.jpg','1394437252');
INSERT INTO `jkd_images` VALUES ('34','product','20140228021215_98055.jpg','/newconist/Uploads/image/news/20140228/20140228021215_98055.jpg','1394176319');
INSERT INTO `jkd_images` VALUES ('37','product','20140310073926_27245.jpg','/newconist/Uploads/image/product/20140310/20140310073926_27245.jpg','1394437177');
INSERT INTO `jkd_images` VALUES ('33','news','20140228021215_98055.jpg','/newconist/Uploads/image/news/20140228/20140228021215_98055.jpg','1394159259');
INSERT INTO `jkd_images` VALUES ('42','product','20140310074033_57603.jpg','/newconist/Uploads/image/product/20140310/20140310074033_57603.jpg','1394441436');
INSERT INTO `jkd_images` VALUES ('51','product','20140310073926_27245.jpg','/newconist/Uploads/image/product/20140310/20140310073926_27245.jpg','1395295064');
INSERT INTO `jkd_images` VALUES ('50','product','20140310074033_57603.jpg','/newconist/Uploads/image/product/20140310/20140310074033_57603.jpg','1395295064');
INSERT INTO `jkd_images` VALUES ('49','product','20140310074050_66596.jpg','/newconist/Uploads/image/product/20140310/20140310074050_66596.jpg','1395295064');
INSERT INTO `jkd_images` VALUES ('52','news','20150328224509_20327.jpg','/9kd/Uploads/image/news/20150328/20150328224509_20327.jpg','1427554974');
INSERT INTO `jkd_images` VALUES ('53','news','20150329092908_72828.jpg','/9kd/Uploads/image/news/20150329/20150329092908_72828.jpg','1427592601');
INSERT INTO `jkd_images` VALUES ('54','news','14194158728313.jpg','http://www.9koudai.org.cn/Public/ueditor/php/upload/20141224/14194158728313.jpg','1427592794');
INSERT INTO `jkd_images` VALUES ('55','news','14194155543655.jpg','http://www.9koudai.org.cn/Public/ueditor/php/upload/20141224/14194155543655.jpg','1427592891');
INSERT INTO `jkd_images` VALUES ('56','news','1419321588555.jpg','http://www.9koudai.org.cn/Public/ueditor/php/upload/20141223/1419321588555.jpg','1427592948');
INSERT INTO `jkd_images` VALUES ('57','news','20150329095215_10395.jpg','/9kd/Uploads/image/news/20150329/20150329095215_10395.jpg','1427593953');
INSERT INTO `jkd_images` VALUES ('58','news','54449131b0175.jpg','http://www.9koudai.org.cn/Uploads/pictures/54449131b0175.jpg','1427594064');
INSERT INTO `jkd_images` VALUES ('59','news','54448caec5e90.jpg','http://www.9koudai.org.cn/Uploads/pictures/54448caec5e90.jpg','1427594123');


# 数据库表：jkd_input 数据信息
INSERT INTO `jkd_input` VALUES ('6','28','1','案例标题','','text','20','0','','','all','<input type='text' class='input' size='20' name='case[title]' value='' />','1','1427547275','1427547275');
INSERT INTO `jkd_input` VALUES ('7','32','1','公司名称','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_name]' value='' />','1','1427594605','1427594605');
INSERT INTO `jkd_input` VALUES ('8','33','1','客服热线','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_tel]' value='' />','1','1427594649','1427594649');
INSERT INTO `jkd_input` VALUES ('9','34','1','公司地址','','textarea','68','4','','','all','<textarea name='company[c_address]' class='' rows='4' cols='68' ></textarea>','1','1427594703','1427594703');
INSERT INTO `jkd_input` VALUES ('10','35','1','在线QQ客服','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_qq]' value='' />','1','1427594731','1427594731');
INSERT INTO `jkd_input` VALUES ('11','36','1','标签标识','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_tag]' value='' />','1','1427594789','1427594789');
INSERT INTO `jkd_input` VALUES ('12','37','1','地区','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[area]' value='' />','1','1427594811','1427594811');
INSERT INTO `jkd_input` VALUES ('13','38','1','公司网址','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_url]' value='' />','1','1427594838','1427594838');


# 数据库表：jkd_link 数据信息


# 数据库表：jkd_member 数据信息


# 数据库表：jkd_message 数据信息


# 数据库表：jkd_model 数据信息


# 数据库表：jkd_nav 数据信息
INSERT INTO `jkd_nav` VALUES ('52','link','加速工厂','0','0','top','http://jsgc.9koudai.net','zh-cn','6','1');
INSERT INTO `jkd_nav` VALUES ('53','link','课程介绍','0','0','top','','zh-cn','5','0');
INSERT INTO `jkd_nav` VALUES ('54','link','服务介绍','0','0','top','','zh-cn','4','0');
INSERT INTO `jkd_nav` VALUES ('55','news','学员案例','0','0','top','/9kd/index.php/news/index','zh-cn','3','0');
INSERT INTO `jkd_nav` VALUES ('56','news','课程试听','0','0','top','/9kd/index.php/news/index','zh-cn','2','0');
INSERT INTO `jkd_nav` VALUES ('57','link','关于九口袋','0','0','top','','zh-cn','1','0');
INSERT INTO `jkd_nav` VALUES ('58','news','九口袋资讯','57','0','top','/9kd/index.php/news/index','zh-cn','3','0');
INSERT INTO `jkd_nav` VALUES ('59','link','九口袋介绍','57','0','top','','zh-cn','2','0');
INSERT INTO `jkd_nav` VALUES ('60','link','联系九口袋','57','0','top','','zh-cn','1','0');


# 数据库表：jkd_news 数据信息
INSERT INTO `jkd_news` VALUES ('11','1','俄方风高放火好好规划','俄方风高放火好好规划','俄方风高放火好好规划','1','俄方风高放火好好规划','1394437584','1394437811','俄方风高放火好好规划','5','1','1','40','zh-cn');
INSERT INTO `jkd_news` VALUES ('12','1','复反反复复反反复复吩咐个','他尔特','有人提议','1','有人提议','1394437604','1394437806','牙痛溶液','2','1','1','0','zh-cn');
INSERT INTO `jkd_news` VALUES ('13','1','规范化规范化广泛用途用途用途用途规范化飞过海集结','牙痛溶液','有人体育','1','膮','1394437621','1394438741','月try突然','3','1','1','0','zh-cn');
INSERT INTO `jkd_news` VALUES ('14','1','如果对符合购房计划将会根据','激光焊接','结核杆菌','1','几个号','1394438751','0','几个号','4','1','1','0','zh-cn');
INSERT INTO `jkd_news` VALUES ('15','1','价格具有统一规划集合计划将会','','空军航空','1','','1394438760','0','','3','1','1','0','zh-cn');
INSERT INTO `jkd_news` VALUES ('16','1','会见法国恢复的规划法规和反光镜','gfdg','激光焊接有一天梵蒂冈梵蒂冈梵蒂冈奋斗','1','后果将会根据可更换','1394438775','1395218721','<img src="/newconist/Uploads/image/product/20140303/20140303081406_87297.jpg" alt="" />根据可更换','28','1','1','0','zh-cn');
INSERT INTO `jkd_news` VALUES ('19','57','黑田润滑油','黑田润滑油','黑田润滑油为黑田新能源科技旗下润滑油品牌，创始人林碧华自2001年创立品牌以来，一直专注于产品质量和产品创新','1','黑田润滑油为黑田新能源科技旗下润滑油品牌，创始人林碧华自2001年创立品牌以来，一直专注于产品质量和产品创新','1427553911','1427554974','<span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">黑田润滑油为黑田新能源科技旗下润滑油品牌，创始人林碧华自</span><span style="color:#666666;font-size:14px;line-height:21px;font-family:'Times New Roman';background-color:#FEFEFE;">2001</span><span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">年创立品牌以来，一直专注于产品质量和产品创新，而忽视了营销方法的重要性，他认为只要拥有好的产品就一定可以赢得消费者的青睐。然而，由于市场的激烈竞争以及销售渠道的限制，几年来黑田润滑油的销量并不是很好，企业发展遭遇无法克服的瓶颈。后来，为拓宽销售渠道，改变公司现状，林总带着尝试的心理走进九口袋全网营销课堂，在上完九口袋大课后，林总终于明白了“酒香也怕巷子深”的道理，于是迅速着手“黑田润滑油”的全网营销，在九口袋团队的帮助下，林总建立了自己的网站，并通过互联网各个渠道开展了品牌布局、产品推广，口碑营销，在一系列的布局之后，黑田润滑油的品牌知名度、认可度和美誉度很快得到提高，客户订单量在第一个月便提高了</span><span style="color:#666666;font-size:14px;line-height:21px;font-family:'Times New Roman';background-color:#FEFEFE;">30%</span><span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">，线上成交率达到</span><span style="color:#666666;font-size:14px;line-height:21px;font-family:'Times New Roman';background-color:#FEFEFE;">90%</span><span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">，公司月营业额奇迹般的突破</span><span style="color:#666666;font-size:14px;line-height:21px;font-family:'Times New Roman';background-color:#FEFEFE;">300</span><span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">万，公司整体经济效益呈现前所未有的逆转趋势。黑田通过全网营销的正确策略，拓展了产品销售渠道，促进了线上线下整体销量，解决了企业发展长期无法突破的发展瓶颈。</span>','4','1','1','52','zh-cn');
INSERT INTO `jkd_news` VALUES ('20','58','九口袋剖析全网营销的顺势之道','网络营销,全网营销','从早年的网络营销到现在主流的全网营销（九口袋全网营销），网络营销市场完成了又一轮升级。','1','从早年的网络营销到现在主流的全网营销（九口袋全网营销），网络营销市场完成了又一轮升级。而为什么全网营销会成为现在网络营销市场的主流营销形态呢？九口袋全网营销分析师道出了其中原因：做事情要顺势，移动互联网就是势，微信就是势，企业都不想错过势。九口袋全网营销分析师指出，微信作为移动互联网重要的入口，越来越多的企业在开展微信营销，建公众账号，微网站，但现在做成功的不多，大多都是只当做了营销工具，发帖工具…','1427592593','1427592601','<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">从早年的网络营销到现在主流的全网营销（<a href="http://www.9koudai.org.cn/service/index.html" target="_self">九口袋全网营销</a>），网络营销市场完成了又一轮升级。</span> 
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">而为什么全网营销会成为现在网络营销市场的主流营销形态呢？九口袋全网营销分析师道出了其中原因：做事情要顺势，移动互联网就是势，微信就是势，企业都不想错过势。<strong><span style="color:#E36C09;"><span>九口袋</span>全网营销</span></strong>分析师指出，微信作为移动互联网重要的入口，越来越多的企业在开展微信营销，建公众账号，微网站，但现在做成功的不多，大多都是只当做了营销工具，发帖工具，展示工具，而微信给自己定义是沟通工具。因此，微信营销是一个慢工出细活的过程，是培养客户、与客户沟通的工具。企业应该把微信等新媒体视为一种“长线投资”，将更多的精力放在如何利用新媒体搭建和客户交流的平台，由此获得更多的客户想法，用以改进产品或者增强企业与客户的粘性。以便形成一种共赢的模式。</span> 
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;text-align:center;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';"><img src="http://www.9koudai.org.cn/Public/ueditor/php/upload/20141224/14194161283509.jpg" title="张启明" /></span> 
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;text-align:center;background-color:#FEFEFE;">
	<span>张启明在九口袋全网营销系统总裁峰会现场演讲</span> 
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<strong><span style="font-family:微软雅黑, 'Microsoft YaHei';color:#E36C09;">九口袋</span></strong><span style="font-family:微软雅黑, 'Microsoft YaHei';">董事长，国内<a href="http://www.9koudai.org.cn/service/index.html" target="_self">全网营销</a>实战专家张启明曾在九口袋全网营销总裁峰会多次表示，在互联网飞速发展的今天，很多传统行业都被互联网冲击，在冲击下垂死挣扎。其实，在这里企业家只要做一件事就结果就截然不同，那就是借势而为，用全网营销的方式转型电商，完成企业商业模式的新一轮升级！</span> 
</p>','1','1','1','53','zh-cn');
INSERT INTO `jkd_news` VALUES ('21','58','九口袋：马云放话了！微信是一把烂牌？','九口袋,张启明','近日，马云在接受福布斯采访中透露，在今年春节和微信PK时，阿里内部慌乱了一番','1','九口袋小编：近日，马云在接受福布斯采访中透露，在今年春节和微信PK时，阿里内部慌乱了一番，社会各大媒体人针对此事，开始预测，马云要被“炸”了，但在采访当中马云依然是高逼格的说到：“我们没有走错路线。只是外面发生了变化，就象今天(阿里上市)一样，不是我们变了，而是外面对我们的看法发生了变化。我们还是应该走我们自己的路。只是我们没有变，当外面开始变化时，腾讯开始下臭棋了。张启明解析微信的构成腾讯收购的&hellip;','1427592794','','<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<strong><span style="font-family:微软雅黑, 'Microsoft YaHei';color:#E36C09;">九口袋</span></strong><span style="font-family:微软雅黑, 'Microsoft YaHei';"><span>小编：近日，马云在接受福布斯采访中透露，在今年春节和微信</span>PK<span>时，阿里内部慌乱了一番，社会各大媒体人针对此事，开始预测，马云要被“炸”了，但在采访当中马云依然是高逼格的说到：“我们没有走错路线。只是外面发生了变化，就象今天</span>(<span>阿里上市</span>)<span>一样，不是我们变了，而是外面对我们的看法发生了变化。我们还是应该走我们自己的路。只是我们没有变，当外面开始变化时，腾讯开始下臭棋了。</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;text-align:center;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';"><img src="http://www.9koudai.org.cn/Public/ueditor/php/upload/20141224/14194158728313.jpg" title="张启明" /></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;text-align:center;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">张启明解析微信的构成</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';"><span>腾讯收购的所有的案子，其实老百性都看得懂，这就错了。战略就像买股票一样，如果老太太都开始买股票了，一定有问题，如果老太太告诉你该买这个，还是该买那个，那就出问题了。凭什么我们过去的</span>15<span>年做的事人们都明白，而我们的收购就不明白了</span>?<span>问题是他们做了微信之后，所有的收购和兼并，我们都知道他们想干什么，这就错了。也许我们应该理解，老百姓不应该理解。对方手里那么好的一手牌，当然我们手里的牌也不错。其实今天的格局是四五年前已经定了的，如果四五年前有过选择，</span>APP<span>出来、无线出来、云计算出来，我押什么，我押云计算。你微信出来又怎么样，我还押云计算，只是微信出来的时候，我们紧张了下，然后我们再调整，这就是我们要走的路，没什么紧张的了。我们过了春节两个星期就</span>(<span>调整</span>)<span>回来了，其实腾讯内部也可以感觉出来，微信不是万能的，阿里也没有那么烂。</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">不管马云如何去说微信这把牌最终是否一把好牌，<span style="color:#E36C09;"><strong>九口袋</strong></span><a href="http://www.9koudai.org.cn/service/index.html" target="_self">全网营销</a>分析师指出，从现在来看，微信目前还是一把好牌，这从去年马云强制推来往回力无天就已经决定了。</span>
</p>','1','1','1','54','zh-cn');
INSERT INTO `jkd_news` VALUES ('22','58','九口袋：那些站在风口上的90后CEO','九口袋,张启明','当下，90后已经慢慢渗透至最前沿的创业大军中，九口袋董事长，国内著名创业导师张启明也曾在全国高等院校多个演讲中表示，90是现在创新的主力军。','1','当下，90后已经慢慢渗透至最前沿的创业大军中，九口袋董事长，国内著名创业导师张启明也曾在全国高等院校多个演讲中表示，90是现在创新的主力军。张启明在上海交通大学作创业演讲很多90后CEO，有个特性，敢做敢为，纵观市场，九口袋小编不难发现，大多数的90后能制作出更符合90后的产品。做产品用户体验做的比较好。比如近日，被黑出翔的超级课程表创始人余佳文，因敢拼，敢闯，不按常理出牌，被称为“90后霸道总裁&hellip;','1427592891','','<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">当下，90后已经慢慢渗透至最前沿的创业大军中，<strong><span style="color:#E36C09;">九口袋</span></strong>董事长，国内著名创业导师<span style="color:#E36C09;"><strong>张启明</strong></span>也曾在全国高等院校多个演讲中表示，90是现在创新的主力军。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;text-align:center;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';"><img src="http://www.9koudai.org.cn/Public/ueditor/php/upload/20141224/14194155543655.jpg" title="张启明" /></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;text-align:center;background-color:#FEFEFE;">
	<span>张启明在上海交通大学作创业演讲</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';"><span>很多</span>90<span>后</span>CEO<span>，有个特性，敢做敢为，纵观市场，<strong><span style="color:#E36C09;">九口袋</span></strong>小编不难发现，大多数的</span>90<span>后能制作出更符合</span>90<span>后的产品。做产品用户体验做的比较好。比如近日，被黑出翔的超级课程表创始人余佳文，因敢拼，敢闯，不按常理出牌，被称为“</span>90<span>后霸道总裁”。他和团研发的超级课程表，用户已经突破千万用户。而之所以被站在舆论的风口上，是因为余佳文在多个大型公开场合，直截了当的说出他管理公司和做产品的方式。</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">在公司管理中，余佳文不走寻常路，其中有一条，更是被人津津乐道，他不给员工开工资，而是让员工自己开，而出此计策，<strong><span style="color:#E36C09;">九口袋</span></strong><a href="http://www.9koudai.org.cn/lesson/index.html" target="_self">全网营销</a>营销案例分析师觉得，在这方面余佳文有着一针见血的“小聪明”。做产品时，他也曾多次表示“让用户一句话理解你非常重要。如果一家公司要用户花功夫去弄明白你的产品有这样、这样、这样的功能。你就会发现消费者一点都不会理解你的产品。”</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';"><span>还有一个是典型的</span>90<span>后</span>CEO<span>，是在</span>12<span>月</span>22<span>日举办的黑马创交会“激辩</span>2014<span>”中，说大叔不懂用户的礼物说创始人温城辉，<span style="color:#E36C09;"><strong>九口袋</strong></span>小编发现他的经历和身上的创业特质和余佳文有几处相似，摆过地摊，被城管追过，开公司破产过两次，敢说真话。他在激辩中直接是维护</span>90<span>后，在产品方面，他也高调直言：我了解到很多</span>90<span>后公司员工都是自己产品的用户，这点大叔们能做到吗</span>?<span>我们每天都会有那种很多突然来访的人，就是那种小女生想跟着你混，说“你们的产品非常好”。我们在推广上只做一件事情，在微博、微信平台上免费获取用户。我们</span>200<span>万真实用户都是通过微博和朋友圈来的。</span></span>
</p>','0','1','1','55','zh-cn');
INSERT INTO `jkd_news` VALUES ('23','58','九口袋：原创的浏览量拼不过搞摘编，原创自媒体咋搞？','九口袋','近日，九口袋小编看到一篇文章，主体探讨微信自媒体原创文字和摘编两种传播悬殊。','1','近日，九口袋小编看到一篇文章，主体探讨微信自媒体原创文字和摘编两种传播悬殊。在当下，我们发现靠自己码字支撑微信公众号会越来越难，除了像吴晓波罗振宇这样的原创大牛，剩下的作者写出来的文字只会被摘编号去掉作者信息抄走。在虎嗅网这样的垂直媒体上码字也更难出头，别看总有读者抱怨文章质量越来越差，其实作者间的竞争是越来越大，错过早期红利的新人比2013年更难写出头。财经作家吴晓波和电商实战专家张启明的微信自&hellip;','1427592948','','<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">近日，<span style="color:#E36C09;"><strong>九口袋</strong></span>小编看到一篇文章，主体探讨微信自媒体原创文字和摘编两种传播悬殊。在当下，我们发现靠自己码字支撑微信公众号会越来越难，除了像吴晓波罗振宇这样的原创大牛，剩下的作者写出来的文字只会被摘编号去掉作者信息抄走。在虎嗅网这样的垂直媒体上码字也更难出头，别看总有读者抱怨文章质量越来越差，其实作者间的竞争是越来越大，错过早期红利的新人比2013年更难写出头。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-align:center;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';"><img src="http://www.9koudai.org.cn/Public/ueditor/php/upload/20141223/1419321588555.jpg" title="张启明微信自媒体" /></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-align:center;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">财经作家吴晓波和电商实战专家张启明的微信自媒体</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">&nbsp; &nbsp; &nbsp; &nbsp;原创自媒体未来会怎样？小编认为原创类自媒体的要靠边际价值才能出头。“边际”是经济学名词，此处借用未必精准，大意是不要看他本身的作用和成本去判断价值，而是通过“少了它会如何”去判断价值。例如，水乃生命之源，如果你有本事垄断沙漠中的水源，当然有资格卖高价，可惜在你我身边卖水的地方太多，重要的水边际价值仍然很低；钻石这样的碳化合物没什么用处，人工还能合成，但有了戴比尔斯集团控制钻石产量并为他安排一个“爱情恒久远”的名声，钻石也卖出了高价。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">&nbsp; &nbsp; &nbsp; &nbsp;一样的道理，原创类自媒体就不要去和摘编号拼浏览量啦，不是不想拼，是真的拼不过。浩浩荡荡的摘编号大军已经极大丰富了信息供给，就像遍地都是卖瓶装水的便利店，原创的水自然很难卖起价格，总之就是和摘编号拼流量会导致边际价值低嘛。那该如何成为边际价值高的钻石呢？看起来一定要控制总量，不能什么都说。而且需要像钻石一样找出点使用价值之外的含义，比如有高层关注、与读者互动多等等，在这个时候打动手握预算的PR似乎比打动读者更重要。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:微软雅黑, 'Microsoft YaHei';">&nbsp; &nbsp; &nbsp; &nbsp;短期内仍然无法指望国内的互联网环境可以尊重版权，摘编号看到需要的内容永远会直接拿去，不把作者信息换掉已经是莫大的恩德。可是从长远看，版权这个东西又无法适应互联网发展，码字的作者必须在控制传播这样低级的手段之外寻找自己的价值，指望靠古老的版权拯救新时代的自媒体完全不现实。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<strong><span style="font-family:微软雅黑, 'Microsoft YaHei';color:#E36C09;">&nbsp; &nbsp; &nbsp; &nbsp;九口袋</span></strong><span style="font-family:微软雅黑, 'Microsoft YaHei';">小编提示：原创作者们请努力寻找离不开自己的边际价值，那个小小的天堂或许在某个细分领域，也或许在某个细分群体。浏览量拼不过摘编号不是什么难以接受的现实，原创终究会体现出自己的价值。</span>
</p>','3','1','1','56','zh-cn');
INSERT INTO `jkd_news` VALUES ('25','57','大师贴膜','刘凤喜','上海追得贸易发展有限公司 董事长  第六届学员','1','刘凤喜&nbsp;&nbsp;&nbsp;上海追得贸易发展有限公司&nbsp;董事长&nbsp;&nbsp;第六届学员上海追得贸易发展有限公司是一家主营汽车贴膜的企业，董事长刘凤喜是九口袋第六届学员。大师贴膜是上海追得贸易发展有限公司于2008年推出的自主品牌，因为定位差异化，专业、标准、规范化发展而受到关注，前期有一定的发展，然而在后期的经营发展中，受限于渠道等因素，招商加盟进度迟缓，到2013&hellip;','1427593953','','<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-weight:bold;font-size:16px;font-family:微软雅黑;">刘凤喜&nbsp;&nbsp;&nbsp;</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-weight:bold;font-size:16px;font-family:微软雅黑;">上海追得贸易发展有限公司&nbsp;董事长&nbsp;&nbsp;第六届学员</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-size:16px;font-family:微软雅黑;">上海追得贸易发展有限公司是一家主营汽车贴膜的企业，董事长刘凤喜是九口袋第六届学员。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-size:16px;font-family:微软雅黑;">大师贴膜是上海追得贸易发展有限公司于2008年推出的自主品牌，因为定位差异化，专业、标准、规范化发展而受到关注，前期有一定的发展，然而在后期的经营发展中，受限于渠道等因素，招商加盟进度迟缓，到2013年为止，5年的时间内全国加盟店仅800多家。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-size:16px;font-family:微软雅黑;">在接触九口袋全网营销课程后，追得贸易精确定位品牌发展方向，从互联网布局开始，配之以免费、付费推广，打通线上线下，半年多时间里，激增1000多家加盟店，全国加盟店多达2000多家，全面复制“大师贴膜”经营模式，短时间内快速扩大了品牌影响力！</span>
</p>','0','1','1','57','zh-cn');
INSERT INTO `jkd_news` VALUES ('26','57','诗克恰','诗克恰','九口袋第六届学员','1','锦艺国际贸易有限公司是一家主营3——12岁的儿童系列产品的公司，此前一直致力于对外贸易，对国内市场毫无了解。2013年，周志忠开始转战国内，并创立婴童品牌——诗克恰。作为一个从外贸转内贸的新生品牌，诗克恰在国内毫无知名度，产品月销量极低。创始人周志忠也先后尝试了传统营销方法，然而在跌跌撞撞的探索中，产品月销售额仍然不见起色。2014年1月，周总走进了九口袋第六届《新网络新营销——全网营销大系统》总&hellip;','1427594064','','<p>
	锦艺国际贸易有限公司是一家主营3——12岁的儿童系列产品的公司，此前一直致力于对外贸易，对国内市场毫无了解。2013年，周志忠开始转战国内，并创立婴童品牌——诗克恰。
</p>
<p>
	作为一个从外贸转内贸的新生品牌，诗克恰在国内毫无知名度，产品月销量极低。创始人周志忠也先后尝试了传统营销方法，然而在跌跌撞撞的探索中，产品月销售额仍然不见起色。2014年1月，周总走进了九口袋第六届《新网络新营销——全网营销大系统》总裁培训班的课堂，在听完这次课程之后，周总恍然大悟，意识到自己之前营销方法的弊端，决定一改传统营销模式，加大全网营销投入力度，成立了“诗克恰”商城。
</p>
<p>
	在九口袋的指导下，周总全力为“诗克恰”这一品牌推广造势。在三个月的品牌布局之后，“诗克恰”成功转型，迅速打开国内市场，成为国内知名婴童品牌，诗克恰商城仅在今年六一那天，流量便突破了1200IP，单日成交达到20000余元，这对于传统企业来说是望尘莫及的。不仅如此，诗克恰在一个月内，加盟商家竟多达200多家。目前，天猫也开始运营起来了，下一站，诗克恰的目标是影响最大的民族品牌！
</p>','1','1','1','58','zh-cn');
INSERT INTO `jkd_news` VALUES ('27','57','健步楼梯','健步楼梯','上海徐德楼梯有限公司董事长第七届学员','1','上海徐德楼梯有限公司是一家致力于楼梯设计、生产和销售等综合性服务的家居企业，健步楼梯是公司的主营品牌。在进入九口袋之前，健步楼梯主要依靠回头客的生意，然而，一方面，受线下传统营销的制约，公司产品利润率越来越低；另一方面，线下客户开发难度极大。受这两方面因素的影响，公司盈利越来越不理想，之后，章总也尝试过进行网络推广，然而，因为不懂互联网，所以，花出去的费用如入大海，并没起到什么效果。&nbsp;&&hellip;','1427594123','','<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-size:16px;font-family:微软雅黑;">上海徐德楼梯有限公司是一家致力于楼梯设计、生产和销售等综合性服务的家居企业，健步楼梯是公司的主营品牌。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-size:16px;font-family:微软雅黑;">在进入九口袋之前，健步楼梯主要依靠回头客的生意，然而，一方面，受线下传统营销的制约，公司产品利润率越来越低；另一方面，线下客户开发难度极大。受这两方面因素的影响，公司盈利越来越不理想，之后，章总也尝试过进行网络推广，然而，因为不懂互联网，所以，花出去的费用如入大海，并没起到什么效果。&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-size:16px;font-family:微软雅黑;">2014年4月，章总加入了九口袋第七届全网营销总裁培训班，在对网络营销有了系统性的认识之后，带领团队进驻九口袋加速工厂进行学习，从营销型网站建设到软文推广，再到品牌布局，短短一个月，助力成交的品牌布局完成，客户订单量第一个月提高了30%。之后，营销型网站上线，配合网络精确推广手段，三个月时间里，订单源源不断，生产计划爆满！&nbsp;</span>
</p>','0','1','1','59','zh-cn');


# 数据库表：jkd_node 数据信息
INSERT INTO `jkd_node` VALUES ('1','Admin','后台管理','1','网站后台管理项目','10','0','1');
INSERT INTO `jkd_node` VALUES ('2','Index','管理首页','1','','1','1','2');
INSERT INTO `jkd_node` VALUES ('3','Member','注册会员管理','1','','3','1','2');
INSERT INTO `jkd_node` VALUES ('4','Webinfo','系统管理','1','','4','1','2');
INSERT INTO `jkd_node` VALUES ('5','index','默认页','1','','5','2','3');
INSERT INTO `jkd_node` VALUES ('6','myInfo','我的个人信息','1','','6','2','3');
INSERT INTO `jkd_node` VALUES ('7','index','会员首页','1','','7','3','3');
INSERT INTO `jkd_node` VALUES ('8','index','管理员列表','1','','8','14','3');
INSERT INTO `jkd_node` VALUES ('9','addAdmin','添加管理员','1','','9','14','3');
INSERT INTO `jkd_node` VALUES ('10','index','系统设置首页','1','','10','4','3');
INSERT INTO `jkd_node` VALUES ('11','setEmailConfig','设置系统邮件','1','','12','4','3');
INSERT INTO `jkd_node` VALUES ('12','testEmailConfig','发送测试邮件','1','','0','4','3');
INSERT INTO `jkd_node` VALUES ('13','setSafeConfig','系统安全设置','1','','0','4','3');
INSERT INTO `jkd_node` VALUES ('14','Access','权限管理','1','权限管理，为系统后台管理员设置不同的权限','0','1','2');
INSERT INTO `jkd_node` VALUES ('15','nodeList','查看节点','1','节点列表信息','0','14','3');
INSERT INTO `jkd_node` VALUES ('16','roleList','角色列表查看','1','角色列表查看','0','14','3');
INSERT INTO `jkd_node` VALUES ('17','addRole','添加角色','1','','0','14','3');
INSERT INTO `jkd_node` VALUES ('18','editRole','编辑角色','1','','0','14','3');
INSERT INTO `jkd_node` VALUES ('19','opNodeStatus','便捷开启禁用节点','1','','0','14','3');
INSERT INTO `jkd_node` VALUES ('20','opRoleStatus','便捷开启禁用角色','1','','0','14','3');
INSERT INTO `jkd_node` VALUES ('21','editNode','编辑节点','1','','0','14','3');
INSERT INTO `jkd_node` VALUES ('22','addNode','添加节点','1','','0','14','3');
INSERT INTO `jkd_node` VALUES ('23','addAdmin','添加管理员','1','','0','14','3');
INSERT INTO `jkd_node` VALUES ('24','editAdmin','编辑管理员信息','1','','0','14','3');
INSERT INTO `jkd_node` VALUES ('25','changeRole','权限分配','1','','0','14','3');
INSERT INTO `jkd_node` VALUES ('26','News','资讯管理','1','','0','1','2');
INSERT INTO `jkd_node` VALUES ('27','index','新闻列表','1','','0','26','3');
INSERT INTO `jkd_node` VALUES ('28','category','新闻分类管理','1','','0','26','3');
INSERT INTO `jkd_node` VALUES ('29','add','发布新闻','1','','0','26','3');
INSERT INTO `jkd_node` VALUES ('30','edit','编辑新闻','1','','0','26','3');
INSERT INTO `jkd_node` VALUES ('31','del','删除信息','0','','0','26','3');
INSERT INTO `jkd_node` VALUES ('32','SysData','数据库管理','1','包含数据库备份、还原、打包等','0','1','2');
INSERT INTO `jkd_node` VALUES ('33','index','查看数据库表结构信息','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('34','backup','备份数据库','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('35','restore','查看已备份SQL文件','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('36','restoreData','执行数据库还原操作','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('37','delSqlFiles','删除SQL文件','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('38','sendSql','邮件发送SQL文件','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('39','zipSql','打包SQL文件','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('40','zipList','查看已打包SQL文件','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('41','unzipSqlfile','解压缩ZIP文件','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('42','delZipFiles','删除zip压缩文件','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('43','downFile','下载备份的SQL,ZIP文件','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('44','repair','数据库优化修复','1','','0','32','3');
INSERT INTO `jkd_node` VALUES ('46','Siteinfo','网站功能','1','','0','1','2');
INSERT INTO `jkd_node` VALUES ('47','index','菜单列表','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('48','add_nav','添加/编辑菜单','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('49','adindex','轮播列表','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('50','add_ad','添加/编辑轮播','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('51','page','单页列表','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('52','add_page','添加/编辑单页','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('53','tag_index','标签列表','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('54','add_tag','添加/编辑标签','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('55','create_tag','模版标签生成','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('56','file_index','文件管理','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('57','link_index','友情链接列表','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('58','add_link','添加/编辑友情链接','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('59','message','留言信息列表','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('60','Product','产品管理','1','','0','1','2');
INSERT INTO `jkd_node` VALUES ('61','delpage','删除单页','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('62','delad','删除轮播','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('63','dellink','删除友情链接','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('64','delmessage','删除留言','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('65','deltag','删除标签','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('66','selectCat','文章分类','1','','0','46','3');
INSERT INTO `jkd_node` VALUES ('67','index','产品列表','1','','0','60','3');
INSERT INTO `jkd_node` VALUES ('68','edit','编辑产品','1','','0','60','3');
INSERT INTO `jkd_node` VALUES ('69','add','添加产品','1','','0','60','3');
INSERT INTO `jkd_node` VALUES ('70','category','分类列表','1','','0','60','3');
INSERT INTO `jkd_node` VALUES ('71','del','删除产品','1','','0','60','3');
INSERT INTO `jkd_node` VALUES ('72','changeAttr','快速推荐','1','','0','60','3');
INSERT INTO `jkd_node` VALUES ('73','changeStatus','快速审核','0','','0','60','3');
INSERT INTO `jkd_node` VALUES ('74','changePhoneStatus','手机推荐','1','','0','60','3');
INSERT INTO `jkd_node` VALUES ('75','checkProductTitle','标题检查','1','','0','60','3');
INSERT INTO `jkd_node` VALUES ('76','changeAttr','快速推荐','1','','0','26','3');
INSERT INTO `jkd_node` VALUES ('77','changeStatus','快速审核','1','','0','26','3');
INSERT INTO `jkd_node` VALUES ('78','Models','模型管理','1','','0','1','2');
INSERT INTO `jkd_node` VALUES ('79','index','模型列表','1','','0','78','3');
INSERT INTO `jkd_node` VALUES ('80','add','添加模型','1','','0','78','3');


# 数据库表：jkd_page 数据信息


# 数据库表：jkd_product 数据信息
INSERT INTO `jkd_product` VALUES ('32','56','添加编辑产品','43.00','543','42','','添加编辑产品','1','添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品','1394437234','1394441436','<span style="&quot;&quot;&quot;\&quot;color:#333333;font-family:Verdana,&quot;&quot;&quot;" geneva,="&quot;&quot;&quot;&quot;&quot;&quot;" sans-serif;line-height:22px;background-color:#f2f2f2;\"="&quot;&quot;&quot;&quot;&quot;&quot;">添加编辑产品</span>','zh-cn','1','3','1','1');
INSERT INTO `jkd_product` VALUES ('30','52','添加编辑产品','43.00','543','37','','添加编辑产品','1','添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品','1394159208','1394437177','<span style="&quot;\&quot;color:#333333;font-family:Verdana,&quot;" geneva,="&quot;&quot;" sans-serif;line-height:22px;background-color:#f2f2f2;\"="&quot;&quot;">添加编辑产品</span>','zh-cn','1','1','1','1');
INSERT INTO `jkd_product` VALUES ('33','52','添加编辑产品','43.00','543','39','','添加编辑产品','1','添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品','1394437252','0','<span style="&quot;\&quot;\\&quot;\\\\&quot;color:#333333;font-family:Verdana,\\&quot;\&quot;&quot;" geneva,="&quot;\&quot;\\&quot;\\&quot;\&quot;&quot;" sans-serif;line-height:22px;background-color:#f2f2f2;\\\\\\\"="&quot;\&quot;\\&quot;\\&quot;\&quot;&quot;">添加编辑产品</span>','zh-cn','1','31','1','1');
INSERT INTO `jkd_product` VALUES ('34','55','添加编辑产品','43.00','543','49,50,51','','添加编辑产品','1','添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品添加编辑产品','1394441422','1395295064','如果豆腐干豆腐干梵蒂冈','zh-cn','1','24','1','1');


# 数据库表：jkd_role 数据信息
INSERT INTO `jkd_role` VALUES ('1','超级管理员','0','1','系统内置超级管理员组，不受权限分配账号限制');
INSERT INTO `jkd_role` VALUES ('2','管理员','1','1','拥有系统仅此于超级管理员的权限');
INSERT INTO `jkd_role` VALUES ('3','领导','1','1','拥有所有操作的读权限，无增加、删除、修改的权限');
INSERT INTO `jkd_role` VALUES ('4','测试组','1','1','测试');


# 数据库表：jkd_role_user 数据信息
INSERT INTO `jkd_role_user` VALUES ('3','4');


# 数据库表：jkd_tag 数据信息
INSERT INTO `jkd_tag` VALUES ('6','关于我们','aboutus','<h3> <img src="/newconist/Uploads/image/product/20140303/20140303081406_87297.jpg" width="100" height="100" align="left" alt="" /> </h3><p>  在此处输入内容覆盖多个地方官热风斯蒂芬<span>在此处输入内容覆盖多个地方官热风斯蒂芬<span>在此处输入内容覆盖多个地方官热风斯蒂芬<span>在此处输入内容覆盖多个地方官热风斯蒂芬<span>在此处输入内容覆盖多个地方官热风斯蒂芬<span>在此处输入内容覆盖多个地方官热风斯蒂芬<span>在此处输入内容覆盖多个地方官热风斯蒂芬<span>在此处输入内容覆盖多个地方官热风斯蒂芬<span>在此处输入内容覆盖多个地方官热风斯蒂芬<span>在此处输入内容覆盖多<span></span></span></span></span></span></span></span></span></span></span></p>','zh-cn');
INSERT INTO `jkd_tag` VALUES ('15','课程大纲','kcdg','边实战边总结的课程，一线实战的专家老师。零成本、低成本的实战技巧，最轻松、最快速的执行流程。','zh-cn');
INSERT INTO `jkd_tag` VALUES ('16','解决方案','jjfa','<p>
	解决思路
</p>
<p>
	解决模式
</p>
<p>
	解决方法
</p>
<p>
	解决资源
</p>
<p>
	解决团队建设问题。
</p>','zh-cn');
INSERT INTO `jkd_tag` VALUES ('17','受训企业','sxqy','服务企业已达2675家,服务行业超过600个,服务满意率高达99%。','zh-cn');
INSERT INTO `jkd_tag` VALUES ('18','课程试听','kcst','<p>
	了解课程时间
</p>
<p>
	在线试听课程
</p>','zh-cn');
INSERT INTO `jkd_tag` VALUES ('19','学前班','xqb','课前扫盲，完成基础教育，为上课做好准备动作。','zh-cn');
INSERT INTO `jkd_tag` VALUES ('20','系统班','xtb','系统介绍全网布局理念，案例剖析网络营销新模式。','zh-cn');
INSERT INTO `jkd_tag` VALUES ('21','落地班','ldb','加速工厂专家老师一对一指导，100%保证落地执行！','zh-cn');
INSERT INTO `jkd_tag` VALUES ('22','沙龙','sl','举办各类学员交流会，全面交互、增值学习。','zh-cn');
INSERT INTO `jkd_tag` VALUES ('23','专家咨询','zjzx','定期举行专家研讨会，提供问题诊断，专家咨询服务。','zh-cn');
INSERT INTO `jkd_tag` VALUES ('24','资源共享','xygx','提供学员交流平台，共享平台资源。','zh-cn');
