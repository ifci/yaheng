<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!--[if IE 7 ]><html class="ie7"> <![endif]-->
<!--[if IE 8 ]><html class="ie8"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge|chrome=1" />
    <meta name="author" content="fcdcyy@sina.cn">
    <meta name="Copyright" content="JKD TEAM">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,minimal-ui">
    <meta name="format-detection" content="telephone=no,email=no,adress=no">
    <meta http-equiv="cache-control" content="no-siteapp"/>
    <title><?php if(CONTROLLER_NAME != 'Index'): echo ($webtitle); ?>-<?php endif; echo ($site["name"]); ?></title>
    <meta name="keywords" content="<?php echo ($info['keywords'] ? $info['keywords'] : $site["keyword"]); ?>">
    <meta name="description" content="<?php echo ($info['description'] ? $info['description'] : $site["description"]); ?>">
    <link rel="dns-prefetch" href="<?php echo C('WEB_ROOT');?>">
    <link rel="shortcut icon" href="/yaheng/favicon.ico">
    <link type="text/css" href="/yaheng/Public/Min/?f=/yaheng/Public/Home/css/base.css|/yaheng/Public/Home/css/combo.css" rel="stylesheet" />
    <script type="text/javascript" src="/yaheng/Public/Min/?f=/yaheng/Public/Home/js/jquery-1.11.3.min.js|/yaheng/Public/Home/js/main.js"></script>
</head>

<body>
<div class="app_mask">
    <div class="app_mask_cnt">
        <span class="l-loading"></span>
    </div>
</div>
<div class="header">
    <div class="center pr">
        <div id="menu" class="menu"><i></i></div>
        <div class="menu_list">
            <ul>
                <?php $_m_nav=M("nav");$__list__=$_m_nav->where("lang='zh-cn'  AND type='top' AND parent_id=0")->order('sort DESC')->select();foreach($__list__ as $_k1=>$_v1):$cid=$_v1['id'];$child=$_m_nav->where('parent_id='.$cid)->order('sort DESC')->select();extract($_v1);?><li <?php if($webtitle == $nav_name): ?>class='on'<?php endif; ?>>
                    <a href="<?php if($link != null): echo ($link); else: echo U('/'.$action); endif; ?>" title="<?php echo ($nav_name); ?>">
                        <?php echo ($nav_name); ?>
                    </a>
                </li><?php endforeach; ?>
            </ul>
            <div class="close">×</div>
        </div>
        <div class="sharebar">
            <a href="#" title="" class="s_tel"><i></i></a>
            <a href="#" title="" class="s_wx"><i></i></a>
            <a href="#" title="" class="s_wb"><i></i></a>
        </div>
    </div>
</div>
<div class="bread">
    <span>当前位置：</span><a href="/yaheng/" title="首页">首页</a><i>></i><a href="<?php echo U('/'.$b_url);?>" title="<?php echo ($webtitle); ?>"><?php echo ($webtitle); ?></a><?php if($details == 1): ?><i>></i><a href="/yaheng/product_r/57.html" title="<?php echo ($info['title']); ?>"><?php echo ($info['title']); ?></a><?php endif; ?>
</div>
<link rel="stylesheet" href="/yaheng/Public/Home/css/swiper.min.css"/>
<style>
    /* Demo Syles */
    .arrow-left,.arrow-right{
        width: 48px;
        height: 48px;
        line-height: 46px;
        position: absolute;
        z-index: 2;
        border: 1px solid #333;
        margin-top: -24px;
        background: rgba(0,0,0,.1);
        top: 50%;
        color: #0b0a0a;
        font-family: Simsun;
        font-size: 30px;
        text-align: center;
        -webkit-transition: inherit;
        -moz-transition: inherit;
        -ms-transition: inherit;
        -o-transition: inherit;
        transition: inherit;
    }
    .arrow-left {
        left: 0;
    }
    .arrow-right {
        right: 0;
    }
    .swiper-container {
        height: 484px;
        width: 400px;
    }
</style>
<div class="content">
    <div class="product center">
        <div class="product_t clearfix">
            <div class="product_tl">
                <em>PRODUCT SERIES</em>
                <span>产品系列</span>
            </div>
            <div class="product_tr">
                摆脱束缚，追求自由。
            </div>
        </div>

        <!--详情页-->
        <div class="details">
            <div class="details_box clearfix">
                <div class="preview">
                    <a class="arrow-left" href="#"><</a>
                    <a class="arrow-right" href="#">></a>
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"> <img src="/yaheng/Public/Home/images/pic_13.jpg"> </div>
                            <div class="swiper-slide"> <img src="/yaheng/Public/Home/images/pic_13.jpg"> </div>
                        </div>
                    </div>
                </div>
                <div class="itemInfo">
                    <div class="tit">2015秋新款海宁真皮皮衣女短款修身机车夹克绵羊皮外套</div>
                    <div class="pri">¥3000.00</div>
                    <p class="mt40"><span>材质：</span>新西兰进口棉羊皮</p>
                    <p><span>尺码：</span><a href="#">S</a><a href="#">M</a><a href="#">L</a></p>
                    <p><span>颜色：</span>黑色</p>
                    <div class="btn"><a href="#" title="立即购买">立即购买</a></div>
                    <p class="teu">大牌定制，真皮皮衣。</p>
                </div>
            </div>

            <!--简介-->
            <div class="intro">
                <div class="intro_t">产品介绍</div>
                <div class="intro_c">
                    <p class="tac"><img src="/yaheng/Public/Home/images/pic_40.jpg" alt=""/></p>
                    <p class="tac"><img src="/yaheng/Public/Home/images/pic_41.jpg" alt=""/></p>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/yaheng/Public/Home/js/swiper.min.js"></script>
<script>
    var mySwiper = new Swiper('.swiper-container',{
        loop: true
    });
    $('.arrow-left').on('click', function(e){
        e.preventDefault();
        mySwiper.swipePrev()
    });
    $('.arrow-right').on('click', function(e){
        e.preventDefault();
        mySwiper.swipeNext()
    })
</script>
<div class="footer">
    <div class="center">
        <div class="copy">
            <p>© Copyright betymagifur.cn All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;沪ICP备15018568号-1&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="http://www.shjkd.cn/" title="上海九口袋" target="_blank">上海九口袋</a></p>
        </div>
    </div>
</div>
</body>
</html>