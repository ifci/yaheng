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
    <div class="banner">
        <?php if(is_array($ad_banner)): $i = 0; $__LIST__ = $ad_banner;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo ($vo["ad_link"]); ?>"><img src="/yuanzhan/Uploads/picture/<?php echo ($vo["ad_img"]); ?>" alt="<?php echo ($vo["ad_name"]); ?>"/></a><?php endforeach; endif; else: echo "" ;endif; ?>
    </div>
    <div class="main">
        <div class="main_t">
            <span>portfolios</span>
            <em>已投项目</em>
            <div class="more"><a href="<?php echo U('Product/index');?>">查看更多</a></div>
        </div>
        <div class="pro_list">
            <ul>
            <?php if(is_array($pro_list)): $i = 0; $__LIST__ = $pro_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                    <a href="<?php echo ($vo["url"]); ?>" target="_blank"><img src="<?php echo get_default_img($vo['image_id']);?>" alt="<?php echo ($vo["title"]); ?>"/></a>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
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