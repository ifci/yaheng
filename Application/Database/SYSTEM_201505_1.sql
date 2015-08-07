# -----------------------------------------------------------
# PHP-Amateur database backup files
# Blog: http://blog.51edm.org
# Type: 系统自动备份
# Description:当前SQL文件包含了表：jkd_access、jkd_ad、jkd_admin、jkd_category、jkd_company、jkd_field、jkd_images、jkd_input、jkd_link、jkd_member、jkd_message、jkd_model、jkd_nav、jkd_news、jkd_node、jkd_page、jkd_product、jkd_role、jkd_role_user、jkd_tag、jkd_video的结构信息，表：jkd_access、jkd_ad、jkd_admin、jkd_category、jkd_company、jkd_field、jkd_images、jkd_input、jkd_link、jkd_member、jkd_message、jkd_model、jkd_nav、jkd_news、jkd_node、jkd_page、jkd_product、jkd_role、jkd_role_user、jkd_tag、jkd_video的数据
# Time: 2015-05-06 13:08:20
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ;

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

# 数据库表：jkd_category 结构信息
DROP TABLE IF EXISTS `jkd_category`;
CREATE TABLE `jkd_category` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `pid` int(5) DEFAULT NULL COMMENT 'parentCategory上级分类',
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `type` char(2) NOT NULL DEFAULT 'n',
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻分类表' ;

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
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=352 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站前台会员表' ;

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ;

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
  `action` varchar(255) NOT NULL COMMENT '方法',
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
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='新闻表' ;

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
  `image_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_video 结构信息
DROP TABLE IF EXISTS `jkd_video`;
CREATE TABLE `jkd_video` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `content` text,
  `published` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ;



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
INSERT INTO `jkd_ad` VALUES ('26','丽琵建材','#','551fa72770d08.png','bottom','0','zh-cn');
INSERT INTO `jkd_ad` VALUES ('27','悠悠你榴莲','#','551fa990bb582.png','bottom','2','zh-cn');
INSERT INTO `jkd_ad` VALUES ('28','天幕汽车贴膜','#','551fa9b34936f.png','bottom','3','zh-cn');
INSERT INTO `jkd_ad` VALUES ('29','黑田润滑油','#','551fa9c8615b1.png','bottom','0','zh-cn');
INSERT INTO `jkd_ad` VALUES ('30','高端红木虞林世家','#','551fa9e381a04.png','bottom','4','zh-cn');
INSERT INTO `jkd_ad` VALUES ('31','中华草品养生专家','#','551fa9f665354.png','bottom','0','zh-cn');
INSERT INTO `jkd_ad` VALUES ('32','内页banner','#','55285836c33ac.jpg','all','0','zh-cn');


# 数据库表：jkd_admin 数据信息
INSERT INTO `jkd_admin` VALUES ('1','超级管理员','admin@qq.com','b3a14e5d4d69f57700561f48eb717504','1','我是超级管理员 哈哈~~','','1427546072');


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
INSERT INTO `jkd_images` VALUES ('85','video','20150414003944_33186.jpg','/9kd/Uploads/image/page/20150414/20150414003944_33186.jpg','1428943191');
INSERT INTO `jkd_images` VALUES ('84','video','20150414003542_31008.jpg','/9kd/Uploads/image/page/20150414/20150414003542_31008.jpg','1428942946');
INSERT INTO `jkd_images` VALUES ('83','video','20150414003329_96682.jpg','/9kd/Uploads/image/page/20150414/20150414003329_96682.jpg','1428942816');
INSERT INTO `jkd_images` VALUES ('82','video','20150414002933_78848.jpg','/9kd/Uploads/image/page/20150414/20150414002933_78848.jpg','1428942574');
INSERT INTO `jkd_images` VALUES ('81','news','20150413231221_36026.jpg','/9kd/Uploads/image/page/20150413/20150413231221_36026.jpg','1428937950');
INSERT INTO `jkd_images` VALUES ('80','video','20150412211735_37317.jpg','/9kd/Uploads/image/video/20150412/20150412211735_37317.jpg','1428844657');
INSERT INTO `jkd_images` VALUES ('79','video','20150412211649_42728.jpg','/9kd/Uploads/image/video/20150412/20150412211649_42728.jpg','1428844611');
INSERT INTO `jkd_images` VALUES ('78','video','20150412192243_62657.jpg','/9kd/Uploads/image/video/20150412/20150412192243_62657.jpg','1428837764');
INSERT INTO `jkd_images` VALUES ('52','news','20150328224509_20327.jpg','/9kd/Uploads/image/news/20150328/20150328224509_20327.jpg','1427554974');
INSERT INTO `jkd_images` VALUES ('53','news','20150329092908_72828.jpg','/9kd/Uploads/image/news/20150329/20150329092908_72828.jpg','1427592601');
INSERT INTO `jkd_images` VALUES ('54','news','14194158728313.jpg','http://www.9koudai.org.cn/Public/ueditor/php/upload/20141224/14194158728313.jpg','1427592794');
INSERT INTO `jkd_images` VALUES ('55','news','14194155543655.jpg','http://www.9koudai.org.cn/Public/ueditor/php/upload/20141224/14194155543655.jpg','1427592891');
INSERT INTO `jkd_images` VALUES ('56','news','1419321588555.jpg','http://www.9koudai.org.cn/Public/ueditor/php/upload/20141223/1419321588555.jpg','1427592948');
INSERT INTO `jkd_images` VALUES ('57','news','20150329095215_10395.jpg','/9kd/Uploads/image/news/20150329/20150329095215_10395.jpg','1427593953');
INSERT INTO `jkd_images` VALUES ('58','news','54449131b0175.jpg','http://www.9koudai.org.cn/Uploads/pictures/54449131b0175.jpg','1427594064');
INSERT INTO `jkd_images` VALUES ('59','news','54448caec5e90.jpg','http://www.9koudai.org.cn/Uploads/pictures/54448caec5e90.jpg','1427594123');
INSERT INTO `jkd_images` VALUES ('60','news','20150404145620_48921.png','/9kd/Uploads/image/page/20150404/20150404145620_48921.png','1428130582');
INSERT INTO `jkd_images` VALUES ('61','news','20150404145620_48921.png','/9kd/Uploads/image/page/20150404/20150404145620_48921.png','1428130583');
INSERT INTO `jkd_images` VALUES ('62','news','20150404145620_48921.png','/9kd/Uploads/image/page/20150404/20150404145620_48921.png','1428130583');
INSERT INTO `jkd_images` VALUES ('63','news','20150404145620_48921.png','/9kd/Uploads/image/page/20150404/20150404145620_48921.png','1428130583');
INSERT INTO `jkd_images` VALUES ('64','news','20150404145620_48921.png','/9kd/Uploads/image/page/20150404/20150404145620_48921.png','1428130583');
INSERT INTO `jkd_images` VALUES ('65','news','20150404145620_48921.png','/9kd/Uploads/image/page/20150404/20150404145620_48921.png','1428130584');
INSERT INTO `jkd_images` VALUES ('66','news','20150404145620_48921.png','/9kd/Uploads/image/page/20150404/20150404145620_48921.png','1428130584');
INSERT INTO `jkd_images` VALUES ('67','news','20150404150258_97165.png','/9kd/Uploads/image/page/20150404/20150404150258_97165.png','1428130980');
INSERT INTO `jkd_images` VALUES ('68','news','20150404150258_97165.png','/9kd/Uploads/image/page/20150404/20150404150258_97165.png','1428130990');
INSERT INTO `jkd_images` VALUES ('69','news','20150404152152_28948.jpg','/9kd/Uploads/image/page/20150404/20150404152152_28948.jpg','1428132138');
INSERT INTO `jkd_images` VALUES ('70','news','20150404152248_46342.jpg','/9kd/Uploads/image/page/20150404/20150404152248_46342.jpg','1428132169');
INSERT INTO `jkd_images` VALUES ('71','news','20150404152309_67768.jpg','/9kd/Uploads/image/page/20150404/20150404152309_67768.jpg','1428132192');
INSERT INTO `jkd_images` VALUES ('72','news','20150404152329_39306.jpg','/9kd/Uploads/image/page/20150404/20150404152329_39306.jpg','1428132211');
INSERT INTO `jkd_images` VALUES ('73','news','20150404161700_91554.jpg','/9kd/Uploads/image/news/20150404/20150404161700_91554.jpg','1428135458');
INSERT INTO `jkd_images` VALUES ('74','news','20150412191918_51495.jpg','/9kd/Uploads/image/news/20150412/20150412191918_51495.jpg','1428837565');
INSERT INTO `jkd_images` VALUES ('75','video','20150412152541_82998.jpg','/9kd/Uploads/image/news/20150412/20150412152541_82998.jpg','1428823551');
INSERT INTO `jkd_images` VALUES ('76','video','20150412152541_82998.jpg','/9kd/Uploads/image/news/20150412/20150412152541_82998.jpg','1428823553');
INSERT INTO `jkd_images` VALUES ('77','video','20150412153704_33518.jpg','/9kd/Uploads/image/video/20150412/20150412153704_33518.jpg','1428824229');
INSERT INTO `jkd_images` VALUES ('86','video','20150414091151_94147.jpg','/9kdnet/Uploads/image/page/20150414/20150414091151_94147.jpg','1428973913');


# 数据库表：jkd_input 数据信息
INSERT INTO `jkd_input` VALUES ('7','32','1','公司名称','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_name]' value='' />','1','1427594605','1427594605');
INSERT INTO `jkd_input` VALUES ('8','33','1','客服热线','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_tel]' value='' />','1','1427594649','1427594649');
INSERT INTO `jkd_input` VALUES ('9','34','1','公司地址','','textarea','68','4','','','all','<textarea name='company[c_address]' class='' rows='4' cols='68' ></textarea>','1','1427594703','1427594703');
INSERT INTO `jkd_input` VALUES ('10','35','1','在线QQ客服','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_qq]' value='' />','1','1427594731','1427594731');
INSERT INTO `jkd_input` VALUES ('11','36','1','标签标识','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_tag]' value='' />','1','1427594789','1427594789');
INSERT INTO `jkd_input` VALUES ('12','37','1','地区','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[area]' value='' />','1','1427594811','1427594811');
INSERT INTO `jkd_input` VALUES ('13','38','1','公司网址','','text','20','0','','','all','<input type='text' class='input' size='20' name='company[c_url]' value='' />','1','1427594838','1427594838');


# 数据库表：jkd_link 数据信息
INSERT INTO `jkd_link` VALUES ('6','九口袋建站','1','http://www.9koudai.cn/','0','2');
INSERT INTO `jkd_link` VALUES ('7','九口袋加速工厂','1','http://jsgc.9koudai.net/','1','2');
INSERT INTO `jkd_link` VALUES ('8','九口袋运营','1','http://tuiguang.9koudai.cn/','2','2');
INSERT INTO `jkd_link` VALUES ('9','九口袋商城','1','http://www.9koudai.com/','4','2');


# 数据库表：jkd_member 数据信息


# 数据库表：jkd_message 数据信息
INSERT INTO `jkd_message` VALUES ('15','2','','2','0','1428844169','');
INSERT INTO `jkd_message` VALUES ('16','3','','3','0','1428844215','');


# 数据库表：jkd_model 数据信息


# 数据库表：jkd_nav 数据信息
INSERT INTO `jkd_nav` VALUES ('52','link','加速工厂','0','0','top','http://jsgc.9koudai.net','zh-cn','6','1','');
INSERT INTO `jkd_nav` VALUES ('53','link','课程介绍','0','0','top','','zh-cn','5','0','Lesson/index');
INSERT INTO `jkd_nav` VALUES ('54','link','服务介绍','0','0','top','','zh-cn','4','0','Service/index');
INSERT INTO `jkd_nav` VALUES ('55','news','学员案例','0','0','top','/9kd/index.php/news/index','zh-cn','3','0','Case/index');
INSERT INTO `jkd_nav` VALUES ('56','news','课程试听','0','0','top','/9kd/index.php/news/index','zh-cn','2','0','Video/index');
INSERT INTO `jkd_nav` VALUES ('57','link','关于九口袋','0','0','top','javascript:','zh-cn','1','0','');
INSERT INTO `jkd_nav` VALUES ('58','news','九口袋资讯','57','0','top','/9kd/index.php/news/index','zh-cn','3','0','News/index');
INSERT INTO `jkd_nav` VALUES ('59','link','九口袋介绍','57','0','top','','zh-cn','2','0','Introduce/index');
INSERT INTO `jkd_nav` VALUES ('60','link','联系九口袋','57','0','top','','zh-cn','1','0','Connect/index');


# 数据库表：jkd_news 数据信息
INSERT INTO `jkd_news` VALUES ('19','57','黑田润滑油','黑田润滑油','黑田润滑油为黑田新能源科技旗下润滑油品牌，创始人林碧华自2001年创立品牌以来，一直专注于产品质量和产品创新','1','黑田润滑油为黑田新能源科技旗下润滑油品牌，创始人林碧华自2001年创立品牌以来，一直专注于产品质量和产品创新','1427553911','1427554974','<span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">黑田润滑油为黑田新能源科技旗下润滑油品牌，创始人林碧华自</span><span style="color:#666666;font-size:14px;line-height:21px;font-family:'Times New Roman';background-color:#FEFEFE;">2001</span><span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">年创立品牌以来，一直专注于产品质量和产品创新，而忽视了营销方法的重要性，他认为只要拥有好的产品就一定可以赢得消费者的青睐。然而，由于市场的激烈竞争以及销售渠道的限制，几年来黑田润滑油的销量并不是很好，企业发展遭遇无法克服的瓶颈。后来，为拓宽销售渠道，改变公司现状，林总带着尝试的心理走进九口袋全网营销课堂，在上完九口袋大课后，林总终于明白了“酒香也怕巷子深”的道理，于是迅速着手“黑田润滑油”的全网营销，在九口袋团队的帮助下，林总建立了自己的网站，并通过互联网各个渠道开展了品牌布局、产品推广，口碑营销，在一系列的布局之后，黑田润滑油的品牌知名度、认可度和美誉度很快得到提高，客户订单量在第一个月便提高了</span><span style="color:#666666;font-size:14px;line-height:21px;font-family:'Times New Roman';background-color:#FEFEFE;">30%</span><span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">，线上成交率达到</span><span style="color:#666666;font-size:14px;line-height:21px;font-family:'Times New Roman';background-color:#FEFEFE;">90%</span><span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">，公司月营业额奇迹般的突破</span><span style="color:#666666;font-size:14px;line-height:21px;font-family:'Times New Roman';background-color:#FEFEFE;">300</span><span style="color:#666666;font-family:宋体;font-size:14px;line-height:21px;background-color:#FEFEFE;">万，公司整体经济效益呈现前所未有的逆转趋势。黑田通过全网营销的正确策略，拓展了产品销售渠道，促进了线上线下整体销量，解决了企业发展长期无法突破的发展瓶颈。</span>','57','1','1','52','zh-cn','http://www.rh580.com');
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
</p>','35','1','1','53','zh-cn','');
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
</p>','4','1','1','54','zh-cn','');
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
</p>','2','1','1','55','zh-cn','');
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
</p>','6','1','1','56','zh-cn','');
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
</p>','5','1','1','57','zh-cn','http://www.apexfilms.com.cn');
INSERT INTO `jkd_news` VALUES ('26','57','诗克恰','诗克恰','九口袋第六届学员','1','锦艺国际贸易有限公司是一家主营3——12岁的儿童系列产品的公司，此前一直致力于对外贸易，对国内市场毫无了解。2013年，周志忠开始转战国内，并创立婴童品牌——诗克恰。作为一个从外贸转内贸的新生品牌，诗克恰在国内毫无知名度，产品月销量极低。创始人周志忠也先后尝试了传统营销方法，然而在跌跌撞撞的探索中，产品月销售额仍然不见起色。2014年1月，周总走进了九口袋第六届《新网络新营销——全网营销大系统》总&hellip;','1427594064','','<p>
	锦艺国际贸易有限公司是一家主营3——12岁的儿童系列产品的公司，此前一直致力于对外贸易，对国内市场毫无了解。2013年，周志忠开始转战国内，并创立婴童品牌——诗克恰。
</p>
<p>
	作为一个从外贸转内贸的新生品牌，诗克恰在国内毫无知名度，产品月销量极低。创始人周志忠也先后尝试了传统营销方法，然而在跌跌撞撞的探索中，产品月销售额仍然不见起色。2014年1月，周总走进了九口袋第六届《新网络新营销——全网营销大系统》总裁培训班的课堂，在听完这次课程之后，周总恍然大悟，意识到自己之前营销方法的弊端，决定一改传统营销模式，加大全网营销投入力度，成立了“诗克恰”商城。
</p>
<p>
	在九口袋的指导下，周总全力为“诗克恰”这一品牌推广造势。在三个月的品牌布局之后，“诗克恰”成功转型，迅速打开国内市场，成为国内知名婴童品牌，诗克恰商城仅在今年六一那天，流量便突破了1200IP，单日成交达到20000余元，这对于传统企业来说是望尘莫及的。不仅如此，诗克恰在一个月内，加盟商家竟多达200多家。目前，天猫也开始运营起来了，下一站，诗克恰的目标是影响最大的民族品牌！
</p>','8','1','1','58','zh-cn','http://www.shikeqia.cn');
INSERT INTO `jkd_news` VALUES ('27','57','健步楼梯','健步楼梯','上海徐德楼梯有限公司董事长第七届学员','1','上海徐德楼梯有限公司是一家致力于楼梯设计、生产和销售等综合性服务的家居企业，健步楼梯是公司的主营品牌。在进入九口袋之前，健步楼梯主要依靠回头客的生意，然而，一方面，受线下传统营销的制约，公司产品利润率越来越低；另一方面，线下客户开发难度极大。受这两方面因素的影响，公司盈利越来越不理想，之后，章总也尝试过进行网络推广，然而，因为不懂互联网，所以，花出去的费用如入大海，并没起到什么效果。&nbsp;&&hellip;','1427594123','','<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-size:16px;font-family:微软雅黑;">上海徐德楼梯有限公司是一家致力于楼梯设计、生产和销售等综合性服务的家居企业，健步楼梯是公司的主营品牌。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-size:16px;font-family:微软雅黑;">在进入九口袋之前，健步楼梯主要依靠回头客的生意，然而，一方面，受线下传统营销的制约，公司产品利润率越来越低；另一方面，线下客户开发难度极大。受这两方面因素的影响，公司盈利越来越不理想，之后，章总也尝试过进行网络推广，然而，因为不懂互联网，所以，花出去的费用如入大海，并没起到什么效果。&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-size:16px;font-family:微软雅黑;">2014年4月，章总加入了九口袋第七届全网营销总裁培训班，在对网络营销有了系统性的认识之后，带领团队进驻九口袋加速工厂进行学习，从营销型网站建设到软文推广，再到品牌布局，短短一个月，助力成交的品牌布局完成，客户订单量第一个月提高了30%。之后，营销型网站上线，配合网络精确推广手段，三个月时间里，订单源源不断，生产计划爆满！&nbsp;</span>
</p>','38','1','1','59','zh-cn','http://www.sh-jianbu.com');
INSERT INTO `jkd_news` VALUES ('28','58','上海九口袋：教你怎么做网络营销细节','上海九口袋','上海九口袋先来个定义 全网营销指基于互联网平台，利用信息技术与软件工具满足公司与客户之间交换概念、产品、服务的过程，通过在线活动创造、宣传、传递客户价值，并且对客户关 系进行管理，以达到一定营销目的的新型营销活动。上海九口袋提出，全网营销：是指为发现、满足或创造顾客需求，利用互联网（包括移动互联网）所进行的市场开拓、 产品创新、定价促销、宣传推广等活动的总称。','1','上海九口袋先来个定义&nbsp;全网营销指基于互联网平台，利用信息技术与软件工具满足公司与客户之间交换概念、产品、服务的过程，通过在线活动创造、宣传、传递客户价值，并且对客户关&nbsp;系进行管理，以达到一定营销目的的新型营销活动。上海九口袋提出，全网营销：是指为发现、满足或创造顾客需求，利用互联网（包括移动互联网）所进行的市场开拓、&nbsp;产品创新、定价促销、宣传推广等活动的总称。1,做好&hellip;','1428135458','','<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-weight:bold;">上海九口袋</span><span style="font-family:'Times New Roman';">先来个定义&nbsp;</span><span style="font-weight:bold;">全网营销</span><span style="font-family:'Times New Roman';">指基于互联网平台，利用信息技术与软件工具满足公司与客户之间交换概念、产品、服务的过程，通过在线活动创造、宣传、传递客户价值，并且对客户关&nbsp;系进行管理，以达到一定营销目的的新型营销活动。</span><span style="font-weight:bold;">上海九口袋</span><span style="font-family:'Times New Roman';">提出，</span><span>全网营销</span><span style="font-family:'Times New Roman';">：是指为发现、满足或创造顾客需求，利用互联网（包括移动互联网）所进行的市场开拓、&nbsp;产品创新、定价促销、宣传推广等活动的总称。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">1,<span style="font-family:宋体;">做好关键词的基本优化&nbsp;</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">　　<span>2</span><span style="font-family:宋体;">，开设一个具有优势的板块，试运营&nbsp;</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">　　<span>3</span><span style="font-family:宋体;">，搜集访客的意见&nbsp;</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">　　<span>4</span><span style="font-family:宋体;">，每天坚持小幅度更新&nbsp;</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">　　<span>5</span><span style="font-family:宋体;">，提交搜索引擎</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">1<span style="font-family:宋体;">，集中精力，发掘有价值的潜在客户群&nbsp;</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">　&nbsp;</span><span style="font-weight:bold;">上海九口袋全网营销</span><span style="font-family:'Times New Roman';">Cristomson<span style="font-family:宋体;">说过，一个成功的营销推广人员应该把精力放在更可能成为我们客户的人身上。我们推广网站也是这个道理。这就是&nbsp;为什么有的人花很少精力，推广效果却很好，而为什么有的人每天花大把的时间在网站推广上，获得的成效却相当不明显。互联网推广的确需要广，但更需要精，试&nbsp;想如果我去推广酷模板交流社区（起源</span><span>seo</span><span style="font-family:宋体;">论坛），是把信息发布在</span><span>A5</span><span style="font-family:宋体;">这种站长比较集中的社区好一点，还是到</span><span>qq</span><span style="font-family:宋体;">空间随即留言发到几百个空间好？</span></span><span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">我们在做推广之前一定要选择好我们网站推广的重点。&nbsp;</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">2<span style="font-family:宋体;">，留住老访客，他们是你网站前进的基石&nbsp;</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">百度之所以抽奖，并把获奖者的奖品产生集中在他们的老客户群（虽然百度说是通过电脑抽奖，但懂一点的人都知道那是完全可以作弊的，更何况是通过他们自己编写的<span>JS&nbsp;</span><span style="font-family:宋体;">程序）是因为他们知道老客户是多么的重要，百度之所以现在成为中文搜索中的领跑者，完全是因为这些客户上帝在默默的支持。</span></span><span style="font-weight:bold;">上海九口袋全网营销</span><span>指出</span><span style="font-family:'Times New Roman';">通过站长们的不断努力，可能你的&nbsp;站现在的流量已经每天有一百多<span>IP</span><span style="font-family:宋体;">了，可每天努力，增长的速度却很慢，这说明你每天流失的老客户太多，做一个算术，如果你第一天拉</span><span>100</span><span style="font-family:宋体;">个访客访问网站，&nbsp;第二天再拉一百个，那流量应该是</span><span>200</span><span style="font-family:宋体;">，而现在却仅有</span><span>100</span><span style="font-family:宋体;">，那说明你的老客户流失率至少在</span><span>50%</span><span style="font-family:宋体;">以上，当然，这是很保守的数字，考虑到有老客户可能会在&nbsp;第三天上线。所以，我们在平时做营销的过程中，一定要细细的想一下，自己的网站到底有哪些特色，什么地方最能吸引人，把他强调出来。</span></span><span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">多跟老访客做交流，如果你有他们的联系方式，定期的发一些邮件问候一下，这很重要。如果你的网站做得做够成功，购买一些礼品发送过去，那访客对你网站的忠诚度一定会达到一个很&nbsp;高的程度。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;text-align:center;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';"><img src="http://www.9koudai.org.cn/Public/ueditor/php/upload/20150402/14279612084302.jpg" title="u=4286127019,1962824322&amp;fm=15&amp;gp=0.jpg" /></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">3<span style="font-family:宋体;">，各个击破，扩大推广渠道&nbsp;</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">友情链接问题一直是站长朋友们头疼的问题，正是这种问题&nbsp;的高度突出性才导致了如今链接买卖市场的火热，我们如何去寻找高质量的链接？方法很简单，就像百度工作人员会将潜在客户列在一张纸上一样，你也可以将你看中的网站列好，然后就去做推销动作，把你的网站的优势、特点、前景全部列举出来，然后挨个诚恳的给每个网站的站长发一封<span>E-mail</span><span style="font-family:宋体;">，并注明你已经链接了&nbsp;他们的网站，这是第一步，等待三四天、看看有没有回信，有回信的要重点的加备注，你的友情链接的重点目标就是他们了，其他的没有回信的可以再想个办法联系&nbsp;一下，实在联系不上的就算了。然后对重点的对象旁批注日期段，说明在这个时间段，你的目标就是要与这个站点做好链接。只要你够诚恳，再坚持的做下去，换到&nbsp;好的链接应该不是问题。&nbsp;</span></span><span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">要做好网站优化，懂得合理布局网站关键词很重要。而我们平时写网站优化方案或是开始新站的&nbsp;网站优化，可以先从合理布局网站关键词开始。网站每个页面的等级权重不同，决定了不同页面打分关键词定位有所不同。因此，每个页面的关键词的选词很重要。&nbsp;从首页往下，是频道栏目页、列表页和文章页，根据页面等级的高低选择页面关键词布局的难易程度。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">先来看看首页关键词布局。</span><span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">网站首页是承担网站核心关键词的页面，做难度最大的相关关键词需要它来负责。一般首页的关键词定位主要是行业词、品牌词以及在难度直逼行业词的重点产品词。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">　&nbsp;　接下来就要考虑频道栏目列表页的关键词布局了。这个页面的关键词可以说是主关键词布局的延续，难度也是很大。</span><span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">一般是一些主关键词的稍微扩展或是品牌口碑&nbsp;词，列表页则还会布局一些产品词。&nbsp;文章页的关键词定位，我们都知道主要以长尾关键词为主。这个长尾关键词也是有一定的讲究。可以将这样的有价值的长尾词定位到栏目列表页，甚至是首页。</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">网站中同一个关键词不要出现在多个页面，关键词集中一个页面提升权重，更容易提升关键词排名。因此，网站标题重复是不利于优化的。&nbsp;</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">每个页面目标关键词不要太多，一般<span>2-3</span><span style="font-family:宋体;">个就可以了。一个页面关键词多了，容易分散重点关键词权重。而且，关键词写多了容易走题，导致文不对题，这样哪能提升排名。&nbsp;</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">　长尾关键词的优势不是几篇文章页排名就能体现的。几千上万的长尾关键词页面布局排名从而获得流量，是网站积累的结果，不是只研究就研究出结果的。相比于文章页长尾关键词，做比看重要。如果要研究，多研究一下几个主关键词的首页、栏目页的权重积累。</span><span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">产品描述，是</span><span>全网营销</span><span style="font-family:'Times New Roman';">的手段中至关重要的点！&nbsp;</span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">　　<span>1</span><span style="font-family:宋体;">、图片、图片，更多的图片&nbsp;只有一张产品的图片是远远不够的，特别是那些需要描述细节的产品，像是服装、玩具或者家用器皿等。一定要提供不同角度和尺寸的大量照片。这将有助于浏览者更好的了解产品整体以及质量水平，以便能够使他们更坚定的做出购买决定。</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">2<span style="font-family:宋体;">、&nbsp;视频&nbsp;如果你的产品需要进行演示，你可以考虑使用视频来辅助进行更好的说明。这项技术的应用可以使诸多产品受益，包括：&nbsp;家具或玩具等需要组装的产品。视频可以帮助展示该怎样简单、快速的完成装配过程。客户在收到产品后亦可以通过参考视频来帮助自己完成整个组装过程。&nbsp;</span></span><span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">需要图像解释的产品。展示产品服务的周期将会帮助浏览者更好的理解你所提供的具体服务内容以及预期结果将是怎样。它也是解决常见问题的更好途径。&nbsp;需要引起消费者兴趣。有些时候，一个产品的最好展示是通过示范而非静态图像来真正展现其价值。例如，<span>Zappos.com</span><span style="font-family:宋体;">就在产品展示上做的非常出色，无&nbsp;论是鞋、炊具还是床上用品。通过展示客户可以怎样使用你产品的例子来使客户产生对产品的额外兴趣。</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">3<span style="font-family:宋体;">、对于产品描述&nbsp;的长度和格式要有策略&nbsp;内容多并不总是好的。过长的产品描述会使消费者丧失兴趣。以我的经验来看，介于</span><span>250-300</span><span style="font-family:宋体;">字之间的产品描述是最具效果的。如果你的产品需要对细节进行&nbsp;阐述的话，考虑使用项目符号列表对品种规格进行说明，像是规格尺寸、产品类别、使用或模型细节等等。这些列表也有助于满足</span><span>“</span><span style="font-family:宋体;">浏览</span><span>”</span><span style="font-family:宋体;">型消费者的需要。</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">4<span style="font-family:宋体;">、&nbsp;增加趣味性&nbsp;一些小型企业以独特个性、幽默、友好甚至是可爱而出名。这种精神应该在产品描述中有所体现，同时也要保证产品的细节描述清晰。举个例子，你可以看看迪斯尼&nbsp;的商店，无论消费者多大，它都可以激发他们的想象力。这家商店成功的将公司特性融入到了产品的描述中去。不过要注意，如果你的企业并不是这种风格的话，就&nbsp;不要进行尝试，产品描述应该与客户所熟悉的企业风格保持一致。</span></span>
</p>
<p style="color:#666666;font-family:宋体;font-size:14px;background-color:#FEFEFE;">
	<span style="font-family:'Times New Roman';">5<span style="font-family:宋体;">、不要忽略搜索引擎优化</span><span>(SEO)&nbsp;</span><span style="font-family:宋体;">以你想象中买家的角度进行思考。当他们在对你的产品进行检索时会用到哪些词语</span><span>?</span><span style="font-family:宋体;">尽管作为行业中专业人士的你可能会使用特定术语，但是普通的消费者可能不&nbsp;会。</span></span><span style="font-weight:bold;">上海九口袋全网营销</span><span>认为</span><span style="font-family:'Times New Roman';">避免使用行话，除非是那些你的买家也会用到的。同样需要记住的是，搜索引擎扫描的不仅仅是文本，还有图像。如果你的图片中不包括<span>Alt</span><span style="font-family:宋体;">标记或是相关文&nbsp;件名的话，它将会被诸如谷歌或是必应等搜索引擎略过。在整个产品描述中一定要使用像是图片说明、标题、副标题或是</span><span>Alt</span><span style="font-family:宋体;">标签等关键词。</span></span>
</p>','2','1','1','73','zh-cn','');
INSERT INTO `jkd_news` VALUES ('29','58','九口袋剖析全网营销的顺势之道','九口袋全网营销','从早年的网络营销到现在主流的全网营销（九口袋全网营销），网络营销市场完成了又一轮升级。','1','从早年的网络营销到现在主流的全网营销（九口袋全网营销），网络营销市场完成了又一轮升级。而为什么全网营销会成为现在网络营销市场的主流营销形态呢？九口袋全网营销分析师道出了其中原因：做事情要顺势，移动互联网就是势，微信就是势，企业都不想错过势。九口袋全网营销分析师指出，微信作为移动互联网重要的入口，越来越多的企业在开展微信营销，建公众账号，微网站，但现在做成功的不多，大多都是只当做了营销工具，发帖工具…','1428135556','1428837565','<p style="color:#666666;font-family:宋体;font-size:14px;text-indent:28px;background-color:#FEFEFE;">
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
</p>','23','1','1','74','zh-cn','');


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
INSERT INTO `jkd_page` VALUES ('20','gsry','0','中国网络营销实战培训行业十大影响力品牌','','1','','','zh-cn','69');
INSERT INTO `jkd_page` VALUES ('21','gsry','0','中国网络营销实战培训客户最满意品牌','','1','','','zh-cn','70');
INSERT INTO `jkd_page` VALUES ('22','gsry','0','全国质量服务信誉AAA级诚信单位','','1','','','zh-cn','71');
INSERT INTO `jkd_page` VALUES ('23','gsry','0','CCTV商业模式奖','','1','','','zh-cn','72');
INSERT INTO `jkd_page` VALUES ('24','kcjs','0','《实战新网络新营销——全网营销大系统》','<span style="color:#333333;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FEFEFE;">国内首家电子商务全网整合营销体系！帮助中小企业快速开启全网营销。</span>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('25','kcjs','0','品牌营销系统','<span style="color:#666666;font-family:微软雅黑;line-height:normal;background-color:#FEFEFE;">品牌互动传媒：沙龙、活动互动营销、专题互动、朋友圈互动<br />
品牌文化传播：微博裂变式传播、知名媒体品牌传播、搜索引擎品牌传播</span>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('26','kcjs','0','展示型营销系统','<span style="color:#666666;font-family:微软雅黑;line-height:normal;background-color:#FEFEFE;">平台推广：付费推广系统、免费推广系统、自媒体推广系统<br />
平台成交：客服系统、物流系统、售后系统</span>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('27','kcjs','0','社交化营销系统','<span style="color:#666666;font-family:微软雅黑;line-height:normal;background-color:#FEFEFE;">微信：微信平台矩阵、微信营销模型、微信推广方式<br />
微博：微博打造系统、微博运营系统、事件营销系统、微博广告系统、微博联动系统、粉丝转化系统</span>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('28','kcjs','0','我们能为你带来什么？','<span style="color:#333333;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FEFEFE;">打造最适合市场与用户的全网营销系统，</span><br />
<span style="color:#333333;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FEFEFE;">成就知名品牌，200%~300%提升成交率！</span>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('29','kcjs','0','课程独家研发:','<p>
	独家自主研发全网营销整合系统课程《实战新网络新营销——全网营销大系统》，并实时全面升级改版，整合最新、最有效的全网营销方式！
</p>
<p>
	<br />
</p>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('30','kcjs','0','讲师最牛：','用实战经验实现品牌过亿<br />
和有丰富海外营销作战的讲师团亲自传授实操经验','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('31','kcjs','0','零风险：','<span style="color:#333333;font-size:18px;font-family:微软雅黑;line-height:normal;background-color:#EBEBEB;">第一天听课，如不满意，全额退款！</span>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('32','kcjs','0','张启明','2014年中国电子商务十大杰出人物、国内著名实战电子商务专家，被誉为“营销界的鬼才”！实战过程中，半年内成功为自己的商城创造过8000万的业绩，成功打造韩国艺匠、诗克恰等多家行业龙头老大！','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('33','kcjs','0','蔡国其','浙江大学EMBA讲师，国内少数能把互联网技术与营销整合的实战老师，著名电子商务团队建设专家。从事互联网7年，专注于中小企业落地服务，成功帮助837家企业实现网上盈利，横跨300多个行业。','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('34','kcjs','0','100%落地：','专设加速工厂，学员免费入驻，核心讲师现场授课指导、分析梳理营销思路并提供营销策略；现场技术团队，便捷化解决操作问题。','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('35','kcjs','0','增值服务：','技术团队，讲师团队，营销团队支撑；沙龙、同学交流会、参观学习、走进企业活动交互；品牌营销策划，自有媒体资源免费提供。','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('36','fwjs','0','加速工厂落地','--每个月安排为期15-25天的辅导课程培训，上午授课下午辅导，1对1，手把手指导，真正做到100%落地！','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('37','fwjs','0','上门指导运营','--针对企业定位做出专业运营方案，解决电商运营难题!','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('38','fwjs','0','免费专家沙龙','--定期举办高品质沙龙，行业专家亲自讲授，提高企业竞争力！','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('39','fwjs','0','免费一年复训','--课程培训后，学员如有不懂，可享受一年的免费复训，确保每一位学员真正学懂！','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('40','fwjs','0','加速工厂介绍','<span style="color:#333333;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;">加速工厂是九口袋为保证学员100%落地而开发的一个业务模块，</span><br />
<span style="color:#333333;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FFFFFF;">有定期举行的沙龙、同学交流会、参观学习、走进企业等活动。</span>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('41','fwjs','0','加速工厂课程表','<table bordercolor="#999" border="1" align="center" width="1000">
	<tbody>
		<tr>
			<th>
				日期
			</th>
			<th>
				主讲老师
			</th>
			<th>
				大纲
			</th>
			<th>
				内容
			</th>
		</tr>
		<tr>
			<td rowspan="2">
				12月9日下午
			</td>
			<td rowspan="2">
				朱曙光
			</td>
			<td rowspan="2">
				渠道模式组合
			</td>
			<td>
				网络营销模式渠道
			</td>
		</tr>
		<tr>
			<td>
				加速工厂落地课程准备
			</td>
		</tr>
		<tr>
			<td rowspan="6">
				12月10日
			</td>
			<td rowspan="6">
				周敏
			</td>
			<td rowspan="6">
				关键词优化系统
			</td>
			<td>
				关键词属性
			</td>
		</tr>
		<tr>
			<td>
				关键词分类
			</td>
		</tr>
		<tr>
			<td>
				关键词树形结构
			</td>
		</tr>
		<tr>
			<td>
				3000企业级关键词优化
			</td>
		</tr>
		<tr>
			<td>
				关键词价值分析
			</td>
		</tr>
		<tr>
			<td>
				关键词可优化分析
			</td>
		</tr>
		<tr>
			<td rowspan="5">
				12月11日
			</td>
			<td rowspan="5">
				王杰
			</td>
			<td rowspan="5">
				百度产品品牌布局以及推广
			</td>
			<td>
				百度百科 账号升级 百科任务
			</td>
		</tr>
		<tr>
			<td>
				百度知道问题营销 舆情布局 账号培养 推广策略
			</td>
		</tr>
		<tr>
			<td>
				百度文库 账号培养 文件上传 软文推广策略
			</td>
		</tr>
		<tr>
			<td>
				百度贴吧 账号升级 申请吧主 贴吧软文推广
			</td>
		</tr>
		<tr>
			<td>
				百度其他产品 介绍 研究 使用
			</td>
		</tr>
		<tr>
			<td>
				2014/12/12上午
			</td>
			<td>
				许国汭
			</td>
			<td>
				网站营销型思路建设
			</td>
			<td>
				网站营销型建设思路
			</td>
		</tr>
		<tr>
			<td rowspan="5">
				2014/12/12下午
			</td>
			<td rowspan="5">
				孙奇
			</td>
			<td>
				SEO
			</td>
			<td>
				流量提升系统
			</td>
		</tr>
		<tr>
			<td>
				外链实操
			</td>
			<td>
				SEO基础概论
			</td>
		</tr>
		<tr>
			<td>
				平台实操
			</td>
			<td>
				SEO操作实战
			</td>
		</tr>
		<tr>
			<td>
				网站内部优化实操
			</td>
			<td>
				实际操作
			</td>
		</tr>
		<tr>
			<td>
				优化实操
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td rowspan="5">
				2014/12/13上午
			</td>
			<td rowspan="5">
				周敏
			</td>
			<td>
				SEM
			</td>
			<td>
				SEM基础操作—账户基础搭建以及注意事项
			</td>
		</tr>
		<tr>
			<td>
				账户搭建
			</td>
			<td>
				数据统计功能介绍
			</td>
		</tr>
		<tr>
			<td>
				推广测试
			</td>
			<td>
				数据分析制定推广策略
			</td>
		</tr>
		<tr>
			<td>
			</td>
			<td>
				营销数据报表的生成加工
			</td>
		</tr>
		<tr>
			<td>
			</td>
			<td>
				利用工具分析推广状态（重点）
			</td>
		</tr>
		<tr>
			<td>
				2014/12/13下午
			</td>
			<td>
				周敏
			</td>
			<td>
				账户搭建实操
			</td>
			<td>
				实操训练
			</td>
		</tr>
		<tr>
			<td rowspan="5">
				2014-12-15上午
			</td>
			<td rowspan="5">
				王杰
			</td>
			<td rowspan="5">
				微信基础建设微信公众平台功能介绍以及建设
			</td>
			<td>
				微信公众平台的功能介绍
			</td>
		</tr>
		<tr>
			<td>
				微信的主要作用
			</td>
		</tr>
		<tr>
			<td>
				数据统计功能
			</td>
		</tr>
		<tr>
			<td>
				微信公众平台的微观网搭建
			</td>
		</tr>
		<tr>
			<td>
				微信企业号
			</td>
		</tr>
		<tr>
			<td rowspan="4">
				2014-12-15下午
			</td>
			<td rowspan="4">
				王杰
			</td>
			<td>
				微信基础搭建实操
			</td>
			<td rowspan="4">
				一对一辅导、完成作业后才可回去
			</td>
		</tr>
		<tr>
			<td>
				微官网搭建
			</td>
		</tr>
		<tr>
			<td>
				底部导航菜单搭建
			</td>
		</tr>
		<tr>
			<td>
				其他功能测试
			</td>
		</tr>
		<tr>
			<td rowspan="2">
				2014-12-16上午
			</td>
			<td rowspan="2">
				朱曙光
			</td>
			<td rowspan="2">
				微信运营，直达号
			</td>
			<td>
				微信运营
			</td>
		</tr>
		<tr>
			<td>
				直达号操作
			</td>
		</tr>
		<tr>
			<td rowspan="4">
				2014-12-16下午
			</td>
			<td rowspan="4">
				朱曙光
			</td>
			<td rowspan="4">
				微博功能介绍以及基础建设
			</td>
			<td>
				官方微博基础搭建
			</td>
		</tr>
		<tr>
			<td>
				官方微博运营实战
			</td>
		</tr>
		<tr>
			<td>
				官方微博的数据统计功能使用
			</td>
		</tr>
		<tr>
			<td>
				个人微博的基础搭建
			</td>
		</tr>
		<tr>
			<td rowspan="3">
				2014-12-17上午
			</td>
			<td rowspan="3">
				朱曙光&amp;周进
			</td>
			<td rowspan="3">
				加速工厂课程梳理、营销型系统运作
			</td>
			<td>
				自有资源间的相互推广
			</td>
		</tr>
		<tr>
			<td>
				异业合作推广
			</td>
		</tr>
		<tr>
			<td>
				网络营销人员招聘、分工、绩效考核指标综合详解
			</td>
		</tr>
	</tbody>
</table>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('42','jkdjs','0','九口袋介绍','<p style="color:#333333;font-family:微软雅黑;font-size:14px;text-indent:28px;background-color:#FFFFFF;">
	上海九口袋实业有限公司创建于2012年，系上海雄九投资控股集团有限公司全资子公司，旗下包含九口袋课程、九口袋科技、九口袋商城3大主产业，涉及电商培训、网站建设、技术开发、整体代运营、活动营销策划等领域，在全国拥有6家分公司。
</p>
<p style="color:#333333;font-family:微软雅黑;font-size:14px;text-indent:28px;background-color:#FFFFFF;">
	在不到二年时间里，九口袋在电商培训领域位于国内前列。独创研发的《实战新网络新营销—全网营销大系统》全网营销课程，已成为广大中小企业实施电子商务及网络营销的必修课，成功帮助3000多家中小企业转型获利，学员满意度达到98%以上，经各大权威媒体评定课程最实战，服务最落地。
</p>
<p style="color:#333333;font-family:微软雅黑;font-size:14px;text-indent:28px;background-color:#FFFFFF;">
	2014年1月，获得CCTV颁发的“2013年CCTV最佳商业模式奖”，2014年8月，荣获上海“全国质量服务信誉AAA级诚信单位”；同年蝉联“中国网络营销实战培训客户最满意品牌”、“中国网络营销实战培训行业十大影响力品牌”；2014年11月，被中国电子商务协会选为“中国电子商务协会长江经济带专委员执行会长单位”，成为中国电商领域最有价值品牌。
</p>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('43','jkdjs','0','九口袋三大服务体系','<p><b>1）全网营销实战培训体系</b></p>
                        <p>《实战新网络新营销-全网营销大系统》是国内首套将PC、移动、地面三网无缝结合的全网营销总裁培训课程。由国内顶尖营销实战专家张启明和其师资团队研发集成。培训课程涵盖三大系统：品牌营销系统、展示型营销系统、客户关系营销系统。课程从行业分析出发，立足实战，注重落地，内容全面覆盖，从品牌定位、网站推广、营销策划到客户关系维护，全方位为中小企业提供电商转型策略指导。实战新网络新营销-全网营销大系统》开课已达200多场，超过3000多家企业实力见证，涉及200多个细分行业，被誉为中国最实战、最落地的全网营销课程！</p><br>
                        <p><b>2）加速落地服务体系</b></p>
                        <p>加速工厂是九口袋独创为受训学员提供100%落地的服务平台。每月提供为期21天计划制落地辅导培训，以初、中、高级班形式授课，上午授课，下午一对一实操辅导。</p>
                        <p>初级班，主要针对网络营销经验为0基础的学员，通过初级班系统培训和辅导，了解全网布局理念，完成品牌基本建设，微博，微信基础建设维护，成为一个专业的电商运营人员。</p>
                        <p>中级班，主要针对有网络推广基础的人员的进一步提升，掌握SEO排名技巧，包括舆情监控，危机公关，网站策划，能够有效执行企业网络推广事宜！</p>
                        <p>高级班，以活动形式和加速工厂资深老师探讨网络推广，包括活动策划，事件营销，电商运营团队的打造。</p>
                        <p>加速工厂计划制辅导培训，阶段性考核，海量网络媒体资源共享，已成功帮助200多家受训企业加速转型，真正做到100%落地，成为企业落地的硬保障！</p><br>
                        <p><b>3）网络技术服务体系</b></p>
                        <p>拥有实力雄厚的网站建设、制作团队以及实战经验丰富的运营托管团队，承接网站建设，品牌推广，SEO外包、活动策划、新闻营销、微博、微信代运营等项目，专业高效的一站式解决企业电商运营难题。</p>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('44','jkdjs','0','发展历程','<p>2012年7月：上海九口袋实业有限公司成立于上海嘉定，张启明创立“九口袋”品牌</p>
                        <p>2012年8月：九口袋商城上线运营</p>
                        <p>2013年6月：成立九口袋网络，开办了第一届策略班，开始致力电子商务网络营销培训</p>
                        <p>2013年9月：九口袋网络开办首届总裁高峰论坛</p>
                        <p>2013年10月：九口袋网络与浙江大学EMBA商学院签署战略合作协议</p>
                        <p>2013年11月：杭州分公司成立</p>
                        <p>2014年1月：荣获2013年CCTV最佳商业模式奖</p>
                        <p>2014年6月：加入上海市电子商务行业协会，为会员单位</p>
                        <p>2014年6月：加入上海市工商联、上海市商会，为会员单位</p>
                        <p>2014年7月：成都分公司成立</p>
                        <p>2014年7月：浦东分公司成立</p>
                        <p>2014年8月：九口袋荣获全国质量服务信誉AAA级诚信单位、中国网络营销实战培训行业十大影响力品牌、中国网络营销实战培训客户最满意品牌</p>
                        <p>2014年8月：张启明董事长荣获“2014年中国电子商务十大杰出人物”</p>
                        <p>2014年8月：张启明赴京，进入中央电视台梅地亚中心，CCTV《奋斗》栏目录制创业节目，并被CCTV聘为特约评论员</p>
                        <p>2014年9月：上海九口袋实业有限公司嘉定分公司成立</p>
                        <p>2014年10月：加入上海市重庆商会，为会员单位</p>
                        <p>2014年11月：郑州分公司成立</p>
                        <p>2014年11月：青岛分公司成立</p>
                        <p>2014年11月：加入中国电子商务协会长江经济带专委会，为执行会长单位</p>','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('45','jkdjs','0','师资团队-张启明','<p>
	<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
		雄九控股集团董事长
	</p>
	<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
		酒口袋（上海）投资控股有限公司董事长
	</p>
	<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
		中国电子商务协会长江经济带委员会执行会长
	</p>
	<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
		九口袋实业董事长
	</p>
	<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
		2014中国电子商务十大杰出人物
	</p>
	<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
		2013CCTV年度最佳商业模式获得者
	</p>
	<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
		浙江大学（经典总裁）EMBA导师
	</p>
	<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
		实战新网络新营销课程创始人
	</p>
	<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
		成功打造韩国艺匠、诗克恰、大师帖膜，徽仁财富、欧蒂芙、欧帕斯、叶隆汽车、婴智贝佳、丽琵建材、神元食品等数百家行业龙头老大，被誉为电商界的“营销鬼才”！
	</p>
</p>
<br />','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('46','jkdjs','0','师资团队-蔡国其','<p>上海九口袋实业有限公司执行官</p>
                            <p>实战新网络新营销课程高级讲师</p>
                            <p>浙江大学（经典总裁）EMBA导师</p>
                            <p>中国互联网发展高级研究员</p>
                            <p>中国电子商务协会长江经济带专委会副会长</p>
                            <p>国内著名整合营销专家</p>
                            <p>电子商务团队建设专家</p>

                            <p>从事互联网7年，专注于中小企业落地服务，成功帮助837家企业实现了网上盈利，横跨300多个行业。</p>','1','','','zh-cn','');


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
INSERT INTO `jkd_tag` VALUES ('25','品牌营销系统','ppyx','<span style="color:#666666;font-family:微软雅黑;line-height:normal;background-color:#FEFEFE;">品牌互动传媒：沙龙、活动互动营销、专题互动、朋友圈互动<br />
品牌文化传播：微博裂变式传播、知名媒体品牌传播、搜索引擎品牌传播</span>','zh-cn');
INSERT INTO `jkd_tag` VALUES ('26','展示型营销系统','zsyx','<span style="color:#666666;font-family:微软雅黑;line-height:normal;background-color:#FEFEFE;">平台推广：付费推广系统、免费推广系统、自媒体推广系统<br />
平台成交：客服系统、物流系统、售后系统</span>','zh-cn');
INSERT INTO `jkd_tag` VALUES ('27','社交化营销系统','sjyx','<span style="color:#666666;font-family:微软雅黑;line-height:normal;background-color:#FEFEFE;">微信：微信平台矩阵、微信营销模型、微信推广方式<br />
微博：微博打造系统、微博运营系统、事件营销系统、微博广告系统、微博联动系统、粉丝转化系统</span>','zh-cn');
INSERT INTO `jkd_tag` VALUES ('28','《实战新网络新营销——全网营销大系统》','kcjsa','<span style="color:#333333;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FEFEFE;">国内首家电子商务全网整合营销体系！帮助中小企业快速开启全网营销。</span>','zh-cn');
INSERT INTO `jkd_tag` VALUES ('29',' 我们能为你带来什么？','kcjsb','<span style="color:#333333;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FEFEFE;">打造最适合市场与用户的全网营销系统，</span><br />
<span style="color:#333333;font-family:微软雅黑;font-size:14px;line-height:22px;background-color:#FEFEFE;">成就知名品牌，200%~300%提升成交率！</span>','zh-cn');


# 数据库表：jkd_video 数据信息
INSERT INTO `jkd_video` VALUES ('8','张启明老师授课现场','http://player.youku.com/player.php/sid/XODM1NjA5MzYw/v.swf','','1428973913','1428941416','1','86');
INSERT INTO `jkd_video` VALUES ('7','张启明老师亲自授课视频','http://player.youku.com/player.php/sid/XODM1NjUyMTY0/v.swf','','1428844611','0','1','79');
INSERT INTO `jkd_video` VALUES ('4','九口袋张启明讲全网营销','http://player.youku.com/player.php/sid/XODM1NTAzNzYw/v.swf','<span>全网营销-</span><span>九口袋</span>','1428824229','0','1','77');
INSERT INTO `jkd_video` VALUES ('5','九口袋董事长张启明老师全网营销教学','http://player.youku.com/player.php/sid/XODM1NjA5MzYw/v.swf','九口袋','1428837721','1428837764','1','78');
