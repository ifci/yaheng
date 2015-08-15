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
    <meta name="keywords" content="<?php echo ($info['keywords'] ? $info['keywords'] : $site["keyword"]); ?>">
    <meta name="description" content="<?php echo ($info['description'] ? $info['description'] : $site["description"]); ?>">
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
    <!--详情页-->
    <div class="details">
        <!-- Link Swiper's CSS -->
        <link rel="stylesheet" href="/yaheng/Public/Wap/css/swiper.min.css">
        <!-- Demo styles -->
        <style>
            .swiper-container {
                height: 100%;
                margin: auto;
                width: 100%;
            }
            .swiper-slide {
                text-align: center;
                font-size: 18px;
                background: #fff;

                /* Center slide text vertically */
                display: -webkit-box;
                display: -ms-flexbox;
                display: -webkit-flex;
                display: flex;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                -webkit-justify-content: center;
                justify-content: center;
                -webkit-box-align: center;
                -ms-flex-align: center;
                -webkit-align-items: center;
                align-items: center;
            }
            .swiper-pagination-bullet-active{
                background-color: #333;
            }
            .swiper-button-next,.swiper-button-prev{
                background: none;
                font-size: 2.4em;
                text-align: center;
            }
        </style>
        <!-- Swiper -->
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <?php if(is_array($images)): $i = 0; $__LIST__ = $images;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="swiper-slide"> <img src="<?php echo ($vo["savepath"]); ?>"> </div><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <!-- Add Arrows -->
            <div class="swiper-button-next">></div>
            <div class="swiper-button-prev"><</div>
        </div>

        <!-- Swiper JS -->
        <script src="/yaheng/Public/Wap/js/swiper.min.js"></script>

        <!-- Initialize Swiper -->
        <script>
            var swiper = new Swiper('.swiper-container', {
                nextButton: '.swiper-button-next',
                prevButton: '.swiper-button-prev'
            });
        </script>

        <div class="itemInfo">
            <div class="tit"><?php echo ($info["title"]); ?></div>
            <div class="pri">¥<?php echo ($info["price"]); ?></div>
            <p class="mt40"><span>材质：</span><?php echo ($info["material"]); ?></p>
            <p><span>尺码：</span><?php echo ($info["psize"]); ?></p>
            <p><span>颜色：</span><?php echo ($info["pcolor"]); ?></p>
            <div class="btn"><a href="<?php echo ($info["url"]); ?>" title="立即购买">立即购买</a></div>
        </div>

        <!--简介-->
        <div class="intro">
            <div class="intro_t">产品介绍</div>
            <div class="intro_c">
                <?php echo ($info["content"]); ?>
            </div>
        </div>
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