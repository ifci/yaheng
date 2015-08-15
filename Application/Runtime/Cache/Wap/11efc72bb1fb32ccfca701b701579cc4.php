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
    <div class="bety">
        <div class="bety_t">
            <small>Brand introduction</small>
            <span>品牌简介</span>
        </div>
        <div class="bety_c">
            <img src="/yaheng/Public/Wap/images/pic_19.jpg" alt=""/>
            <p>蓓特蔓以皮草皮衣设计，生产，销售为一体，主要生产以羊毛皮，（獭）兔毛皮，貉子，狐狸，水貂等皮草服装及服饰品，产品远销法国，西班牙，美国，丹麦，日本等国家。同时，与国内知名品牌合作开发皮草系列产品。</p>
            <p>每一件皮草都根据自身特性精心设计，历经选皮，设计，确定用料，制板，制作布样，试样，修板，算料，配色，钉皮，裁皮，车缝，再钉皮等 多道工序。公司也致力于个人皮草外套订制业务，为消费者提供个性化服务。公司力求将更好的品质，更好的服务，更低的价格带给广大消费者。</p>
        </div>
        <div class="bety_t">
            <small>Brand Culture</small>
            <span>品牌文化</span>
        </div>
        <div class="bety_c">
            <img src="/yaheng/Public/Wap/images/pic_20.jpg" alt=""/>
            <div class="culture">
                <ul>
                    <li><em>企业愿望：</em><span>成为令人喜爱的时尚企业</span></li>
                    <li><em>服务宗旨：</em><span>以服务为基础，满足不同客户群体的需求</span></li>
                    <li><em>企业精神：</em><span>诚信为本，品质优先，不断创新，勇于实践</span></li>
                    <li><em>企业使命：</em><span>梦想的传递，个性的彰显，用自然，时尚，充满个性的皮草来演绎突显不同的个性气质。</span></li>
                    <li><em>企业定位：</em><span>25岁以上成熟自信，独立，了解时尚，注重品味，不盲目跟从的时尚人士，白领阶层，全方位路线，多元化款式。</span></li>
                </ul>
            </div>
        </div>
        <div class="bety_t">
            <small>Brand line</small>
            <span>品牌路线</span>
        </div>
        <div class="bety_c tac">
            <img src="/yaheng/Public/Wap/images/pic_21.jpg" alt=""/>
            <div class="bety_p1"><img src="/yaheng/Public/Wap/images/pic_22.jpg" alt=""/></div>
            <div class="bety_p2">设计灵感：自然轻松而又帅气。</div>
            <div class="bety_p3">Bety Magi（蓓特蔓）表现出来是一种个性而摩登的生活态度</div>
            <div class="bety_p3">2015年8月全面推出Bety Magi蓓特蔓15秋冬系列皮草皮衣新品。</div>
            <br/>
            <div>皮草系列：<br/>
            以羊毛皮，（獭）兔毛皮，貉子，狐狸，水貂为主的皮草系列女装和男装。<br/><br/>
            皮衣系列：<br/>
            以羊皮光面皮为主，帅气的朋克风机车服不再是摇滚男孩女孩的专利，走向街头的任何人，随时可以感受机车服带给你的自由和时尚，低调内敛的你，也可以轻松驾驭。</div>
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