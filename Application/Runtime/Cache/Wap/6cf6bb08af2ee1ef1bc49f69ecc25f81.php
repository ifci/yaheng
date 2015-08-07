<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,minimal-ui">
    <meta name="author" content="fcdcyy@sina.cn">
    <link rel="dns-prefetch" href="<?php echo C('WEB_ROOT');?>">
    <link rel="shortcut icon" href="/yuanzhan/favicon.ico">
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="email=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta name="screen-orientation" content="portrait">
    <meta name="full-screen" content="yes">
    <meta name="browsermode" content="application">
    <meta name="x5-orientation" content="portrait">
    <meta name="x5-fullscreen" content="true">
    <meta name="x5-page-mode" content="app">
    <meta name="apple-mobile-web-app-title" content="远瞻投权手机端">
    <title>远瞻投权手机端</title>
    <meta name="keywords" content="<?php echo ($site["keyword"]); ?>,<?php echo ($info['keywords']); ?>">
    <meta name="description" content="<?php echo ($site["description"]); ?>,<?php echo ($info['description']); ?>">
    <link type="text/css" href="/yuanzhan/Public/Min/?f=/yuanzhan/Public/Wap/css/common.css|/yuanzhan/Public/Wap/css/index.css" rel="stylesheet" />
    <link href='http://www.youziku.com/webfont/NameCSS/29523' rel='stylesheet' type='text/css'/>
</head>
<body <?php if(CONTROLLER_NAME == Index): ?>class="index"<?php endif; ?>>
    <!--头部-->
    <header>
        <div class="nav_btn"><i class="iconfont">&#xe602;</i></div>
        <div class="logo"><a href="<?php echo C('WEB_ROOT').'wap';?>"><img src="/yuanzhan/Public/Wap/images/logo.png" alt=""/></a></div>
    </header>
    <div class="nav_list nav_on">
        <ul>
            <?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                <a href="<?php if($vo["action"] == null): echo ($vo["link"]); else: echo U($vo['action']); endif; ?>">
                    <span><?php echo ($vo["nav_rename"]); ?></span>
                    <em><?php echo ($vo["nav_name"]); ?></em>
                </a>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </div>
<!--主体内容-->
<section>
    <div class="main">
        <div class="main_t">
            <span>contact us</span>
            <em>联系我们</em>
        </div>

        <div class="connect">
            <h3>投资项目商业计划以及建议</h3>
            <div>请发送邮件至：<br/><?php echo ($site["service"]); ?></div>
            <div>公司地址：<br/><?php echo ($site["address"]); ?></div>
            <div class="tel">
                电话热线：<i><?php echo ($site["tel"]); ?></i>
            </div>
            <div class="map">
                <i class="iconfont">&#xe605;</i>
                <a href="http://map.baidu.com/mobile/webapp/place/detail/qt=ninf&wd=远瞻股权投资管理（上海）有限公司&c=289&searchFlag=bigBox&version=5&exptype=dep&uid=41aa37034283a501c51b7536&industry=house&qid=8245378627696818355/showall=1&detail_from=list&vt=map" target="_blank">查看地图导航</a>
            </div>
        </div>
    </div>
</section>
    <!--底部-->
    <div class="backtop">
        <i class="iconfont">&#xe603;</i>
    </div>
    <footer>
        <div class="footer_nav">
            <ul>
                <?php if(is_array($fnav)): $i = 0; $__LIST__ = $fnav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                    <a href="<?php if($vo["action"] == null): echo ($vo["link"]); else: echo U($vo['action']); endif; ?>"><?php echo ($vo["nav_name"]); ?></a><span>|</span>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
        <div class="footer_tel">
            全国服务热线：<?php echo ($site["tel"]); ?>
        </div>
    </footer>
    <script type="text/javascript" src="/yuanzhan/Public/Min/?f=/yuanzhan/Public/Wap/js/zepto.min.js|/yuanzhan/Public/Wap/js/touch.js|/yuanzhan/Public/Wap/js/index.js"></script>
</body>
</html>