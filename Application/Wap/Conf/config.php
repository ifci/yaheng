<?php
$DB_PREFIX = C('DB_PREFIX');
return array(
    'USER_AUTH_ON' => true,
    'USER_AUTH_TYPE' => 2, // 默认认证类型 1 登录认证 2 实时认证
    'USER_AUTH_KEY' => 'authId', // 用户认证SESSION标记
//    'ADMIN_AUTH_KEY' => '422857458@qq.com',
    'USER_AUTH_MODEL' => 'Admin', // 默认验证数据表模型
    'AUTH_PWD_ENCODER' => 'md5', // 用户认证密码加密方式encrypt
    'USER_AUTH_GATEWAY' => '/admin/Public/index', // 默认认证网关
    'NOT_AUTH_MODULE' => 'Public', // 默认无需认证模块
    'REQUIRE_AUTH_MODULE' => '', // 默认需要认证模块
    'NOT_AUTH_ACTION' => '', // 默认无需认证操作
    'REQUIRE_AUTH_ACTION' => '', // 默认需要认证操作
    'GUEST_AUTH_ON' => false, // 是否开启游客授权访问
    'GUEST_AUTH_ID' => 0, // 游客的用户ID
    'RBAC_ROLE_TABLE' => $DB_PREFIX . 'role',
    'RBAC_USER_TABLE' => $DB_PREFIX . 'role_user',
    'RBAC_ACCESS_TABLE' => $DB_PREFIX . 'access',
    'RBAC_NODE_TABLE' => $DB_PREFIX . 'node',
    'LAYOUT_ON'        => true,  //开启模板布局

    'URL_CASE_INSENSITIVE' => false,
    'TAGLIB_PRE_LOAD' =>array( 'Think\\Template\\TagLib\\Html', 'Think\\Template\\TagLib\\Weblock'),
    'TAGLIB_BUILD_IN' => 'Cx,Html,Weblock',//标签库类名
    'URL_ROUTER_ON'   => true,// 开启路由
    'LOAD_EXT_CONFIG' => 'router',
    'URL_ROUTE_RULES'=>array(
        'enroll'    => 'haute/enroll',
        'news_r/:id\d'    => 'news/read',
        'product/:cid\d'    => 'product/catelist',
        'product_r/:id\d'    => 'product/read',
    ),

    'URL_HTML_SUFFIX'       => C('TOKEN.URL_HTML_SUFFIX'),  // URL伪静态后缀设置
    'URL_MODEL' =>C('TOKEN.false_static'),// URL伪静态设置/开启，关闭

    'LOAD_EXT_CONFIG'=>'model_menu',
    // 系统保留表明
    'SYSTEM_TBL_NAME' => 'model,models,filed,fileds,admin,admins',
    /*
     * 系统备份数据库时每个sql分卷大小，单位字节
     */
    'sqlFileSize' => 5242880, //该值不可太大，否则会导致内存溢出备份、恢复失败，合理大小在512K~10M间，建议5M一卷
        //10M=1024*1024*10=10485760
        //5M=5*1024*1024=5242880
    /* 模板相关配置 */
    'TMPL_PARSE_STRING' => array(
        '__UPLOAD__' => __ROOT__ . '/Uploads',
        '__WAP__' => __ROOT__ . '/wap',
        '__STATIC__' => __ROOT__ . '/Public',
        '__IMG__'    => __ROOT__ . '/Public/Wap/images',
        '__CSS__'    => __ROOT__ . '/Public/Wap/css',
        '__JS__'     => __ROOT__ . '/Public/Wap/js',
        '--PUBLIC--'=>__ROOT__ . '/Public' ,
    ),

     // 表单令牌
    'TOKEN_ON' => false,
);

?>