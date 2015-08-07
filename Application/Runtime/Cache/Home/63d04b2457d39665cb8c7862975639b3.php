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
    <span>当前位置：</span><a href="/yaheng/" title="首页">首页</a><i>></i><a href="<?php echo U('/'.$b_url);?>" title="<?php echo ($webtitle); ?>"><?php echo ($webtitle); ?></a><?php if($details == 1): ?><i>></i><a href="/yaheng/product.html" title="<?php echo ($info['title']); ?>"><?php echo ($info['title']); ?></a><?php endif; ?>
</div>
<link rel="stylesheet" href="/yaheng/Public/Home/css/swiper.min.css"/>
<link rel="stylesheet" href="/yaheng/Public/Home/css/idangerous.swiper.scrollbar.css"/>
<style>
    .swiper-container {
        width: auto;
    }
    .swiper-slide {
        color:#fff;
        font-size:14px;
        text-align:center;
        /*width: 80px;*/
        margin-right: 10px;
        border: 1px solid #bcbcbc;
    }
    .swiper-scrollbar {
        height:10px;
        margin:20px auto;
        width: 880px;
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
        <div class="product_c clearfix">
            <!--侧栏-->
            <div class="side">
                <div class="slide">
                    <div class="slide_t"><a href="#" title="皮衣系列">皮衣系列</a></div>
                    <div class="slide_t"><a href="javascript:" title="皮草系列">皮草系列 <i></i></a></div>
                    <div class="slide_c">
                        <ul>
                            <li><a href="#" title="羊毛皮外套"><i></i>羊毛皮外套</a></li>
                            <li><a href="#" title="狐狸毛外套"><i></i>狐狸毛外套</a></li>
                            <li><a href="#" title="貉子毛外套"><i></i>貉子毛外套</a></li>
                            <li><a href="#" title="水貂外套"><i></i>水貂外套</a></li>
                            <li><a href="#" title="兔毛皮外套"><i></i>兔毛皮外套</a></li>
                            <li><a href="#" title="皮毛一体系列"><i></i>皮毛一体系列</a></li>
                            <li><a href="#" title="皮草配饰"><i></i>皮草配饰</a></li>
                        </ul>
                    </div>
                </div>
                <div class="side_c">
                    高级定制，<br/>“奢华需要精致的细节表现”
                    <a href="#" title="我要定制">我要定制</a>
                </div>
                <div class="side_b">
                    <i></i><em>联系热线</em><span><?php echo ($site["tel"]); ?></span>
                </div>
            </div>

            <!--产品显示列表-->
            <div class="pwrap">
                <div class="pshow">
                    <div class="pshow_bt">
                        <div class="bd">
                            <a href="#" class="on">2015春夏</a>
                            <a href="#">2015秋冬</a>
                            <a href="#">2014春夏</a>
                            <a href="#">2014秋冬</a>
                            <a href="#">2013春夏</a>
                            <a href="#">2013秋冬</a>
                            <a href="#">2012春夏</a>
                            <a href="#">2012秋冬</a>
                        </div>
                        <div class="hd">
                            <a href="javascript:"><</a>
                            <a href="javascript:">></a>
                        </div>
                    </div>
                    <div class="plist">
                        <ul>
                            <li><a href="<?php echo U('Product/read',array('id'=>39));?>" title="羊毛皮外套"><img src="/yaheng/Public/Home/images/pic_13.jpg" alt="羊毛皮外套"/><em></em><span>羊毛皮外套</span></a></li>
                            <li><a href="#" title="羊毛皮外套"><img src="/yaheng/Public/Home/images/pic_13.jpg" alt="羊毛皮外套"/><em></em><span>羊毛皮外套</span></a></li>
                            <li><a href="#" title="羊毛皮外套"><img src="/yaheng/Public/Home/images/pic_13.jpg" alt="羊毛皮外套"/><em></em><span>羊毛皮外套</span></a></li>
                            <li><a href="#" title="羊毛皮外套"><img src="/yaheng/Public/Home/images/pic_13.jpg" alt="羊毛皮外套"/><em></em><span>羊毛皮外套</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/yaheng/Public/Home/js/swiper.min.js"></script>
<script src="/yaheng/Public/Home/js/idangerous.swiper.scrollbar.js"></script>
<script>
    var mySwiper = new Swiper('.swiper-container',{
        loop: true,
        slidesPerView: 8,
        //Enable Scrollbar
        scrollbar: {
            container :'.swiper-scrollbar',
            hide: false,
            draggable: true,
            snapOnRelease: true
        }
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