# -----------------------------------------------------------
# PHP-Amateur database backup files
# Blog: http://blog.51edm.org
# Type: 系统自动备份
# Description:当前SQL文件包含了表：jkd_access、jkd_ad、jkd_admin、jkd_category、jkd_course、jkd_field、jkd_images、jkd_input、jkd_link、jkd_member、jkd_message、jkd_model、jkd_nav、jkd_news、jkd_node、jkd_page、jkd_product、jkd_role、jkd_role_user、jkd_tag、jkd_team的结构信息，表：jkd_access、jkd_ad、jkd_admin、jkd_category、jkd_course、jkd_field、jkd_images、jkd_input、jkd_link、jkd_member、jkd_message、jkd_model、jkd_nav、jkd_news、jkd_node、jkd_page、jkd_product、jkd_role、jkd_role_user、jkd_tag、jkd_team的数据
# Time: 2015-07-14 09:19:56
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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表' ;

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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻分类表' ;

# 数据库表：jkd_course 结构信息
DROP TABLE IF EXISTS `jkd_course`;
CREATE TABLE `jkd_course` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `content` text,
  `published` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `year` varchar(10) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='新闻表' ;

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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ;

# 数据库表：jkd_team 结构信息
DROP TABLE IF EXISTS `jkd_team`;
CREATE TABLE `jkd_team` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `cid` smallint(3) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `txt` varchar(255) DEFAULT NULL,
  `content` text,
  `published` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  `sort` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ;



# 数据库表：jkd_access 数据信息
INSERT INTO `jkd_access` VALUES ('2','73','3','60','');
INSERT INTO `jkd_access` VALUES ('2','72','3','60','');
INSERT INTO `jkd_access` VALUES ('2','71','3','60','');
INSERT INTO `jkd_access` VALUES ('2','70','3','60','');
INSERT INTO `jkd_access` VALUES ('2','69','3','60','');
INSERT INTO `jkd_access` VALUES ('2','68','3','60','');
INSERT INTO `jkd_access` VALUES ('2','67','3','60','');
INSERT INTO `jkd_access` VALUES ('2','60','2','1','');
INSERT INTO `jkd_access` VALUES ('2','66','3','46','');
INSERT INTO `jkd_access` VALUES ('2','65','3','46','');
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
INSERT INTO `jkd_access` VALUES ('2','64','3','46','');
INSERT INTO `jkd_access` VALUES ('2','63','3','46','');
INSERT INTO `jkd_access` VALUES ('2','62','3','46','');
INSERT INTO `jkd_access` VALUES ('2','61','3','46','');
INSERT INTO `jkd_access` VALUES ('2','59','3','46','');
INSERT INTO `jkd_access` VALUES ('2','58','3','46','');
INSERT INTO `jkd_access` VALUES ('2','57','3','46','');
INSERT INTO `jkd_access` VALUES ('2','56','3','46','');
INSERT INTO `jkd_access` VALUES ('2','55','3','46','');
INSERT INTO `jkd_access` VALUES ('2','54','3','46','');
INSERT INTO `jkd_access` VALUES ('2','53','3','46','');
INSERT INTO `jkd_access` VALUES ('2','52','3','46','');
INSERT INTO `jkd_access` VALUES ('2','51','3','46','');
INSERT INTO `jkd_access` VALUES ('2','50','3','46','');
INSERT INTO `jkd_access` VALUES ('2','49','3','46','');
INSERT INTO `jkd_access` VALUES ('2','48','3','46','');
INSERT INTO `jkd_access` VALUES ('2','47','3','46','');
INSERT INTO `jkd_access` VALUES ('2','46','2','1','');
INSERT INTO `jkd_access` VALUES ('2','31','3','26','');
INSERT INTO `jkd_access` VALUES ('2','30','3','26','');
INSERT INTO `jkd_access` VALUES ('2','29','3','26','');
INSERT INTO `jkd_access` VALUES ('2','28','3','26','');
INSERT INTO `jkd_access` VALUES ('2','27','3','26','');
INSERT INTO `jkd_access` VALUES ('2','26','2','1','');
INSERT INTO `jkd_access` VALUES ('2','25','3','14','');
INSERT INTO `jkd_access` VALUES ('2','24','3','14','');
INSERT INTO `jkd_access` VALUES ('2','23','3','14','');
INSERT INTO `jkd_access` VALUES ('2','22','3','14','');
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
INSERT INTO `jkd_access` VALUES ('2','21','3','14','');
INSERT INTO `jkd_access` VALUES ('2','20','3','14','');
INSERT INTO `jkd_access` VALUES ('2','19','3','14','');
INSERT INTO `jkd_access` VALUES ('2','18','3','14','');
INSERT INTO `jkd_access` VALUES ('2','17','3','14','');
INSERT INTO `jkd_access` VALUES ('2','16','3','14','');
INSERT INTO `jkd_access` VALUES ('2','15','3','14','');
INSERT INTO `jkd_access` VALUES ('2','9','3','14','');
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
INSERT INTO `jkd_access` VALUES ('2','74','3','60','');
INSERT INTO `jkd_access` VALUES ('2','75','3','60','');


