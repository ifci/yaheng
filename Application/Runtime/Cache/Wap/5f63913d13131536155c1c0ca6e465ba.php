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
        <div class="nav_btn">
            <div id="menu-toggle">
                <div id="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <div id="cross">
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
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
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="/yaheng/Public/Wap/css/swiper.min.css">

<!-- Demo styles -->
<style>
    .swiper-container{
        width: 80%;
        height: 2em;
        margin: 0;
        float: left;
        line-height: 2em;
    }
    .swiper-slide {
        text-align: center;
        font-size: .8em;
        background: #fff;
        color: #838995;

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
    .swiper-button-next, .swiper-button-prev{
        position: inherit;
        margin: 0;
        width: 9%;
        height: auto;
        background: none;
        float: left;
        text-align: center;
        border: 1px solid #b5b5b5;
        line-height: 1.8;
        background: #292929;
        color: #fff;
    }
    .swiper-button-prev{
        margin-right: 1%;
    }
    .swiper-button-disabled{
        background: #f7f7f9;
        color: #000;
    }
    .swiper-slide.on{
        color: #333;
        font-weight: bold;
    }
</style>
<section>
    <div class="pshow">
        <div class="pshow_t clearfix">
            <!-- Swiper -->
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <?php if(is_array($season)): $k = 0; $__LIST__ = $season;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><div class="swiper-slide <?php if($sid == $vo['cid']): ?>on<?php endif; ?>" data-sid="<?php echo ($vo["cid"]); ?>"><a href="<?php echo U('product/catelist',array('cid'=>$_GET['cid'],'sid'=>$vo['cid']));?>"><?php echo ($vo["name"]); ?></a></div><?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
            </div>
            <!-- Add Arrows -->
            <div class="swiper-button-prev"><</div>
            <div class="swiper-button-next">></div>
        </div>

        <div class="plist">
            <input type="hidden" id="total" value="<?php echo ($total); ?>"/>
            <ul class="clearfix">
                <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li data-id="<?php echo ($vo["id"]); ?>">
                    <a href="<?php echo U('product_r/'.$vo['id']);?>">
                        <div class="box">
                            <img src="<?php echo get_default_img($vo['image_id']);?>" alt=""/>
                        </div>
                        <div class="tit"><?php echo ($vo["title"]); ?></div>
                    </a>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <!--<?php echo ($count > 8 ? '<div class="paging"><a href="javascript:" class="add_more">加载更多</a></div>' : false); ?>-->
            <?php if($list == null): ?><div class="empty">暂无相关商品信息！</div>
            <?php elseif($count > 8): ?>
                <div class="paging"><a href="javascript:" class="add_more">加载更多</a></div><?php endif; ?>
        </div>
    </div>
</section>

<!-- Swiper JS -->
<script src="/yaheng/Public/Wap/js/swiper.min.js"></script>

<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper('.swiper-container', {
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        slidesPerView: 4
    });


</script>
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