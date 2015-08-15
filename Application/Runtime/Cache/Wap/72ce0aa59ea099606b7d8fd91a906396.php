<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE HTML>
<html>
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
    <link type="text/css" href="/yaheng/Public/Min/?f=/yaheng/Public/Wap/css/index.css|/yaheng/Public/Wap/css/swiper.min.css" rel="stylesheet" />
    <style>
        html, body {
            position: relative;
            height: 100%;
        }
        body {
            background: #eee;
            /*font-family: Helvetica Neue, Helvetica, Arial, sans-serif;*/
            font-size: 14px;
            color:#000;
            margin: 0;
            padding: 0;
        }
        .swiper-container {
            width: 100%;
            height: 100%;
        }
        .swiper-wrapper em{
            font-size: .7em;
        }
        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;

            /* Center slide text vertically */
            /*display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;*/
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }
    </style>
</head>
<body>
    <div class="nav_btn"></div>
    <div class="nav">
        <div class="nav-warp">
            <h4>导航</h4>
            <ul>
                <?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="/yaheng/wap/<?php echo ($vo['action']); ?>"><?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <div class="tel">联系热线：<?php echo ($site["tel"]); ?></div>
        </div>
    </div>
    <!-- Swiper -->
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="slide-1"><img src="/yaheng/Public/Wap/images/logo.png" alt=""/></div>
                <div class="slide-2"><img src="/yaheng/Public/Wap/images/pic_02.png" alt=""/></div>
                <div class="slide-3"><em>时尚与自由的完美融合，是Bety Magi蓓特蔓散发魅力的源泉。</em></div>
                <div class="slide-4"><img src="/yaheng/Public/Wap/images/pic_03.png" alt=""/></div>
                <div class="darkBtn darkBtn-black"><a href="#">了解贝特曼品牌</a></div>
            </div>
            <div class="swiper-slide">
                <div class="slide-5"><img src="/yaheng/Public/Wap/images/pic_04.png" alt=""/></div>
                <div class="slide-6"><img src="/yaheng/Public/Wap/images/pic_05.png" alt=""/></div>
                <div class="slide-7"><em>以羊毛皮，（獭）兔毛皮，貉子，狐狸，水貂为主</em></div>
                <div class="slide-8"><img src="/yaheng/Public/Wap/images/pic_06.png" alt=""/></div>
                <div class="darkBtn"><a href="#">购买皮草</a></div>
            </div>
            <div class="swiper-slide">
                <div class="slide-5"><img src="/yaheng/Public/Wap/images/pic_04.png" alt=""/></div>
                <div class="slide-6"><img src="/yaheng/Public/Wap/images/pic_08.png" alt=""/></div>
                <div class="slide-7"><em>羊皮光面皮为主，帅气的朋克风机车服不再是 <br/>摇滚男孩女孩的专利</em></div>
                <div class="slide-8"><img src="/yaheng/Public/Wap/images/pic_09.png" alt=""/></div>
                <div class="darkBtn"><a href="#">购买皮衣</a></div>
            </div>
            <div class="swiper-slide">
                <div class="slide-9"><img src="/yaheng/Public/Wap/images/pic_10.png" alt=""/></div>
                <div><em>打造度假潮流风格</em></div>
                <div class="slide-10"><img src="/yaheng/Public/Wap/images/pic_11.png" alt=""/></div>
                <div class="darkBtn"><a href="#">了解定制流程&案例</a></div>
            </div>
            <div class="swiper-slide">
                <div><img src="/yaheng/Public/Wap/images/pic_12.jpg" alt=""/></div>
                <div class="slide-11"><em>专注皮草、皮衣制成品15年、创新设计、时尚专家助阵</em></div>
                <div class="slide-12"><img src="/yaheng/Public/Wap/images/pic_13.png" alt=""/></div>
                <div class="slide-13">
                    <ul>
                        <li>结合西方高端服装流行趋势，符合亚洲人身型定制高端服装</li>
                        <li>拥有资深设计师打造最前沿的经典时尚</li>
                        <li>每款服装都经历严格14道工序</li>
                        <li>欧美奢侈品网热卖品牌</li>
                    </ul>
                </div>
            </div>
            <div class="swiper-slide">
                <div><img src="/yaheng/Public/Wap/images/pic_14.jpg" alt=""/></div>
                <div class="slide-14"><img src="/yaheng/Public/Wap/images/pic_15.png" alt=""/></div>
                <div class="slide-15"><img src="/yaheng/Public/Wap/images/pic_18.png" alt=""/></div>
                <div class="slide-16"><em>从事皮草皮衣外贸10年，有丰富的皮草皮衣经验。
                         洞悉国际时装流行趋势，并把流行元素融入服装系列中。
                         崇尚简单时尚，敢于突破自我，设计出的每款服装都闪烁着自由的光芒。</em></div>
            </div>
            <div class="swiper-slide">
                <div><img src="/yaheng/Public/Wap/images/pic_16.jpg" alt=""/></div>
                <div class="slide-17"><img src="/yaheng/Public/Wap/images/pic_17.png" alt=""/></div>
                <div class="slide-18"><em>从选皮到设计，从裁剪到缝制，<br/>
                                      每一道工序都凝聚着BetyMagi的心意。<br/>
                                      流畅的线条，灵动的触感，<br/>
                                      国际高端标准彰显优雅与魅力。</em></div>
            </div>
        </div>
        <div class="scrollTips"></div>
    </div>

    <script type="text/javascript" src="/yaheng/Public/Min/?f=/yaheng/Public/Wap/js/zepto.min.js|/yaheng/Public/Wap/js/touch.js|/yaheng/Public/Wap/js/swiper3.1.0.jquery.min.js|/yaheng/Public/Wap/js/index.js"></script>
    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper('.swiper-container', {
            direction: 'vertical',
            onSlideChangeEnd:function(swiper){
                swiper.activeIndex >= 1 ? $('.scrollTips').hide() : false;
            }
        });
    </script>
</body>
</html>