# 数据库表：jkd_ad 数据信息
INSERT INTO `jkd_ad` VALUES ('23','昕朗母婴','','557a36d880d76.jpg','index','10','zh-cn');
INSERT INTO `jkd_ad` VALUES ('37','前沿资讯','','557f973144ead.jpg','news','0','zh-cn');
INSERT INTO `jkd_ad` VALUES ('35','手机端-首页1','','55559f02d8612.jpg','mobile','2','zh-cn');
INSERT INTO `jkd_ad` VALUES ('33','昕朗微信公众号','','556d041fc14b6.png','bottom','0','zh-cn');
INSERT INTO `jkd_ad` VALUES ('34','昕朗手机端','','556d0432e3309.png','bottom','0','zh-cn');
INSERT INTO `jkd_ad` VALUES ('36','手机端-首页2','','55559f1bbfd32.png','mobile','1','zh-cn');


# 数据库表：jkd_admin 数据信息
INSERT INTO `jkd_admin` VALUES ('1','超级管理员','admin@qq.com','b3a14e5d4d69f57700561f48eb717504','1','我是超级管理员 哈哈~~','','1427546072');
INSERT INTO `jkd_admin` VALUES ('5','','admin8','b3a14e5d4d69f57700561f48eb717504','1','','','1433506760');


