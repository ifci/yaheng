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
    <div class="agent">
        <div class="agent_t">
            <img src="/yaheng/Public/Wap/images/pic_24.jpg" alt=""/>
            <span><i>招商热线</i><em><?php echo ($site["tel"]); ?></em></span>
        </div>
        <div class="agent_b">
            <ul>
                <li>
                    <h4><span>品牌代理</span></h4>
                    <div class="con">
                        <p><em>蓓特蔓</em>本着长远发展的大局，希望和代理商共同发展，选择我们，我们会给您一定的支持，但是同时也请本着对企业和个人负责的态度来面对和持续我们的合作。</p>                    </div>
                </li>
                <li>
                    <h4><span>代理条件</span></h4>
                    <div class="con">
                        <p>热爱皮草皮衣行业，有强烈的<em>事业心和持久</em>的毅力，</p>
                        <p><em>认同蓓特蔓</em>的理念文化</p>
                        <p>具备市场开发和管理能力，并具备一定的<em>市场营销和市场推广</em>经验</p>
                        <p>对蓓特蔓品牌有一定的<em>认知度</em></p>
                        <p>具备一定的<em>经济实力</em>，有一定的备用资金。</p>                    </div>
                </li>
                <li>
                    <h4><span>代理流程</span></h4>
                    <div class="con">
                        <p>1.	通过网站和或电话咨询了解BETY MAGI（蓓特蔓）</p>
                        <p>2.	<em>代理商</em>填写相关资料</p>
                        <p>3.	代理商<em>资格审核</em></p>
                        <p>4.	达成协议，签订合同</p>
                        <p>5.	BETY MAGI（蓓特蔓）根据不同<em>区域协助代理商</em>选款式</p>
                        <p>6.	代理商选定款式和数量，并<em>交付订金</em></p>
                        <p>7.	<em>BETY MAGI（蓓特蔓）</em>完善的后续支持和操作。</p>                    </div>
                </li>
            </ul>
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