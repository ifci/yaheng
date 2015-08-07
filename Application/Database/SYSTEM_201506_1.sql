# -----------------------------------------------------------
# PHP-Amateur database backup files
# Blog: http://blog.51edm.org
# Type: 系统自动备份
# Description:当前SQL文件包含了表：jkd_access、jkd_ad、jkd_admin、jkd_category、jkd_field、jkd_images、jkd_input、jkd_link、jkd_member、jkd_message、jkd_model、jkd_nav、jkd_news、jkd_node、jkd_page、jkd_product、jkd_role、jkd_role_user、jkd_tag、jkd_team、jkd_video的结构信息，表：jkd_access、jkd_ad、jkd_admin、jkd_category、jkd_field、jkd_images、jkd_input、jkd_link、jkd_member、jkd_message、jkd_model、jkd_nav、jkd_news、jkd_node、jkd_page、jkd_product、jkd_role、jkd_role_user、jkd_tag、jkd_team、jkd_video的数据
# Time: 2015-06-01 09:36:10
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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ;

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
  `ename` varchar(50) DEFAULT NULL,
  `type` char(2) NOT NULL DEFAULT 'n',
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻分类表' ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据模型字段' ;

# 数据库表：jkd_images 结构信息
DROP TABLE IF EXISTS `jkd_images`;
CREATE TABLE `jkd_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(20) NOT NULL,
  `savename` varchar(100) NOT NULL,
  `savepath` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段表单域信息' ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据模型信息' ;

# 数据库表：jkd_nav 结构信息
DROP TABLE IF EXISTS `jkd_nav`;
CREATE TABLE `jkd_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL,
  `nav_name` varchar(255) NOT NULL,
  `nav_rename` varchar(255) NOT NULL,
  `parent_id` smallint(5) NOT NULL DEFAULT '0',
  `guide` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `link` varchar(225) NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `target` int(1) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL COMMENT '方法',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_news 结构信息
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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='新闻表' ;

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
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_product 结构信息
DROP TABLE IF EXISTS `jkd_product`;
CREATE TABLE `jkd_product` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cid` smallint(3) DEFAULT NULL COMMENT '所在分类',
  `title` varchar(200) DEFAULT NULL COMMENT '产品标题',
  `ename` varchar(200) DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `psize` varchar(32) NOT NULL,
  `image_id` varchar(255) NOT NULL COMMENT '图片',
  `keywords` varchar(50) DEFAULT NULL COMMENT '产品关键字',
  `description` mediumtext COMMENT '产品描述',
  `status` tinyint(1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='产品表' ;

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

# 数据库表：jkd_team 结构信息
DROP TABLE IF EXISTS `jkd_team`;
CREATE TABLE `jkd_team` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `etit` varchar(255) DEFAULT NULL,
  `etxt` varchar(255) DEFAULT NULL,
  `tit` varchar(255) DEFAULT NULL,
  `txt` varchar(255) DEFAULT NULL,
  `content` text,
  `published` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ;



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
INSERT INTO `jkd_ad` VALUES ('23','首页1','','554b00bc0b017.jpg','index','10','zh-cn');
INSERT INTO `jkd_ad` VALUES ('24','首页2','','5552b4c67cb79.jpg','index','9','zh-cn');
INSERT INTO `jkd_ad` VALUES ('35','手机端-首页1','','55559f02d8612.jpg','mobile','2','zh-cn');
INSERT INTO `jkd_ad` VALUES ('33','远瞻微信公众号','','5551d8aa2f9c9.jpg','bottom','0','zh-cn');
INSERT INTO `jkd_ad` VALUES ('34','远瞻手机端','','5551d8c43d28b.jpg','bottom','0','zh-cn');
INSERT INTO `jkd_ad` VALUES ('36','手机端-首页2','','55559f1bbfd32.png','mobile','1','zh-cn');


# 数据库表：jkd_admin 数据信息
INSERT INTO `jkd_admin` VALUES ('1','超级管理员','admin@qq.com','b3a14e5d4d69f57700561f48eb717504','1','系统最高权限管理员','','1427546072');


# 数据库表：jkd_category 数据信息
INSERT INTO `jkd_category` VALUES ('1','0','新闻动态','','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('2','1','远膽新闻','','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('4','1','投资资讯','','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('61','0','健康医疗','Health Care','p','zh-cn');
INSERT INTO `jkd_category` VALUES ('62','0','移动互联','Mobile Internet','p','zh-cn');
INSERT INTO `jkd_category` VALUES ('63','0','智能硬件','Smart Device','p','zh-cn');


# 数据库表：jkd_field 数据信息


# 数据库表：jkd_images 数据信息
INSERT INTO `jkd_images` VALUES ('114','team','20150512115817_12048.png','/yuanzhan/Uploads/image/page/20150512/20150512115817_12048.png','1431933351');
INSERT INTO `jkd_images` VALUES ('115','team','20150512095716_78848.png','/yuanzhan/Uploads/image/page/20150512/20150512095716_78848.png','1431933457');
INSERT INTO `jkd_images` VALUES ('116','team','20150512095716_78848.png','/yuanzhan/Uploads/image/page/20150512/20150512095716_78848.png','1431933520');
INSERT INTO `jkd_images` VALUES ('117','team','20150512095716_78848.png','/yuanzhan/Uploads/image/page/20150512/20150512095716_78848.png','1431933560');
INSERT INTO `jkd_images` VALUES ('118','team','20150512095716_78848.png','/yuanzhan/Uploads/image/page/20150512/20150512095716_78848.png','1431933576');
INSERT INTO `jkd_images` VALUES ('119','team','20150512115817_12048.png','/yuanzhan/Uploads/image/page/20150512/20150512115817_12048.png','1431933588');
INSERT INTO `jkd_images` VALUES ('121','video','20150512151305_96874.jpg','/yuanzhan/Uploads/image/page/20150512/20150512151305_96874.jpg','1431936385');
INSERT INTO `jkd_images` VALUES ('122','video','20150512151305_96874.jpg','/yuanzhan/Uploads/image/page/20150512/20150512151305_96874.jpg','1431936719');
INSERT INTO `jkd_images` VALUES ('123','video','20150518165134_52537.jpg','/yuanzhan/Uploads/image/page/20150518/20150518165134_52537.jpg','1431939102');
INSERT INTO `jkd_images` VALUES ('162','product','20150519170725_49180.png','/yuanzhan/Uploads/image/product/20150519/20150519170725_49180.png','1432026446');
INSERT INTO `jkd_images` VALUES ('168','product','20150519171351_54114.png','/yuanzhan/Uploads/image/product/20150519/20150519171351_54114.png','1432026832');
INSERT INTO `jkd_images` VALUES ('158','product','20150519170442_67753.png','/yuanzhan/Uploads/image/product/20150519/20150519170442_67753.png','1432026284');
INSERT INTO `jkd_images` VALUES ('156','product','20150519170124_88996.png','/yuanzhan/Uploads/image/product/20150519/20150519170124_88996.png','1432026084');
INSERT INTO `jkd_images` VALUES ('167','product','20150519171225_14505.png','/yuanzhan/Uploads/image/product/20150519/20150519171225_14505.png','1432026746');
INSERT INTO `jkd_images` VALUES ('153','product','20150519165857_68852.png','/yuanzhan/Uploads/image/product/20150519/20150519165857_68852.png','1432025938');
INSERT INTO `jkd_images` VALUES ('152','product','20150519165831_60986.png','/yuanzhan/Uploads/image/product/20150519/20150519165831_60986.png','1432025914');
INSERT INTO `jkd_images` VALUES ('131','product','20150518173842_30120.png','/yuanzhan/Uploads/image/product/20150518/20150518173842_30120.png','1431941923');
INSERT INTO `jkd_images` VALUES ('165','product','20150519171035_32279.png','/yuanzhan/Uploads/image/product/20150519/20150519171035_32279.png','1432026636');
INSERT INTO `jkd_images` VALUES ('138','video','20150518175927_83028.jpg','/yuanzhan/Uploads/image/page/20150518/20150518175927_83028.jpg','1431943169');
INSERT INTO `jkd_images` VALUES ('139','video','20150518175927_83028.jpg','/yuanzhan/Uploads/image/page/20150518/20150518175927_83028.jpg','1431943291');
INSERT INTO `jkd_images` VALUES ('140','video','20150518180301_93009.jpg','/yuanzhan/Uploads/image/page/20150518/20150518180301_93009.jpg','1431943382');
INSERT INTO `jkd_images` VALUES ('141','video','20150518180359_49155.jpg','/yuanzhan/Uploads/image/page/20150518/20150518180359_49155.jpg','1431943440');
INSERT INTO `jkd_images` VALUES ('87','video','20150508114129_82688.jpg','/yuanzhan/Uploads/image/page/20150508/20150508114129_82688.jpg','1431056490');
INSERT INTO `jkd_images` VALUES ('88','video','20150508134909_80246.jpg','/yuanzhan/Uploads/image/page/20150508/20150508134909_80246.jpg','1431064150');
INSERT INTO `jkd_images` VALUES ('89','video','20150508134945_30747.jpg','/yuanzhan/Uploads/image/page/20150508/20150508134945_30747.jpg','1431064204');
INSERT INTO `jkd_images` VALUES ('90','news','20150508141141_71366.jpg','/yuanzhan/Uploads/image/news/20150508/20150508141141_71366.jpg','1431675395');
INSERT INTO `jkd_images` VALUES ('91','news','20150508142524_75091.jpg','/yuanzhan/Uploads/image/news/20150508/20150508142524_75091.jpg','1431066480');
INSERT INTO `jkd_images` VALUES ('92','news','20150508143149_70875.jpg','/yuanzhan/Uploads/image/news/20150508/20150508143149_70875.jpg','1431335738');
INSERT INTO `jkd_images` VALUES ('93','news','20150508143433_11203.jpg','/yuanzhan/Uploads/image/news/20150508/20150508143433_11203.jpg','1431335699');
INSERT INTO `jkd_images` VALUES ('94','news','20150508143538_80883.jpg','/yuanzhan/Uploads/image/news/20150508/20150508143538_80883.jpg','1431066949');
INSERT INTO `jkd_images` VALUES ('95','news','20150508143625_76596.jpg','/yuanzhan/Uploads/image/news/20150508/20150508143625_76596.jpg','1431327886');
INSERT INTO `jkd_images` VALUES ('96','news','20150508143724_59317.jpg','/yuanzhan/Uploads/image/news/20150508/20150508143724_59317.jpg','1431335600');
INSERT INTO `jkd_images` VALUES ('97','news','20150508143753_13902.jpg','/yuanzhan/Uploads/image/news/20150508/20150508143753_13902.jpg','1431067075');
INSERT INTO `jkd_images` VALUES ('98','news','20150508143856_27306.jpg','/yuanzhan/Uploads/image/news/20150508/20150508143856_27306.jpg','1431335669');
INSERT INTO `jkd_images` VALUES ('99','news','20150508143935_10752.jpg','/yuanzhan/Uploads/image/news/20150508/20150508143935_10752.jpg','1431680755');
INSERT INTO `jkd_images` VALUES ('144','product','20150518175230_80945.png','/yuanzhan/Uploads/image/product/20150518/20150518175230_80945.png','1431944865');
INSERT INTO `jkd_images` VALUES ('157','product','20150519170140_74787.png','/yuanzhan/Uploads/image/product/20150519/20150519170140_74787.png','1432026101');
INSERT INTO `jkd_images` VALUES ('164','product','20150519170938_64244.png','/yuanzhan/Uploads/image/product/20150519/20150519170938_64244.png','1432026579');
INSERT INTO `jkd_images` VALUES ('166','product','20150519171126_37778.png','/yuanzhan/Uploads/image/product/20150519/20150519171126_37778.png','1432026687');
INSERT INTO `jkd_images` VALUES ('147','product','20150509115156_78804.jpg','/yuanzhan/Uploads/image/product/20150509/20150509115156_78804.jpg','1431944940');
INSERT INTO `jkd_images` VALUES ('146','product','20150518175410_23156.png','/yuanzhan/Uploads/image/product/20150518/20150518175410_23156.png','1431944915');
INSERT INTO `jkd_images` VALUES ('106','team','20150512093406_62673.jpg','/yuanzhan/Uploads/image/page/20150512/20150512093406_62673.jpg','1431394451');
INSERT INTO `jkd_images` VALUES ('107','team','20150512093406_62673.jpg','/yuanzhan/Uploads/image/page/20150512/20150512093406_62673.jpg','1431394461');
INSERT INTO `jkd_images` VALUES ('108','team','20150512095716_78848.png','/yuanzhan/Uploads/image/page/20150512/20150512095716_78848.png','1431395871');
INSERT INTO `jkd_images` VALUES ('109','team','20150512095716_78848.png','/yuanzhan/Uploads/image/page/20150512/20150512095716_78848.png','1431397638');
INSERT INTO `jkd_images` VALUES ('110','team','20150512095716_78848.png','/yuanzhan/Uploads/image/page/20150512/20150512095716_78848.png','1431397645');
INSERT INTO `jkd_images` VALUES ('111','team','20150512115817_12048.png','/yuanzhan/Uploads/image/page/20150512/20150512115817_12048.png','1431403100');
INSERT INTO `jkd_images` VALUES ('112','team','20150512115817_12048.png','/yuanzhan/Uploads/image/page/20150512/20150512115817_12048.png','1431403432');
INSERT INTO `jkd_images` VALUES ('113','video','20150512151305_96874.jpg','/yuanzhan/Uploads/image/page/20150512/20150512151305_96874.jpg','1431414787');


# 数据库表：jkd_input 数据信息


# 数据库表：jkd_link 数据信息


# 数据库表：jkd_member 数据信息


# 数据库表：jkd_message 数据信息
INSERT INTO `jkd_message` VALUES ('15','2','','2','0','1428844169','');
INSERT INTO `jkd_message` VALUES ('16','3','','3','0','1428844215','');


# 数据库表：jkd_model 数据信息


# 数据库表：jkd_nav 数据信息
INSERT INTO `jkd_nav` VALUES ('61','link','投资团队','Team','0','0','top','team.html','zh-cn','2','0','Team/index');
INSERT INTO `jkd_nav` VALUES ('56','link','投资组合','Portfolio','0','0','top','product.html','zh-cn','3','0','Product/index');
INSERT INTO `jkd_nav` VALUES ('57','news','新闻动态','News','0','1','top','news.html','zh-cn','1','0','News/index');
INSERT INTO `jkd_nav` VALUES ('63','link','投资团队','','0','0','bottom','team.html','zh-cn','2','0','Team/index');
INSERT INTO `jkd_nav` VALUES ('62','link','投资组合','','0','0','bottom','product.html','zh-cn','1','0','Product/index');
INSERT INTO `jkd_nav` VALUES ('64','link','新闻动态','','0','0','bottom','news.html','zh-cn','3','0','News/index');
INSERT INTO `jkd_nav` VALUES ('65','link','联系我们','','0','0','bottom','connect.html','zh-cn','4','0','Connect/index');
INSERT INTO `jkd_nav` VALUES ('66','link','法律声明','','0','0','bottom','law.html','zh-cn','5','0','Law/index');


# 数据库表：jkd_news 数据信息
INSERT INTO `jkd_news` VALUES ('31','2',' 远瞻资本赴重庆永川区考察投资','','','1','','1431064574','1431675395','6月17日至21日，区长方军率队赴浙江省杭州市、台州市、绍兴市、江苏省南京市等地进行招商考察 …… &nbsp; &nbsp;方军强调，…… &nbsp; &nbsp; 业发展，促进合作共赢，让更多的企业来永投资发展。…… &nbsp; &nbsp; &nbsp;','6','1','1','90','zh-cn','');
INSERT INTO `jkd_news` VALUES ('35','2','三向云台超稳定 大疆四轴飞行器Vision+评测','','','1','2014年4月7日，大疆公司在深圳Maker Faire大会上发布了最新一代的四轴航拍器Phantom 2 Vision+，相较于前作vision，此次主要的改进是将摄像云台升级为了3向，摄像头也可垂直90°俯拍地面，遥控范围也由之前的300提升到了700米，性能非常之强悍。网易数码也于近日收到了这款航拍器，我们一起来看下吧。    大疆随机附赠了四支螺旋桨以备更换，固定云台的防脱落螺钉、减震器、…','1431066710','1431335738','<p>2014年4月7日，大疆公司在深圳Maker Faire大会上发布了最新一代的四轴航拍器Phantom 2 Vision+，相较于前作vision，此次主要的改进是将摄像云台升级为了3向，摄像头也可垂直90°俯拍地面，遥控范围也由之前的300提升到了700米，性能非常之强悍。网易数码也于近日收到了这款航拍器，我们一起来看下吧。</p>
<p>
	<img src="http://img6.cache.netease.com/digi/2014/5/19/20140519142359e102b_550.jpg" alt="三向云台超稳定 大疆四轴飞行器Vision+评测" /> 
</p>
<p>
	<br />
</p>
<p>
	<img src="http://img5.cache.netease.com/digi/2014/5/19/201405191426132e410.jpg" alt="三向云台超稳定 大疆四轴飞行器Vision+评测" /> 
</p>
<p>
	<img src="http://img1.cache.netease.com/digi/2014/5/19/20140519142615fef7b.jpg" alt="三向云台超稳定 大疆四轴飞行器Vision+评测" /> 
</p>
<p>
	<img src="http://img5.cache.netease.com/digi/2014/5/19/20140519142618d4ef3.jpg" alt="三向云台超稳定 大疆四轴飞行器Vision+评测" /> 
</p>
<p>
	大疆随机附赠了四支螺旋桨以备更换，固定云台的防脱落螺钉、减震器、螺丝以及脚架的防震海绵
</p>','15','1','0','92','zh-cn','');
INSERT INTO `jkd_news` VALUES ('36','4','港媒称中国学生研发小型无人机 销量占全球一半','','','1','大疆推出了微型一体机“PHANTOM”，行销全球参考消息网5月6日报道 境外媒体称，一名在香港科技大学毕业的中国学生研发的小型无人机，销量占全球一半，更令“中国制造”在高科技领域崭露头角。台湾“中央社”网站5月5日援引香港《大公报》报道称，这名学生叫汪滔，籍贯杭州市，于2003年到香港科技大学读电子与计算机工程学系。2005年，他与两位同学开始研究无人驾驶飞行技术，经过大半年试验有了突破，成功让飞…','1431066909','1431335699','<div>
	<p>
		<img alt="大疆推出了微型一体机“PHANTOM”，行销全球。" src="http://i1.sinaimg.cn/jc/2014-05-06/U9298P27T1D777777F26DT20140506140547.jpg" /> 
	</p>
	<p>
		大疆推出了微型一体机“PHANTOM”，行销全球
	</p>
	<p>
		<br />
	</p>
	<p>
		参考消息网5月6日报道 境外媒体称，一名在香港科技大学毕业的中国学生研发的小型无人机，销量占全球一半，更令“中国制造”在高科技领域崭露头角。
	</p>
	<p>
		台湾“中央社”网站5月5日援引香港《大公报》报道称，这名学生叫汪滔，籍贯杭州市，于2003年到香港科技大学读电子与计算机工程学系。
	</p>
	<p>
		2005年，他与两位同学开始研究无人驾驶飞行技术，经过大半年试验有了突破，成功让飞机起飞。
	</p>
	<p>
		隔年，他和朋友以筹集到的200万元港币在深圳市成立了大疆创新公司。但他把母公司放在香港，以借助香港的技术人才、低税制优惠等。
	</p>
	<p>
		2012年底，大疆推出了微型一体机“PHANTOM”，行销全球。
	</p>
	<p>
		这款无人机售价几千元港币，它携带一个摄影机，可以在高空进行拍摄，画面可以在连接好的手机上清晰显示。据说，这款飞机很适合进行电影高空拍摄。
	</p>
	<p>
		据报道，这家公司如今已有1000多名员工，最近3年的销售额成长79倍，跻身全球增速最快的公司行列。但报道没有透露具体销售量。
	</p>
	<p>
		有美国媒体曾指出，这名在香港受教育的学生所研发的产品令“中国制造”在欧美高手如林的高科技领域崭露头角，名利双收。
	</p>
	<p>
		报道说，汪滔取得成功后正回馈母校，与母校推出“联合奖学金计划”，对电子与计算机工程博士或硕士项目的录取者，每月提供港币1.4万元的全额奖学金。
	</p>
</div>
<div>
	<p>
		<img alt="大疆推出了微型一体机“PHANTOM”，行销全球。" src="http://i1.sinaimg.cn/jc/2014-05-06/U9298P27T1D777777F26DT20140506140547.jpg" /> 
	</p>
	<p>
		大疆推出了微型一体机“PHANTOM”，行销全球
	</p>
	<p>
		<br />
	</p>
	<p>
		参考消息网5月6日报道 境外媒体称，一名在香港科技大学毕业的中国学生研发的小型无人机，销量占全球一半，更令“中国制造”在高科技领域崭露头角。
	</p>
	<p>
		台湾“中央社”网站5月5日援引香港《大公报》报道称，这名学生叫汪滔，籍贯杭州市，于2003年到香港科技大学读电子与计算机工程学系。
	</p>
	<p>
		2005年，他与两位同学开始研究无人驾驶飞行技术，经过大半年试验有了突破，成功让飞机起飞。
	</p>
	<p>
		隔年，他和朋友以筹集到的200万元港币在深圳市成立了大疆创新公司。但他把母公司放在香港，以借助香港的技术人才、低税制优惠等。
	</p>
	<p>
		2012年底，大疆推出了微型一体机“PHANTOM”，行销全球。
	</p>
	<p>
		这款无人机售价几千元港币，它携带一个摄影机，可以在高空进行拍摄，画面可以在连接好的手机上清晰显示。据说，这款飞机很适合进行电影高空拍摄。
	</p>
	<p>
		据报道，这家公司如今已有1000多名员工，最近3年的销售额成长79倍，跻身全球增速最快的公司行列。但报道没有透露具体销售量。
	</p>
	<p>
		有美国媒体曾指出，这名在香港受教育的学生所研发的产品令“中国制造”在欧美高手如林的高科技领域崭露头角，名利双收。
	</p>
	<p>
		报道说，汪滔取得成功后正回馈母校，与母校推出“联合奖学金计划”，对电子与计算机工程博士或硕士项目的录取者，每月提供港币1.4万元的全额奖学金。
	</p>
</div>','5','1','0','93','zh-cn','');
INSERT INTO `jkd_news` VALUES ('37','2','个性化助听器iHear推出：可连接电脑进行调试','','','1','腾讯数码讯（编译：郑双艳）目前，美国近20%的成年人存在着某种形式的听力下降问题，但可供他们选择的助听器却屈指可数。他们要么需要花费数千美元从医院购买助听器，要么只能以几百美元的价格购买功能预设的低价助听设备。实际上，在遭受听力下降困扰的所有成年人当中，大约75%至80%没有配备助听设备，主要原因是保险公司不会报销这方面的费用。iHear旨在让那些听力下降的人拥有一个更为便宜的选择，通过基于网络的&hellip;','1431066949','','<p>
	腾讯数码讯（编译：郑双艳）目前，美国近20%的成年人存在着某种形式的听力下降问题，但可供他们选择的助听器却屈指可数。他们要么需要花费数千美元从医院购买助听器，要么只能以几百美元的价格购买功能预设的低价助听设备。实际上，在遭受听力下降困扰的所有成年人当中，大约75%至80%没有配备助听设备，主要原因是保险公司不会报销这方面的费用。
</p>
<p>
	iHear旨在让那些听力下降的人拥有一个更为便宜的选择，通过基于网络的听力测试，他们可以不出家门就能轻松定制助听设备。该公司的目标是，最终能让全世界3.5亿听力障碍者都拥有自己的助听器。
</p>
<p>
	iHear由以生物医学工程师、创业者Adnan Shennib为首的一个团队创办，日前在众筹网站Indiegogo上启动了一个融资项目，计划融资6.5万美元，迄今已经募集资金2.4万美元。iHear助听设备售价从199美元（约合人民币1200元）起，包括一个测试套件以及一项在线访问iHear诊断软件的服务。
</p>
<p>
	Adnan Shennib表示，他们已就iHear的生产和销售与供应商和制造商签订了协议，不出意外的话，iHear应该能在今年8月的目标日期出货。该公司还向美国食品与药品管理局（FDA）提交了文件，寻求获得该机构的批准，同时还希望保险公司能够报销iHear的费用。
</p>
<p>
	每销售一台设备，iHear公司都会通过非盈利合作伙伴将一定的收益捐给经济条件不好的人。他希望，用户能将iHear看作是类似于智能手机一样的设备，因为他们可以通过下载新软件对设备进行定制。iHear将根据用户反馈的信息，不断推出新功能和新设置。每一台iHear设备目前都能保持最多四种设置，使用者可通过遥控器进行选择。
</p>
<p>
	若想创建iHear个性化助听方案，用户首先需要通过USB接口将他们的助听器连接到电脑上，然后利用iHear的在线诊断工具进行调试。用户还可以对每台设备进行不同环境的设置，以便能按照他们的实际需要进行转换。
</p>
<p>
	作为激励人们（即便他们不是听力障碍者）支持iHear众筹项目的一项措施，只要有人出资29美元（约合人民币180元）及以上，iHear将向他们免费赠送一副高保真降噪耳机。这副耳机最初开发主要用以配合在线听力测试。
</p>
<p>
	Adnan Shennib 表示：“我们发现，对于大多数用户而言，我们开发的先进技术产品最终竟然成了一种奢侈品。于是，我们创办了iHear，而且将它更多的作为一种使命，而不是一家公司，希望能让以前买不起助听器的人现在都能买得起。”
</p>
<div>
	<br />
</div>','14','1','0','94','zh-cn','');
INSERT INTO `jkd_news` VALUES ('38','4','破译大疆创新无人机腾飞密码','','','1','如果不是2013年年终奖那10辆奔驰，位于深圳南山区的大疆创新，可能不会被称作“土豪公司”并广为宣传。　这家2010~2012年销售额累计增长79倍的公司，其实是2006年起步的大学生创业公司，从事无人机控制系统研发和生产，主营民用无人飞行器航拍。热播电视节目《爸爸，去哪儿》中，摄制组所使用的正是大疆创新无人航拍飞行器。　而近期深圳政府出台的《深圳市航空航天产业发展规划…','1431066994','1431327886','<p>
	如果不是2013年年终奖那10辆奔驰，位于深圳南山区的大疆创新，可能不会被称作“土豪公司”并广为宣传。
</p>
<p>
	　这家2010~2012年销售额累计增长79倍的公司，其实是2006年起步的大学生创业公司，从事无人机控制系统研发和生产，主营民用无人飞行器航拍。热播电视节目《爸爸，去哪儿》中，摄制组所使用的正是大疆创新无人航拍飞行器。
</p>
<p>
	　而近期深圳政府出台的《深圳市航空航天产业发展规划（2013-2020年）》，更是把大疆创新等列为飞行控制、航拍领域的国内领先企业。时下资本市场，无人机概念正方兴未艾，多家上市公司纷纷涉足却鲜有盈利，尚未上市的大疆创新为何快人一步？
</p>
<p>
	　79倍增速
</p>
<p>
	“79倍，这个数据是什么概念？”大疆创新创始人汪滔列举了企业增速排名软件的统计结果。
</p>
<p>
	　根据该软件数据，与2013年销售额高于1亿美元的美国科技公司相比，大疆创新增速排名第二，仅次于一家增速达123倍的美国互联网公司。大疆创新企业宣传部富嘉铭表示，大疆创新80%销售额来自海外，北美市场是大疆创新最大的海外市场。
</p>
<p>
	“我们是比较幸运的。”汪滔坦言，和大部分创业故事版本一样，大疆创新也非一路坦途。
</p>
<p>
	&nbsp;香港科技大学校友会主席何苗介绍说，大疆创新2010年销售额只有300多万元，汪滔面临资金困难，希望校友筹集500万元。当时大疆创新已创业4年。“我错失了第一次做‘土豪’的机会。”何苗说。
</p>
<p>
	&nbsp;回顾创业历程，大疆创新从做安装在无人机上的控制器，继而发现无人飞行器航拍的市场接入点，转做整机和稳定的飞行平台，以及高清数字视屏传输模块，再到如今致力于提供完整飞行影像策略，经历了不断的定位调整。
</p>
<p>
	&nbsp; 市场上的一路打拼，让汪滔看到学到如何处理研发与市场的关系。“找到市场是很重要的事情。不是在家里闭门造车造出一个技术领先十年的产品，这样的话很难有这么大的现金流，人也熬不了很久，所以边卖边改进产品是最好的方式。”
</p>
<p>
	&nbsp; 国内无人机研究领域专家、西北大学深圳研究学院副院长杨金铭认为，大疆创新的模式是依赖现有无人机平台，进一步搭载摄像机的无人飞行组合。
</p>
<p>
	&nbsp; 如今，大疆创新已推出内置照相机的无人驾驶飞行平台、无人驾驶飞行控制器等产品，让无人驾驶飞行技术与航空拍摄相接合，定价从2000多元到十几万元不等。而据香港商报报道，大疆创新的2012年销售额达到2亿元，预计2013年的销售额将增加3倍达到8亿元。对于市场上关于大疆创新要上市的传闻，汪滔也透露“有可能”。
</p>
<p>
	&nbsp;&nbsp;航拍的秘密
</p>
<p>
	&nbsp;“大疆创新是目前无人机领域销售额最大的公司，也是国内产品化最好的无人机公司。”北京信息科技大学无人航空技术研究协会会长唐荣宽称。
</p>
<p>
	&nbsp; 唐荣宽的这一点也被同行认同。北京三足里航空经理白振业称，大疆创新虽然与国外无人机领先技术尚有差距，但是在国内足够领先。山东临忻风云航空总经理王浩也表示，大疆创新的特色在于产品化程度高，风云航空就引用了大疆创新的飞行控制技术。
</p>
<p>
	&nbsp; 除了提供完整的飞行拍摄整体策略，无人机零件模块方面，大疆创新也有涉及。在大疆创新的官网上，罗列了多达850条的大疆创新维基百科，列举不同的无人机零件模块。据汪滔介绍，大疆创新的所有技术都是自主研发。
</p>
<p>
	&nbsp; 杨金铭分析称，把无人机模块集成化加上航模轻便化，操作简易化，是大疆创新成功的核心。
</p>
<p>
	&nbsp; 大疆创新官网上，翻译了一篇2014年1月1日《纽约时报》对大疆创新Phantom 2 Vision航拍飞行器的测评报道。对这款全球首款自带相机的飞行器，作者Kit Eaton称，尽管Vision是一款复杂的高科技产品，但是它的智能化操控远远比传统的遥控飞机简易，并直呼该产品“太好玩了！”
</p>
<p>
	“当你停止遥控器操作，Vision会依赖GPS系统悬停空中，即便在有风的情况下，还能基本保持垂直和水平的位置。”“如果飞行过程中遥控器的信号中断，飞行器可以依靠GPS自动返航到起飞地点。”Kit Eaton写道。
</p>
<p>
	&nbsp; 虽然从专业拍摄角度上，Vision相机的影像效果并不完美，照片质量比不上专业的单反相机，但是Kit Eaton表示，“那些充斥圣诞礼品市场、价值20美金的小型遥控直升飞机，与（售价1200美元的）Vision相比，无论在哪方面都望尘莫及。”
</p>
<p>
	&nbsp; 除了无人机航模操作的简易化，作为无人飞行器另一个重要特点是续航时间。据唐荣宽介绍，在国内无人飞行器拍摄领域，续航时间20分钟就形成了一道技术门槛，而大疆创新的续航时间则能平均做到30分钟。据了解，国际尖端无人飞行器，例如德国生产的Microdones MD4-200续航时间可达1个小时。对此，汪滔表示，如果不考虑产品的实用性，大疆创新基本可以做到80分钟的续航时间。但是，整体产品要考虑载重、蓄电与实用性的平衡，在1公里范围内，30分钟正是个合适的时间点。
</p>
<p>
	&nbsp;&nbsp;沉静的20%
</p>
<p>
	&nbsp; 技术优势，同时匹配低成本批量生产，就形成了大疆创新的杀手锏。
</p>
<p>
	&nbsp; 相比国内同行，大疆创新的产品价格比国内同行低不少，即使涨价也依然有优势。据了解，无人机模块销售价格曾经达到几万元甚至十几万元，现在大疆创新的产品价格控制在数百元以内。
</p>
<p>
	&nbsp; 对于业内关于大疆创新产品是否会提价的疑问，汪滔表示，目前不会考虑提高价格，因为公司想通过低价策略从而扩大销售规模。并且即使算上50%的毛利，大疆创新产品的售价也只是竞争对手的成本价。
</p>
<p>
	&nbsp; 汪滔直言，现阶段与竞争对手拉开距离，就是大疆创新的核心竞争策略。“别人在做零件的时候，我们在做整机，并且我们是以低价去经销这个零件，并以最大的量产，对竞争对手形成一种最大的压迫力。因为竞争对手没有量，所以就完全没有办法跟我们竞争。”
</p>
<p>
	&nbsp; 而据富嘉铭介绍，公司的研发和生产都是自主进行。“我们要把高精尖贵的东西做到大批量、性能好，人人都可以买得起，可以满足大众用户的需求。”汪滔也表示，目前大疆创新的产品价格从2000元到数十万元不等。
</p>
<p>
	&nbsp;&nbsp;现在，海外市场占了大疆创新80%的销售额，目前公司产品主要以代理销售形式售往中国香港、日本、德国、法国、英国和美国等地区。与之相比，对于目前国内仅占20%的市场，汪滔似乎并不急于开拓。而当被问到是否会参与国内军方采购时，汪滔则直接给了否定回答。
</p>
<p>
	&nbsp; 2013年9月18日，大疆创新才在天猫商城正式推行产品Phantom直销，补充销售渠道。对于国内市场，汪滔坦言在销售额巨幅增加的情况下，会面临很多问题，特别是缺乏合适的人才与管理构架。
</p>
<p>
	&nbsp; 据了解，日前，美国联邦航空管理局批准6个地点进行无人机测试，2015年前将规划无人机商业运作管理。与之相比，去年12月底，北京市公安局因违规遥控无人机、延误多家航班为由，将四名涉案人员刑事拘留。而这也暴露出国内无人机航空管理的空白。
</p>
<p>
	&nbsp; 无人机有众多细分市场，航拍只是其中一块，但汪滔无疑找到了最容易被消费者接受的一个细分领域。
</p>
<p>
	&nbsp; 目前，国内无人机市场染指者甚众，包括山东矿机等上市公司也纷纷涉足，但据行业分析师介绍，目前国内无人机尚未实现产业化。
</p>
<p>
	&nbsp; 杨金铭认为，如果拿产业作比较，目前国内的无人机产业发展还处于“福特汽车时代”。
</p>
<p>
	&nbsp; 而在这个无人机“福特汽车时代”，汪滔毫不掩饰野心：“深圳是一个信息充分沟通的地方，我们现在还有机会做到一个更大的格局，所以我愿意通过这样一个销售模式，确保三年以后、五年以后可以有一家独大的格局。
</p>','9','1','0','95','zh-cn','');
INSERT INTO `jkd_news` VALUES ('39','2','大成律师事务所《香港H股上市业务发展论坛》在香港成功召开','','','1','2013年4月18日，大成北京总部资本市场部《香港H股上市业务发展论坛》（以下简称“本次论坛”）在香港君悦酒店盛大召开。       近年来，在内地与香港政府的共同努力下，出现了一系列境内企业香港上市的政策利好。加之目前A股市场等候发行审核的拟上市公司甚众，香港市场无疑成为境内一些优质企业倍加关注的上市融资平台。    &nb…','1431067058','1431335600','<p>
	&nbsp;2013年4月18日，大成北京总部资本市场部《香港H股上市业务发展论坛》（以下简称“本次论坛”）在香港君悦酒店盛大召开。
</p>
<p>
	近年来，在内地与香港政府的共同努力下，出现了一系列境内企业香港上市的政策利好。加之目前A股市场等候发行审核的拟上市公司甚众，香港市场无疑成为境内一些优质企业倍加关注的上市融资平台。
</p>
<p>
	本次论坛由大成北京总部资本市场部主办，旨在结合H股上市政策新环境，为香港证监会、香港联交所、著名律师事务所、会计师事务所、证券公司、投行及重要客户提供良好的交流机会。论坛的演讲嘉宾就香港H股上市业务发展新环境及新机遇做出了阐述，并对香港及内地经济发展新方向进行了深入的探讨与交流。出席本次论坛的演讲嘉宾有：香港联交所前副主席冯志坚先生、香港交易所内地业务发展部副总监钟创新先生、香港交易及结算所有限公司上市科前高级顾问连达鹏先生、中国国际金融有限公司投资银行部执行总经理陈永仁先生、安信融资香港有限公司执行董事常煊先生、中国银河国际金融控股有限公司投资银行部董事总经理杨锐先生、罗宾咸永道会计师事务所（香港）资本市场部合伙人梁宝华女士、远瞻股权投资(上海)有限公司合伙人及东方财务管理有限公司总裁崔鸣先生。
</p>
<p>
	另外，国浩资本有限公司、华泰联合证券有限责任公司、普华永道中天会计师事务所有限公司等机构负责人亦作为受邀嘉宾出席了本次论坛。
</p>
<div>
	<p>
		人民日报人民香港有限公司有关人员出席了本次论坛，并对本次论坛给予报道。
	</p>
	<div>
		<br />
	</div>
</div>','253','1','0','96','zh-cn','');
INSERT INTO `jkd_news` VALUES ('41','4','嘉兴：努力实现“产业加资本资本引领产业”双融合','','','1','上周，我市在上海举行了支持浙商创业创新洽谈会及服务业重点项目推介会，除了向与会客商介绍嘉兴市投资环境和创业创新政策外，还推介了228个重点项目，其中金融产业有59个项目。推出的金融产业项目数虽不是最多，但前来参会的上海金融界人士占到了整个客商的近一半，而且都是重量级的，其中包括兴业银行、太平洋资产、软银中国、红杉资本、光大金控、凯石投资等知名金融机构的负责人。　　推介会现场共有28个项目签约，总投…','1431067137','1431335669','<p>
	上周，我市在上海举行了支持浙商创业创新洽谈会及服务业重点项目推介会，除了向与会客商介绍嘉兴市投资环境和创业创新政策外，还推介了228个重点项目，其中金融产业有59个项目。推出的金融产业项目数虽不是最多，但前来参会的上海金融界人士占到了整个客商的近一半，而且都是重量级的，其中包括兴业银行、太平洋资产、软银中国、红杉资本、光大金控、凯石投资等知名金融机构的负责人。
</p>
<p>
	推介会现场共有28个项目签约，总投资达685.7亿元。其中金融产业10个，投资额673.9亿元。
</p>
<p>
	“绿色金融”：3年500亿元支持城市有机更新、水环境治理
</p>
<p>
	现场签约的10个金融项目总投资额673.9亿元，其中不得不提的就是“绿色金融”投资基金项目，这个项目的投资额为3年500亿元。该项目是我市与兴业银行杭州分行签订的，资金将用于支持嘉兴的城市有机更新、水环境治理、要素优化等。
</p>
<p>
	兴业银行杭州分行党委书记、行长张长弓介绍说，“绿色金融”是顺应中国金融产品创新的一项新生事业，主要体现在几个方面，第一个就是人居环境的改善，第二个是资源的节约，第三个就是节能减排以及要素的优化组合。
</p>
<p>
	谈及投资嘉兴的原因，张长弓说：“首先是嘉兴有这样的市场需求，嘉兴正在谋划改善水的质量，我们希望在水处理方面，以及其他一系列的绿色金融领域里面与嘉兴市有更好的合作。”改革开放三十年来，嘉兴的社会经济、文化等各项事业都取得了令人瞩目的成就，城市综合实力提升的同时，嘉兴在产业转型升级、生态环境建设、城乡统筹发展、城市功能完善等方面也显示出巨大的发展空间和潜力，政府具有很大的作为空间来充分挖掘这些方面的潜力。而截至2012年末，兴业银行的资产总额已经达到3万多亿元，特别是近几年来，兴业银行在债务融资工具、结构化融资、资产管理等新型业务领域形成了一定的优势。
</p>
<p>
	张长弓透露，近期有望落地一单50亿元的项目，如果这个项目顺利落地的话，应该是嘉兴市成立以来最大的一笔单项投资，“这个项目是一个绿色有机更新项目，与城市功能的提升完善、城市的保护、旧城的改造以及其他方面要素的优化是结合在一起的。”
</p>
<p>
	客商：寻找合适项目关心政策优势
</p>
<p>
	项目业主：考虑各种融资可能
</p>
<p>
	此次来参会的金融界客商不论属于哪种业态，大体分两种，一种是来寻找合适的项目，另一种则是来了解嘉兴的金融政策，寻找落户的可能。记者与几位客商交谈后得知，商务成本并不是他们选择嘉兴的主要原因，政策优势才是他们最关心的。
</p>
<p>
	远瞻股权投资管理(上海)有限公司是做PE的，已与嘉兴金融办接触多次，正在嘉兴寻找一些适合投资的项目。“我们主要看的是拟上市的企业，嘉兴现在差不多有70家后备企业，量是蛮大的，但是我们还处于比较早期的筛选阶段，就是和各企业接洽的阶段。”公司创始合伙人李喆说。
</p>
<p>
	当记者问是否会将公司落户嘉兴时，李喆表示：“对于我们这样的机构来说，首先会考察哪边的资源更加丰富，不管是政府的政策，还是我们能够享受到的其他的一些资源，哪边更加丰富我们就会选择在哪边注册。运营成本不会是我们首先考虑的因素，最重要的是政府的优惠政策，还有就是比如说我在那边注册能够享受到一些什么样的资源共享吧。”
</p>
<p>
	推介会不仅吸引了上海的客商，连嘉兴本地的券商也慕名前来。新时代证券有限公司嘉兴吉杨路证券营业部机构部经理靳海军说，政策引导、政策扶持的行业是他们选择的重点。他对嘉兴港区推介的几个项目比较感兴趣，在会场上就与嘉兴滨海控股集团有限公司总经理助理赵菊明聊上了。
</p>
<p>
	赵菊明介绍，此次嘉兴港区共推出了债务优化项目、集装箱标场物流项目、长安桥社区集聚改造项目、滨海新城旧城改造4个项目，“我们也希望从一些大的基金公司、证券公司那里融资，毕竟现在项目都想搞，而且都想做大。”
</p>
<p>
	解决两步融合问题
</p>
<p>
	张长弓认为，地方政府在推动金融创新，充分分享并运用金融改革成果方面应该发挥引领和示范作用。一个地方如何充分运用并分享金融改革的丰硕成果，仅仅依靠地方一些中小企业的自发行为是难以有大作为的，可以说在当前社会环境下金融改革成果的落地，政府的作用无可替代。
</p>
<p>
	事实上，我市早就领悟到这些，去年各地相继成立了金融办，高度重视金融业的发展以及政府的引领示范作用。市金融办主任王申峰表示，嘉兴支持中小企业的政策很多，下一步可能研究如何用好政府的资金来起到“四两拨千斤”的作用。
</p>
<p>
	“可能设立一些引导资金，一方面可以创新我们的融资模式，吸引民间资金来参与跟上海金融界的各种金融资源对接；第二个，在这个过程当中可以运用好政府资金的杠杆作用，来放大政府的扶持力度。”
</p>
<p>
	此外，浙江民营经济发达，从金融产业培育角度，怎么运用好金融工具，在金融市场里面找到可以发展的余地，也是我们下一步要破的题。
</p>
<p>
	王申峰将我市转型发展当中碰到的一个最核心、下一步最要解决的问题概括为“两步都要融合的：一个是产业加资本，第二个资本引领产业发展”。
</p>','40','1','0','98','zh-cn','');
INSERT INTO `jkd_news` VALUES ('42','4','永川区区长方军在浙江江苏招商考察时强调服务企业发展 促进合作共赢','远瞻投权','永川区区长方军在浙江江苏招商考察时强调服务企业发展','1','6月17日至21日，区长方军率队赴浙江省杭州市、台州市、绍兴市、江苏省南京市等地进行招商考察。考察中，方军强调，服务企业发展，促进合作共赢，让更多的企业来永投资发展。        6月17日，浙江烈日炎炎，方军一行不顾旅途劳累，首先前往公元集团核心公司——永高股份有限公司实地考察。方军对公元集团的精细化管理及企业文化建设给予了高度评价。方军指出，…','1431067187','1431680755','<p>
	6月17日至21日，区长方军率队赴浙江省杭州市、台州市、绍兴市、江苏省南京市等地进行招商考察。考察中，方军强调，服务企业发展，促进合作共赢，让更多的企业来永投资发展。
</p>
<p>
	6月17日，浙江烈日炎炎，方军一行不顾旅途劳累，首先前往公元集团核心公司——永高股份有限公司实地考察。方军对公元集团的精细化管理及企业文化建设给予了高度评价。方军指出，永川要学习公元集团想干事、能干事、干成事的企业精神，积极为公元集团重庆永高塑业发展有限公司做好服务，助推企业发展壮大，促进合作共赢。
</p>
<p>
	6月18日，方军一行实地考察了由永川籍在浙成功人士创办的绍兴精越机电有限公司。当了解到公司年产值逾1亿元时，方军说，永川有许多在外创业成功人士，他们以坚忍不拔的毅力、开拓进取的精神、沉着应变的思维，在外创业取得了成功。希望更多永川人积极创业，一如既往地关注关心家乡建设，多为家乡建设牵线搭桥，寻找合适项目回乡创业。考察中，方军就精越机电公司在永投资项目和有意向来永企业负责人进行了深入交谈。
</p>
<p>
	6月19日，方军一行与浙江正大控股集团、华宝斋富翰文化公司、海通能源（海通管桩）有限公司等企业负责人进行了座谈；是日下午，方军一行还拜访了浙江省经济合作交流办公室负责人。方军希望浙江企业多到重庆永川开拓市场，并邀请富春建业、力拓金属、万里扬股份、亚厦股份、金盾股份、远瞻股权投资公司等企业到永川考察投资，交流合作。
</p>
<p>
	6月20日，方军一行赴江苏省南京市考察，就中国（南京）软件谷建设发展进行了深入了解。考察中，方军说，南京软件谷在软件领域走在了全国前列，其成功经验，值得永川学习借鉴，希望南京软件谷领导来永考察指导，与永川进行更多的交流合作，促进两地经济更好更快发展。
</p>
<p>
	考察中，方军一行还前往南京中成新照明科技有限公司等企业进行了考察，并出席了宁波江东亚伟金手指速录科技公司、绍兴柯岩华益农业有限公司分别与我区服务外包园区、何埂镇开展项目合作的签约仪式。
</p>
<p>
	区人大常委会副主任王建华一同前往考察。
</p>','27','1','0','99','zh-cn','');


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
INSERT INTO `jkd_page` VALUES ('47','flsm','0','法律声明','<p>
	All content of this web is Copyright&copy;2014 Lighthouse Capital LLC. This website does not assert copyright of non-original content. If any visitor considers that his copyright has been infringed , please email or call us for immediate action.The information provided should not be considered a recommendation to purchase or sell any particular equity or debt and is not intended to solicit clients or investors. All content is communicated and approved by Lighthouse Capital LLC for the purposes of the China market laws and regulations.
</p>
<p>
	<br />
</p>
<p>
	本网站内容的版权属远瞻股权投资管理（上海）有限公司所有。网站采用的非本站原创图片和视频等内容无法一一和版权者联系，如果本网所选内容的图片、视频等内容的作者及编辑认为其作品不宜上网供大家浏览，或不应无偿使用，请及时用电子邮件或电话通知我们，以迅速采取适当措施，避免给双方造成不必要的经济损失。网站提供的内容不应被视为购买或出售任何特定股票的建议，且任何内容没有任何招揽客户或投资者的意图。网站内容经远瞻股权投资管理（上海）有限公司批准，符合中国市场法律和监管要求。
</p>','1','','','zh-cn','');


# 数据库表：jkd_product 数据信息
INSERT INTO `jkd_product` VALUES ('39','61','wellist','Personized Caregiving O2O Service','0.00','','144','','在线定制家庭护理服务工具','1','http://www.wellist.com/','','1431142320','1431944865','','zh-cn','1','0','1','0');
INSERT INTO `jkd_product` VALUES ('40','62','ZappyLab','Protocols Repository for Life Science','0.00','','157','','全球首个生命科学实验方案库','1','http://www.zappylab.com/','','1431142934','1432026101','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('41','61','Somersault','Customized Knee/Hip Joint Cutting Guide','0.00','','164','','客制化骨科关节切割导向板','1','http://www.somersaultortho.com/','','1431143231','1432026579','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('42','61','iHEAR','Revolutionary Invisible Hearing Aid','0.00','','166','','全球最精密隐形助听器生产商','1','https://www.iheardirect.com/','','1431143421','1432026687','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('43','63','HandScape','Back-Panel Input Technology Innovator','0.00','','147','','致力于平板电脑后背输入技术','1','https://www.handscape.com/','','1431143559','1431944940','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('44','63','Onewheel','Self Balancing Electric Skateboard','0.00','','146','','全球首创自平衡独轮电动滑板','1','http://www.rideonewheel.com/','','1431143680','1431944915','','zh-cn','1','0','1','0');
INSERT INTO `jkd_product` VALUES ('45','63','禾赛科技','High Accuracy Gas Detector in Industry','0.00','','162','','高精度工业气体检测仪器','1','http://www.hesaitech.com/','','1431934309','1432026446','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('46','61','百花医药','Company Expertise in Miao Medicine','0.00','','165','','特色苗药及中药生产商','1','http://bhyy.zygyy.com/','','1431934406','1432026636','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('47','62','12 twenty','Career Big Data for Top US Universities','0.00','','156','','美国顶级MBA就业服务软件','1','http://www.12twenty.com','','1431934485','1432026084','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('48','62','点点乐','Mobile Games Designed for Female','0.00','','167','','专注于女性需求的手游','1','http://www.ddianle.com/','','1431934531','1432026746','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('49','62','艺游','Mobile Card Games of Original Figures','0.00','','153','','拥有原创形象的卡牌手游','1','http://www.eyouplay.com/','','1431934583','1432025938','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('50','62','测测','No.1 Social APP based on Horoscope in Globe','0.00','','152','','全球最大星座命理社交应用','1','http://www.xxwolo.com/','','1431934638','1432025914','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('51','62','渡维','Game Provider for Large-Screen Smart TV','0.00','','131','','大屏幕智能电视游戏提供商','1','http://www.transmension.com/officialweb/index.php','','1431934672','1431941923','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('52','63','DJI','Global Leader in Unmanned Aerial System','0.00','','168','','全球最大多旋翼无人航拍机','1','http://www.dji.com/cn','','1431934763','1432026832','','zh-cn','1','0','0','0');
INSERT INTO `jkd_product` VALUES ('53','63','Opzoon','Cloud Computing Solutions Provider','0.00','','158','','供应商级云计算服务提供商','1','http://www.opzoon.com/','','1431934813','1432026284','','zh-cn','1','0','0','0');


# 数据库表：jkd_role 数据信息
INSERT INTO `jkd_role` VALUES ('1','超级管理员','0','1','系统内置超级管理员组，不受权限分配账号限制');
INSERT INTO `jkd_role` VALUES ('2','管理员','1','1','拥有系统仅此于超级管理员的权限');
INSERT INTO `jkd_role` VALUES ('3','领导','1','1','拥有所有操作的读权限，无增加、删除、修改的权限');
INSERT INTO `jkd_role` VALUES ('4','测试组','1','1','测试');


# 数据库表：jkd_role_user 数据信息
INSERT INTO `jkd_role_user` VALUES ('3','4');


# 数据库表：jkd_tag 数据信息


# 数据库表：jkd_team 数据信息
INSERT INTO `jkd_team` VALUES ('15','创始合伙人 胡明烈','Founding Partner, Chairman, Minglie Hu','Mr. Hu led the investment in DJI, Transmensions, iHear, DianDianLe,etc. He serves additionally as the CEO of a listed company on the main board of Stock Exchange of Hong Kong. Mr. Hu has brought the Limited Partners fat return.
He holds an MS degree in op','胡明烈 创始合伙人，董事长 ','主导投资了大疆创新、渡维科技、iHear、点点乐等项目。亦任香港主板上市公司CEO。已经为远瞻LP带来数十倍回报。美国亚利桑那大学（UA）工程学士，UCLA Anderson MBA，熟悉清华大学、MIT、Harvard、BAT创业圈子','','1431933560','0','1','117');
INSERT INTO `jkd_team` VALUES ('16','创始合伙人 李喆','Founding Partner, CEO, Zhe Li','Prior to joining Lighthouse Capital, Mr. Li served as vice president of Hunan Jiuzhitang Co.,Ltd(000989.SZ), and was on board of Qianjin Pharmacy(600479.SH). He led the investment on Zhaoyi Jadeite, Opzoon, Sommersault, Handscape, Bohe,etc. 
He holds an M','李喆 创始合伙人，总裁 ','曾任上市公司九芝堂、千金药业高管及董事。主导投资了昭仪珠宝、汉柏科技、Somersault、Handscape、薄荷等项目。熟悉医药医疗，新能源，智能硬件行业。南开大学经济学硕士，UCLA Anderson MBA，熟悉UCLA、北大、南开创业圈及本土金融圈
','','1431933576','0','1','118');
INSERT INTO `jkd_team` VALUES ('17','合伙人 杨倩倩 ','Partner, Yvonne Yang','Yvonne has 9 years of experience in investment / financial service of China Internet and new media sector at buy side and sell side. Prior to joining Lighthouse Capital, she was a Principal at CMC Capital, led or co-led investments in Secoo, KK Music and ','杨倩倩 合伙人','杨倩倩在互联网和新媒体投资领域拥有9年经验。加入远瞻资本前，她曾任职华人文化产业基金投资主管，主导或参与了包括寺库、KK唱响、Bilibili等项目，并曾任BNP Paribas、Galleon Group及Piper Jaffray中国互联网证券分析师，并数次被《机构投资者》评为最佳中国互联网分析团队。杨倩倩持有复旦大学国际金融系学位与注册金融师证书。
','','1431933588','0','1','119');


# 数据库表：jkd_video 数据信息
INSERT INTO `jkd_video` VALUES ('13','Phantom 3 产品介绍','http://player.youku.com/player.php/sid/XOTI5NzA4Njk2/v.swf','','1431939102','0','1','123');
INSERT INTO `jkd_video` VALUES ('5','“ 悟”使用教程——固件升级演示','http://player.youku.com/player.php/sid/XOTMzMTMxMTcy/v.swf','九口袋','1431943291','1428837764','1','139');
INSERT INTO `jkd_video` VALUES ('7','“悟”使用教程——1345S快拆式螺旋桨安装演示','http://player.youku.com/player.php/sid/XOTI1NjEzMTgw/v.swf','','1431943382','0','1','140');
INSERT INTO `jkd_video` VALUES ('8','悟”基础安全飞行——开箱及演示','http://player.youku.com/player.php/sid/XOTIzMzkxNTY0/v.swf','','1431943440','1428941416','1','141');
