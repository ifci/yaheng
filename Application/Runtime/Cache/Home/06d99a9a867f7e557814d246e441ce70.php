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
    <span>当前位置：</span><a href="/yaheng/" title="首页">首页</a><i>></i><a href="<?php echo U('/'.$b_url);?>" title="<?php echo ($webtitle); ?>"><?php echo ($webtitle); ?></a><?php if($details == 1): ?><i>></i><a href="/yaheng/haute.html" title="<?php echo ($info['title']); ?>"><?php echo ($info['title']); ?></a><?php endif; ?>
</div>
<link rel="stylesheet" href="/yaheng/Public/Home/css/swiper.min.css"/>
<link rel="stylesheet" href="/yaheng/Public/Home/css/idangerous.swiper.3dflow.css"/>
<style>


    .swiper-container {
        padding:30px 0;
        max-width: 1100px;
    }
    .swiper-slide {
        width:auto;
        height:638px;
        background-size:cover;
        background-repeat:no-repeat;
        background-position:center;
        border-radius:5px;
        border-bottom:1px solid #555;
    }
    .reflection  {
        width: 100%;
        height: 15px;
        border-radius: 3px 3px 0 0;
        position: absolute;
        left: 0;
        bottom: -17px;
        background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0,0,0,0.3)), to(rgba(0,0,0,0))); /* Safari 4+, Chrome */
        background-image: -webkit-linear-gradient(top, rgba(0,0,0,0.3), rgba(0,0,0,0)); /* Chrome 10+, Safari 5.1+, iOS 5+ */
        background-image:    -moz-linear-gradient(top, rgba(0,0,0,0.3), rgba(0,0,0,0)); /* Firefox 3.6-15 */
        background-image:      -o-linear-gradient(top, rgba(0,0,0,0.3), rgba(0,0,0,0)); /* Opera 11.10-12.00 */
        background-image:         linear-gradient(to bottom, rgba(0,0,0,0.3), rgba(0,0,0,0)); /* Firefox 16+, IE10, Opera 12.50+ */
    }
    .swiper-slide a {
        position:absolute;
        left:0;
        top:0;
        width:100%;
        height:100%;
        z-index:1
    }
    .arrow-left,.arrow-right{
        width: 48px;
        height: 48px;
        line-height: 46px;
        position: absolute;
        z-index: 2;
        border: 1px solid #0b0a0a;
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
    .arrow-left:hover,.arrow-right:hover{
        color: #fff;
        border: 1px solid #fff;
    }
    .arrow-left {
        left: 180px;
    }
    .arrow-right {
        right: 180px;
    }
</style>
<div class="content">
    <!-- 高级定制 -->
    <div class="haute center">
        <div class="haute_t">
            <div class="line"></div>
            <div class="haute_tc">
                <div class="tit">高级定制案例展示</div>
                <div class="ftit">高级定制，“奢华需要精致的细节表现”</div>
                <div class="tel">
                    <i></i>
                    <em>联系热线</em>
                    <span><?php echo ($site["tel"]); ?></span>
                </div>
            </div>
        </div>

        <div class="swiper-container">
            <a class="arrow-left" href="#"><</a>
            <a class="arrow-right" href="#">></a>
            <div class="swiper-wrapper">
                <div class="swiper-slide" style="background-image:url(/yaheng/Public/Home/images/pic_36.jpg)">

                    <div class="reflection"></div>
                </div>
                <div class="swiper-slide" style="background-image:url(/yaheng/Public/Home/images/pic_36.jpg)">

                    <div class="reflection"></div>
                </div>
                <div class="swiper-slide" style="background-image:url(/yaheng/Public/Home/images/pic_36.jpg)">

                    <div class="reflection"></div>
                </div>
                <div class="swiper-slide" style="background-image:url(/yaheng/Public/Home/images/pic_36.jpg)">

                    <div class="reflection"></div>
                </div>
                <div class="swiper-slide" style="background-image:url(/yaheng/Public/Home/images/pic_36.jpg)">

                    <div class="reflection"></div>
                </div>
            </div>
        </div>


        <div class="haute_t">
            <div class="line"></div>
            <div class="haute_tc">
                <div class="tit">高级定制定制流程</div>
                <div class="ftit">高级定制，“奢华需要精致的细节表现”</div>
                <div class="tel">
                    <i></i>
                    <em>联系热线</em>
                    <span><?php echo ($site["tel"]); ?></span>
                </div>
            </div>
        </div>



        <div class="haute_c center">
            <div class="haute_cc">
                <div class="dz_btn"></div>
                <div class="bgf"></div>
                <ul class="haute_dz">
                    <li><i>1</i>与顾客沟通，深入了解顾客的需求，喜爱的皮草服装风格，为客户提供款式选择，或者由客户提供款式的照片。通过与客户的深入沟通把客户的想法变得更加实际和具体。</li>
                    <li><i>2</i>顾客原料选择及颜色：我们提供不同皮毛品质及颜色样供客户选择，所有原村料可以通过环保测试。我们有各种国产，进口的狐狸毛，貉子毛，羊毛皮，水貂，光面羊皮，毛面有不同的颜色和印花风格，皮面风格有光面革，绒面革，清水革，水染蜡感革，植鞣革等 。</li>
                    <li><i>3</i>通过与客户的沟通，为客户出设计图稿，并就细节与客户沟通与确认。如果客户提供的款式图或设计，我们会做出排板，绘制出一个图样供客户确认。</li>
                    <li><i>4</i>尺寸确认：我们会提供一组样衣，让客户试身，可以根据客户要求调整尺寸。</li>
                    <li><i>5</i>客户试样后有不合适的地方，可以就尺寸方面进行调整修改。</li>
                    <li><i>6</i>中途样品制作：如果客户有其他要求，与设计师及时沟通，在半成品期间进行修改。</li>
                    <li><i>7</i>皮草服装交付时，对于皮草服装的保养与洗涤，对客户进行说明，为售后服务打好基础。</li>
                    <li><i>8</i>售后服务：顾客可以前来领取，也可上门送货服务。对皮草后期保养给客户合理建议。</li>
                </ul>
            </div>
        </div>

    </div>
</div>

<script src="/yaheng/Public/Home/js/swiper.min.js"></script>
<script src="/yaheng/Public/Home/js/idangerous.swiper.3dflow.js"></script>
<script>
    var mySwiper = new Swiper('.swiper-container',{
        slidesPerView: 2,
        loop:false,
        centeredSlides : true,
        initialSlide: 1,
        //Enable 3D Flow
        tdFlow: {
            rotate: 0,
            stretch: 200,
            shadows: true
//            depth: 300
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