# 数据库表：jkd_category 数据信息
INSERT INTO `jkd_category` VALUES ('1','0','新闻动态','','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('2','1','前沿资讯','','n','zh-cn');
INSERT INTO `jkd_category` VALUES ('64','0','公共营养师','','t','zh-cn');
INSERT INTO `jkd_category` VALUES ('61','0','健康医疗','Health Care','p','zh-cn');
INSERT INTO `jkd_category` VALUES ('62','0','移动互联','Mobile Internet','p','zh-cn');
INSERT INTO `jkd_category` VALUES ('63','0','智能硬件','Smart Device','p','zh-cn');
INSERT INTO `jkd_category` VALUES ('65','0','心理咨询师','','t','zh-cn');
INSERT INTO `jkd_category` VALUES ('66','0','高级育婴师','','t','zh-cn');


# 数据库表：jkd_course 数据信息
INSERT INTO `jkd_course` VALUES ('14','备孕课程安排','丁新华','上海江桥万达','2015-06-01','课程包含品牌营销、展示型营销、社会化媒体营销3大系统模块，一站式解决网络营销难题，为企业提供最全面、最落地的全网营销解决文案！','1434175850','0','2015','6','01','1','202');
INSERT INTO `jkd_course` VALUES ('15','备孕课程安排2','张启明','上海江桥万达','2015-06-25','课程内容课程内容课程内容课程内容课程内容课程内容课程程内容课程内容课程内课程内容课程内容课程内容！课程内容课程内容课程内容课程内容课程内容课程内容课程程内容课程内容课程内课程内容课程内容课程内容！','1434101207','0','2015','6','12','1','195');
INSERT INTO `jkd_course` VALUES ('16','备孕课程安排3','某某某','上海江桥万达','2016-01-01','','1434165185','0','2016','1','01','1','201');
INSERT INTO `jkd_course` VALUES ('17','备孕课程安排4','丁新华','上海江桥万达','2015-06-24','','1434177903','0','2015','6','24','1','203');
INSERT INTO `jkd_course` VALUES ('18','备孕课程安排5','哈哈哈','','2015-07-22','','1434180070','0','2015','7','22','1','0');
INSERT INTO `jkd_course` VALUES ('20','d','','','2016-06-08','','1434180106','0','2016','6','08','1','0');
INSERT INTO `jkd_course` VALUES ('21','v','','','2015-06-30','','1434165147','0','2015','6','30','1','0');


# 数据库表：jkd_field 数据信息


# 数据库表：jkd_images 数据信息
INSERT INTO `jkd_images` VALUES ('114','team','20150512115817_12048.png','/Uploads/image/page/20150512/20150512115817_12048.png','1431933351');
INSERT INTO `jkd_images` VALUES ('115','team','20150512095716_78848.png','/Uploads/image/page/20150512/20150512095716_78848.png','1431933457');
INSERT INTO `jkd_images` VALUES ('116','team','20150512095716_78848.png','/Uploads/image/page/20150512/20150512095716_78848.png','1431933520');
INSERT INTO `jkd_images` VALUES ('117','team','20150512095716_78848.png','/Uploads/image/page/20150512/20150512095716_78848.png','1431933560');
INSERT INTO `jkd_images` VALUES ('118','team','20150512095716_78848.png','/Uploads/image/page/20150512/20150512095716_78848.png','1431933576');
INSERT INTO `jkd_images` VALUES ('119','team','20150512115817_12048.png','/Uploads/image/page/20150512/20150512115817_12048.png','1431933588');
INSERT INTO `jkd_images` VALUES ('121','video','20150512151305_96874.jpg','/Uploads/image/page/20150512/20150512151305_96874.jpg','1431936385');
INSERT INTO `jkd_images` VALUES ('122','video','20150512151305_96874.jpg','/Uploads/image/page/20150512/20150512151305_96874.jpg','1431936719');
INSERT INTO `jkd_images` VALUES ('123','video','20150518165134_52537.jpg','/Uploads/image/page/20150518/20150518165134_52537.jpg','1431939102');
INSERT INTO `jkd_images` VALUES ('162','product','20150519170725_49180.png','/Uploads/image/product/20150519/20150519170725_49180.png','1432026446');
INSERT INTO `jkd_images` VALUES ('168','product','20150519171351_54114.png','/Uploads/image/product/20150519/20150519171351_54114.png','1432026832');
INSERT INTO `jkd_images` VALUES ('158','product','20150519170442_67753.png','/Uploads/image/product/20150519/20150519170442_67753.png','1432026284');
INSERT INTO `jkd_images` VALUES ('156','product','20150519170124_88996.png','/Uploads/image/product/20150519/20150519170124_88996.png','1432026084');
INSERT INTO `jkd_images` VALUES ('167','product','20150519171225_14505.png','/Uploads/image/product/20150519/20150519171225_14505.png','1432026746');
INSERT INTO `jkd_images` VALUES ('153','product','20150519165857_68852.png','/Uploads/image/product/20150519/20150519165857_68852.png','1432025938');
INSERT INTO `jkd_images` VALUES ('152','product','20150519165831_60986.png','/Uploads/image/product/20150519/20150519165831_60986.png','1432025914');
INSERT INTO `jkd_images` VALUES ('131','product','20150518173842_30120.png','/Uploads/image/product/20150518/20150518173842_30120.png','1431941923');
INSERT INTO `jkd_images` VALUES ('165','product','20150519171035_32279.png','/Uploads/image/product/20150519/20150519171035_32279.png','1432026636');
INSERT INTO `jkd_images` VALUES ('138','video','20150518175927_83028.jpg','/Uploads/image/page/20150518/20150518175927_83028.jpg','1431943169');
INSERT INTO `jkd_images` VALUES ('139','video','20150518175927_83028.jpg','/Uploads/image/page/20150518/20150518175927_83028.jpg','1431943291');
INSERT INTO `jkd_images` VALUES ('140','video','20150518180301_93009.jpg','/Uploads/image/page/20150518/20150518180301_93009.jpg','1431943382');
INSERT INTO `jkd_images` VALUES ('141','video','20150518180359_49155.jpg','/Uploads/image/page/20150518/20150518180359_49155.jpg','1431943440');
INSERT INTO `jkd_images` VALUES ('87','video','20150508114129_82688.jpg','/Uploads/image/page/20150508/20150508114129_82688.jpg','1431056490');
INSERT INTO `jkd_images` VALUES ('88','video','20150508134909_80246.jpg','/Uploads/image/page/20150508/20150508134909_80246.jpg','1431064150');
INSERT INTO `jkd_images` VALUES ('89','video','20150508134945_30747.jpg','/Uploads/image/page/20150508/20150508134945_30747.jpg','1431064204');
INSERT INTO `jkd_images` VALUES ('90','news','20150508141141_71366.jpg','/Uploads/image/news/20150508/20150508141141_71366.jpg','1431675395');
INSERT INTO `jkd_images` VALUES ('91','news','20150508142524_75091.jpg','/Uploads/image/news/20150508/20150508142524_75091.jpg','1431066480');
INSERT INTO `jkd_images` VALUES ('92','news','20150508143149_70875.jpg','/Uploads/image/news/20150508/20150508143149_70875.jpg','1431335738');
INSERT INTO `jkd_images` VALUES ('93','news','20150508143433_11203.jpg','/Uploads/image/news/20150508/20150508143433_11203.jpg','1431335699');
INSERT INTO `jkd_images` VALUES ('94','news','20150508143538_80883.jpg','/Uploads/image/news/20150508/20150508143538_80883.jpg','1431066949');
INSERT INTO `jkd_images` VALUES ('95','news','20150508143625_76596.jpg','/Uploads/image/news/20150508/20150508143625_76596.jpg','1431327886');
INSERT INTO `jkd_images` VALUES ('96','news','20150608115743_15421.jpg','/xinlang/Uploads/image/news/20150608/20150608115743_15421.jpg','1433735906');
INSERT INTO `jkd_images` VALUES ('97','news','20150508143753_13902.jpg','/Uploads/image/news/20150508/20150508143753_13902.jpg','1431067075');
INSERT INTO `jkd_images` VALUES ('98','news','20150508143856_27306.jpg','/Uploads/image/news/20150508/20150508143856_27306.jpg','1431335669');
INSERT INTO `jkd_images` VALUES ('99','news','20150508143935_10752.jpg','/Uploads/image/news/20150508/20150508143935_10752.jpg','1431680755');
INSERT INTO `jkd_images` VALUES ('144','product','20150518175230_80945.png','/Uploads/image/product/20150518/20150518175230_80945.png','1431944865');
INSERT INTO `jkd_images` VALUES ('157','product','20150519170140_74787.png','/Uploads/image/product/20150519/20150519170140_74787.png','1432026101');
INSERT INTO `jkd_images` VALUES ('164','product','20150519170938_64244.png','/Uploads/image/product/20150519/20150519170938_64244.png','1432026579');
INSERT INTO `jkd_images` VALUES ('166','product','20150519171126_37778.png','/Uploads/image/product/20150519/20150519171126_37778.png','1432026687');
INSERT INTO `jkd_images` VALUES ('147','product','20150509115156_78804.jpg','/Uploads/image/product/20150509/20150509115156_78804.jpg','1431944940');
INSERT INTO `jkd_images` VALUES ('146','product','20150518175410_23156.png','/Uploads/image/product/20150518/20150518175410_23156.png','1431944915');
INSERT INTO `jkd_images` VALUES ('106','team','20150512093406_62673.jpg','/Uploads/image/page/20150512/20150512093406_62673.jpg','1431394451');
INSERT INTO `jkd_images` VALUES ('107','team','20150512093406_62673.jpg','/Uploads/image/page/20150512/20150512093406_62673.jpg','1431394461');
INSERT INTO `jkd_images` VALUES ('108','team','20150512095716_78848.png','/Uploads/image/page/20150512/20150512095716_78848.png','1431395871');
INSERT INTO `jkd_images` VALUES ('109','team','20150512095716_78848.png','/Uploads/image/page/20150512/20150512095716_78848.png','1431397638');
INSERT INTO `jkd_images` VALUES ('110','team','20150512095716_78848.png','/Uploads/image/page/20150512/20150512095716_78848.png','1431397645');
INSERT INTO `jkd_images` VALUES ('111','team','20150512115817_12048.png','/Uploads/image/page/20150512/20150512115817_12048.png','1431403100');
INSERT INTO `jkd_images` VALUES ('112','team','20150512115817_12048.png','/Uploads/image/page/20150512/20150512115817_12048.png','1431403432');
INSERT INTO `jkd_images` VALUES ('113','video','20150512151305_96874.jpg','/Uploads/image/page/20150512/20150512151305_96874.jpg','1431414787');
INSERT INTO `jkd_images` VALUES ('169','course','20150606182652_19354.png','/xinlang/Uploads/image/page/20150606/20150606182652_19354.png','1433586413');
INSERT INTO `jkd_images` VALUES ('170','course','20150606182652_19354.png','/xinlang/Uploads/image/page/20150606/20150606182652_19354.png','1433729931');
INSERT INTO `jkd_images` VALUES ('171','course','20150606182652_19354.png','/xinlang/Uploads/image/page/20150606/20150606182652_19354.png','1433730471');
INSERT INTO `jkd_images` VALUES ('172','news','20150608115743_15421.jpg','/xinlang/Uploads/image/news/20150608/20150608115743_15421.jpg','1433746266');
INSERT INTO `jkd_images` VALUES ('173','news','20150608115743_15421.jpg','/xinlang/Uploads/image/news/20150608/20150608115743_15421.jpg','1433746747');
INSERT INTO `jkd_images` VALUES ('174','news','20150608115743_15421.jpg','/xinlang/Uploads/image/news/20150608/20150608115743_15421.jpg','1433747792');
INSERT INTO `jkd_images` VALUES ('175','news','20150608115743_15421.jpg','/xinlang/Uploads/image/news/20150608/20150608115743_15421.jpg','1433747828');
INSERT INTO `jkd_images` VALUES ('176','news','20150608115743_15421.jpg','/xinlang/Uploads/image/news/20150608/20150608115743_15421.jpg','1434437173');
INSERT INTO `jkd_images` VALUES ('177','team','20150612094119_39786.jpg','/xinlang/Uploads/image/page/20150612/20150612094119_39786.jpg','1434073288');
INSERT INTO `jkd_images` VALUES ('178','team','20150612094119_39786.jpg','/xinlang/Uploads/image/page/20150612/20150612094119_39786.jpg','1434073291');
INSERT INTO `jkd_images` VALUES ('179','team','20150612100156_49649.jpg','/xinlang/Uploads/image/page/20150612/20150612100156_49649.jpg','1434074525');
INSERT INTO `jkd_images` VALUES ('180','team','20150612150746_40094.jpg','/xinlang/Uploads/image/page/20150612/20150612150746_40094.jpg','1434092880');
INSERT INTO `jkd_images` VALUES ('181','team','20150612150819_77153.jpg','/xinlang/Uploads/image/page/20150612/20150612150819_77153.jpg','1434092904');
INSERT INTO `jkd_images` VALUES ('182','team','20150612150850_93372.jpg','/xinlang/Uploads/image/page/20150612/20150612150850_93372.jpg','1434092931');
INSERT INTO `jkd_images` VALUES ('183','team','20150612150850_93372.jpg','/xinlang/Uploads/image/page/20150612/20150612150850_93372.jpg','1434093545');
INSERT INTO `jkd_images` VALUES ('184','team','20150612150850_93372.jpg','/xinlang/Uploads/image/page/20150612/20150612150850_93372.jpg','1434093957');
INSERT INTO `jkd_images` VALUES ('185','team','20150612152612_80592.png','/xinlang/Uploads/image/page/20150612/20150612152612_80592.png','1434093975');
INSERT INTO `jkd_images` VALUES ('186','team','20150612152650_85467.png','/xinlang/Uploads/image/page/20150612/20150612152650_85467.png','1434094011');
INSERT INTO `jkd_images` VALUES ('187','team','20150612152650_85467.png','/xinlang/Uploads/image/page/20150612/20150612152650_85467.png','1434094101');
INSERT INTO `jkd_images` VALUES ('188','team','20150612152612_80592.png','/xinlang/Uploads/image/page/20150612/20150612152612_80592.png','1434094107');
INSERT INTO `jkd_images` VALUES ('189','team','20150612152858_61619.jpg','/xinlang/Uploads/image/page/20150612/20150612152858_61619.jpg','1434094139');
INSERT INTO `jkd_images` VALUES ('190','team','20150612152911_83572.jpg','/xinlang/Uploads/image/page/20150612/20150612152911_83572.jpg','1434094153');
INSERT INTO `jkd_images` VALUES ('191','team','20150612152934_82861.jpg','/xinlang/Uploads/image/page/20150612/20150612152934_82861.jpg','1434094178');
INSERT INTO `jkd_images` VALUES ('192','team','20150612152953_87898.jpg','/xinlang/Uploads/image/page/20150612/20150612152953_87898.jpg','1434094195');
INSERT INTO `jkd_images` VALUES ('193','team','20150612150819_77153.jpg','/xinlang/Uploads/image/page/20150612/20150612150819_77153.jpg','1434094232');
INSERT INTO `jkd_images` VALUES ('194','team','20150612150850_93372.jpg','/xinlang/Uploads/image/page/20150612/20150612150850_93372.jpg','1434094251');
INSERT INTO `jkd_images` VALUES ('195','video','20150612172637_83287.png','/xinlang/Uploads/image/page/20150612/20150612172637_83287.png','1434101207');
INSERT INTO `jkd_images` VALUES ('196','video','20150613091359_85020.jpg','/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg','1434158041');
INSERT INTO `jkd_images` VALUES ('197','course','20150613091359_85020.jpg','/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg','1434158062');
INSERT INTO `jkd_images` VALUES ('198','course','20150613091359_85020.jpg','/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg','1434158073');
INSERT INTO `jkd_images` VALUES ('199','course','20150613091359_85020.jpg','/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg','1434158539');
INSERT INTO `jkd_images` VALUES ('200','course','20150613091359_85020.jpg','/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg','1434159340');
INSERT INTO `jkd_images` VALUES ('201','course','20150613091359_85020.jpg','/xinlang/Uploads/image/page/20150613/20150613091359_85020.jpg','1434165185');
INSERT INTO `jkd_images` VALUES ('202','course','20150606182652_19354.png','/xinlang/Uploads/image/page/20150606/20150606182652_19354.png','1434175850');
INSERT INTO `jkd_images` VALUES ('203','course','20150613144501_11197.png','/xinlang/Uploads/image/page/20150613/20150613144501_11197.png','1434177903');


# 数据库表：jkd_input 数据信息


# 数据库表：jkd_link 数据信息


# 数据库表：jkd_member 数据信息


# 数据库表：jkd_message 数据信息
INSERT INTO `jkd_message` VALUES ('70','工','','15555555555','0','1434617219','');
INSERT INTO `jkd_message` VALUES ('71','在','','15555555555','0','1435116106','');


# 数据库表：jkd_model 数据信息


# 数据库表：jkd_nav 数据信息
INSERT INTO `jkd_nav` VALUES ('61','link','科学孕育一站式','0','0','top','','zh-cn','4','0','station','科学孕育一站式','科学孕育一站式','科学孕育一站式');
INSERT INTO `jkd_nav` VALUES ('56','link','科研合作','0','0','top','','zh-cn','3','0','coope','','','');
INSERT INTO `jkd_nav` VALUES ('57','news','前沿资讯','0','1','top','','zh-cn','2','0','news','','','');
INSERT INTO `jkd_nav` VALUES ('67','link','联系我们','0','0','top','','zh-cn','0','0','contact','','','');
INSERT INTO `jkd_nav` VALUES ('68','link','关于昕朗','0','0','top','','zh-cn','1','0','about','','','');
INSERT INTO `jkd_nav` VALUES ('69','link','专家团队','0','0','top','','zh-cn','5','0','team','','','');
INSERT INTO `jkd_nav` VALUES ('70','link','课程设置','0','0','top','','zh-cn','6','0','course','','','');
INSERT INTO `jkd_nav` VALUES ('71','link','首页','0','0','top','','zh-cn','7','0','','','','');


# 数据库表：jkd_news 数据信息
INSERT INTO `jkd_news` VALUES ('39','2','育儿教育开设手机交流平台',' 育儿教育','育儿教育开设手机交流平台','1','育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交','1431067058','1433735906','<p>
	育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交
</p>
<div>
	<p>
		<br />
	</p>
	<div>
		<br />
	</div>
</div>','236','1','0','96','zh-cn','');
INSERT INTO `jkd_news` VALUES ('43','2','育儿教育开设手机交流平台2',' 育儿教育','育儿教育开设手机交流平台','1','育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交','1433746266','','<p>
	育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交
</p>
<div>
	<p>
		<br />
	</p>
</div>','1','1','0','172','zh-cn','');
INSERT INTO `jkd_news` VALUES ('44','2','育儿教育开设手机交流平台3','育儿教育','育儿教育开设手机交流平台','1','育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交','1433746747','','<p>
	育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交
</p>
<div>
	<p>
		<br />
	</p>
</div>','1','1','0','173','zh-cn','');
INSERT INTO `jkd_news` VALUES ('45','2','育儿教育开设手机交流平台4','育儿教育','育儿教育开设手机交流平台','1','育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交','1433747792','','<p>
	育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交
</p>
<div>
	<p>
		<br />
	</p>
</div>','0','1','0','174','zh-cn','');
INSERT INTO `jkd_news` VALUES ('46','2','育儿教育开设手机交流平台5','育儿教育','育儿教育开设手机交流平台','1','育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交','1433747828','','<p>
	育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交
</p>
<div>
	<p>
		<br />
	</p>
</div>','2','1','0','175','zh-cn','');
INSERT INTO `jkd_news` VALUES ('47','2','育儿教育开设手机交流平台6','育儿教育','育儿教育开设手机交流平台','1','育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交','1433747864','1434437173','<p>
	育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交流平台育儿教育开设手机交
</p>
<div>
	<p>
		<br />
	</p>
</div>','19','1','0','176','zh-cn','');


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
INSERT INTO `jkd_page` VALUES ('47','flsm','0','课程设置','婴儿启蒙又称“全脑开发课程”。经过权威的专家和全国成千上百参加课程的宝宝亲身验证，是一套符合0-18个月Baby在成长过程中','1','','','zh-cn','');
INSERT INTO `jkd_page` VALUES ('48','flsm','0','机构背景','婴儿启蒙又称“全脑开发课程”。经过权威的专家和全国成千上百参加课程的宝宝亲身验证，是一套符合0-18个月Baby在成中','0','','','zh-cn','');


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
INSERT INTO `jkd_role_user` VALUES ('1','5');


# 数据库表：jkd_tag 数据信息
INSERT INTO `jkd_tag` VALUES ('30','课程设置','kcsz','婴儿启蒙又称“全脑开发课程”。经过权威的专家和全国成千上百参加课程的宝宝亲身验证，是一套符合0-18个月Baby在成长过程中','zh-cn');
INSERT INTO `jkd_tag` VALUES ('31','机构背景','jgbj','婴儿启蒙又称“全脑开发课程”。经过权威的专家和全国成千上百参加课程的宝宝亲身验证，是一套符合0-18个月Baby在成中','zh-cn');


# 数据库表：jkd_team 数据信息
INSERT INTO `jkd_team` VALUES ('20','64','特邀专家—丁新华','公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师','','1434074525','0','1','179','');
INSERT INTO `jkd_team` VALUES ('21','64','特邀专家—丁新华1','公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师公共营养师','','1434092880','0','1','180','');
INSERT INTO `jkd_team` VALUES ('22','65','特邀专家—丁新华2','心理咨询师心理咨询师心理咨询师心理咨询师心理咨询师心理咨询师心理咨询师','','1434094232','0','1','193','');
INSERT INTO `jkd_team` VALUES ('23','65','特邀专家—丁新华3','心理咨询师心理咨询师心理咨询师心理咨询师心理咨询师心理咨询师心理咨询师','','1434094251','0','1','194','');
INSERT INTO `jkd_team` VALUES ('24','66','特邀专家—丁新华4','','','1434094107','0','1','188','');
INSERT INTO `jkd_team` VALUES ('25','66','特邀专家—丁新华5','','','1434094101','0','1','187','');
INSERT INTO `jkd_team` VALUES ('27','64','特邀专家—丁新华6','','','1434094195','0','1','192','');
INSERT INTO `jkd_team` VALUES ('28','64','特邀专家—丁新华7','','','1434094178','0','1','191','');
