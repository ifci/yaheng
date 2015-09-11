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
    <div class="pr clearfix header_wrap">
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
            <a href="javascript:" title="咨询热线" class="s_tel"><i></i></a>
            <a href="javascript:" title="亚恒官方微信" class="s_wx"><i></i></a>
            <a href="<?php echo ($site["weibo"]); ?>" title="亚恒官方微博" class="s_wb" target="_blank" rel="nofollow"><i></i></a>
            <div class="sharebar_con"><span>咨询热线：<b><?php echo ($site["tel"]); ?></b></span><span><img src="/yaheng/Uploads/picture/<?php echo ($wxqr[0]["ad_img"]); ?>" alt="<?php echo ($wxqr[0]["ad_name"]); ?>"/></span></div>
        </div>
    </div>
</div>
<div class="bread">
    <span>当前位置：</span><a href="/yaheng/" title="首页">首页</a><i>></i><a href="<?php echo U('/'.strtolower(CONTROLLER_NAME));?>" title="<?php echo ($bread); ?>"><?php echo ($bread); ?></a><?php if($details == 1): ?><i>></i><a href="/yaheng/haute.html" title="<?php echo ($info['title']); ?>"><?php echo ($info['title']); ?></a><?php endif; ?>
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
                <?php if(is_array($case)): $i = 0; $__LIST__ = $case;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="swiper-slide" style="background-image:url(<?php echo get_default_img($vo['image_id']);?>)" title="<?php echo ($vo["title"]); ?>">
                    <div class="reflection"></div>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
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
                    <?php echo ($dz[0]["content"]); ?>
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

<!--定制留言框-->
<div class="layer">
    <div class="layer_t">
        <small>ADVANCED CUSTOMIZATION</small>
        <h4>高级定制</h4>
        <span>温馨提示：为确保快速与您联系，请您填写真实的姓名和联系方式。以下信息我们均保密。</span>
        <i class="layer-close"></i>
    </div>
    <div class="layer_c clearfix">
        <div class="layer_cc clearfix">
            <form action="" method="post" class="form" onsubmit="return false">
                <div class="form-group">
                    <label for="uname">姓名</label><input type="text" id="uname" name="uname" class="form-control"/>
                    <label for="tel">电话</label><input type="text" id="tel" name="tel" class="form-control"/>
                </div>

                <div class="form-group">
                    <label for="email">邮箱</label><input type="text" id="email" name="email" class="form-control"/>
                    <label for="address">地址</label><input type="text" id="address" name="address" class="form-control"/>
                </div>

                <div class="form-group">
                    <label for="text" class="vt">备注</label><textarea name="text" id="text"></textarea>
                </div>
                
                <div class="form-group">
                    <input type="submit" value="提交" class="submit"/>
                    <input type="reset" value="重置" class="reset"/>
                </div>
            </form>
            <div class="layer_cr"></div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="center">
        <div class="copy">
            <p>© Copyright betymagifur.cn All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;沪ICP备15018568号-1&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="http://www.shjkd.cn/" title="上海九口袋" target="_blank">上海九口袋</a></p>
        </div>
    </div>
</div>
</body>
</html>