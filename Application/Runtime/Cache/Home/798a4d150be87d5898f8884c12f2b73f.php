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
    <span>当前位置：</span><a href="/yaheng/" title="首页">首页</a><i>></i><a href="<?php echo U('/'.$b_url);?>" title="<?php echo ($webtitle); ?>"><?php echo ($webtitle); ?></a><?php if($details == 1): ?><i>></i><a href="/yaheng/agent.html" title="<?php echo ($info['title']); ?>"><?php echo ($info['title']); ?></a><?php endif; ?>
</div>
<!--content开始-->
<div id="content">
    <div class="main_t">
        <img src="/yaheng/Public/Home/images/pic_38.jpg" alt="选择我们，将我们的美丽传递四方"/>
    </div>
    <div class="agent center clearfix">
        <div class="agent_l">
            <img src="/yaheng/Public/Home/images/pic_39.jpg" alt="品牌代理"/>
            <i></i>
            <p><small>招商热线</small><span><?php echo ($site["tel"]); ?></span></p>
        </div>
        <div class="agent_r">
            <ul>
                <li>
                    <h4><span>品牌代理</span></h4>
                    <div class="con">
                        <p><em>蓓特蔓</em>本着长远发展的大局，希望和代理商共同发展，选择我们，我们会给您一定的支持，但是同时也请本着对企业和个人负责的态度来面对和持续我们的合作。</p>
                    </div>
                </li>
                <li>
                    <h4><span>代理条件</span></h4>
                    <div class="con">
                        <p>热爱皮草皮衣行业，有强烈的<em>事业心和持久</em>的毅力，</p>
                        <p><em>认同蓓特蔓</em>的理念文化</p>
                        <p>具备市场开发和管理能力，并具备一定的<em>市场营销和市场推广</em>经验</p>
                        <p>对蓓特蔓品牌有一定的<em>认知度</em></p>
                        <p>具备一定的<em>经济实力</em>，有一定的备用资金。</p>
                    </div>
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
                        <p>7.	<em>BETY MAGI（蓓特蔓）</em>完善的后续支持和操作。</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--content结束-->
<div class="footer">
    <div class="center">
        <div class="copy">
            <p>© Copyright betymagifur.cn All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;沪ICP备15018568号-1&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="http://www.shjkd.cn/" title="上海九口袋" target="_blank">上海九口袋</a></p>
        </div>
    </div>
</div>
</body>
</html>