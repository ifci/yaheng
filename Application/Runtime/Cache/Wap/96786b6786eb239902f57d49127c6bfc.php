<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,minimal-ui">
    <meta name="author" content="fcdcyy@sina.cn">
    <link rel="dns-prefetch" href="<?php echo C('WEB_ROOT');?>">
    <link rel="shortcut icon" href="/yaheng/favicon.ico">
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
    <meta name="apple-mobile-web-app-title" content="亚恒服饰手机端">
    <title>亚恒服饰手机端</title>
    <meta name="keywords" content="<?php echo ($site["keyword"]); ?>,<?php echo ($info['keywords']); ?>">
    <meta name="description" content="<?php echo ($site["description"]); ?>,<?php echo ($info['description']); ?>">
    <link type="text/css" href="/yaheng/Public/Min/?f=/yaheng/Public/Wap/css/common.css|/yaheng/Public/Wap/css/combo.css" rel="stylesheet" />
</head>
<body>
    <!--头部-->
    <header>
        <img src="/yaheng/Public/Wap/images/logo.png" alt="" class="logo"/>
        <em><?php echo ($webtitle); ?></em>
        <div class="nav_btn"></div>
    </header>
    <div class="nav">
        <div class="nav-warp">
            <h4>导航</h4>
            <ul>
                <?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="/yaheng/wap/<?php echo ($vo['action']); ?>"><?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <div class="tel">联系热线：<?php echo ($site["tel"]); ?></div>
        </div>
    </div>
<section>
    <div class="tips">温馨提示：为确保快速与您联系，请您填写真实的姓名和联系方式。以下信息我们均保密</div>
    <div class="enroll">
        <form action="" class="form">
            <div class="form-group">
                <span>姓&nbsp;&nbsp;名</span>
                <input type="text" class="form-control"/>
            </div>
            <div class="form-group">
                <span>电&nbsp;&nbsp;话</span>
                <input type="text" class="form-control"/>
            </div>
            <div class="form-group">
                <span>邮&nbsp;&nbsp;箱</span>
                <input type="text" class="form-control"/>
            </div>
            <div class="form-group">
                <span>地&nbsp;&nbsp;址</span>
                <input type="text" class="form-control"/>
            </div>
            <div class="form-group">
                <span>备&nbsp;&nbsp;注</span>
                <textarea name="" id=""></textarea>
            </div>
            <div class="tac">
                <input type="submit" class="submit" value="提交"/>
                <input type="reset" class="reset" value="重置"/>
            </div>
        </form>
    </div>
</section>
    <!--底部-->
    <footer>
        <ul>
            <li>
                <a href="/yaheng/wap/"><i class="iconfont">&#xe600;</i><span>首页</span></a>
            </li>
            <li>
                <a href="/yaheng/wap/product"><i class="iconfont">&#xe602;</i><span>产品</span></a>
            </li>
            <li>
                <a href="/yaheng/wap/haute"><i class="iconfont">&#xe603;</i><span>定制</span></a>
            </li>
            <li>
                <a href="/yaheng/wap/agent"><i class="iconfont">&#xe605;</i><span>代理</span></a>
            </li>
        </ul>
    </footer>
    <script type="text/javascript" src="/yaheng/Public/Min/?f=/yaheng/Public/Wap/js/zepto.min.js|/yaheng/Public/Wap/js/touch.js|/yaheng/Public/Wap/js/index.js"></script>
</body>
</html>