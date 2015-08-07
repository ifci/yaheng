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
    <span>当前位置：</span><a href="/yaheng/" title="首页">首页</a><i>></i><a href="<?php echo U('/'.$b_url);?>" title="<?php echo ($webtitle); ?>"><?php echo ($webtitle); ?></a><?php if($details == 1): ?><i>></i><a href="/yaheng/bety.html" title="<?php echo ($info['title']); ?>"><?php echo ($info['title']); ?></a><?php endif; ?>
</div>
<div class="content">
    <div class="btm_t clearfix">
        <div class="btm_t_l"><img src="/yaheng/Public/Home/images/pic_13.jpg" alt=""/></div>
        <div class="btm_t_c"><img src="/yaheng/Public/Home/images/pic_12.png" alt=""/></div>
        <div class="btm_t_r">
            <div class="btm_t_rt">
                <em>BRAND INTRODUCTION</em>
                <span>品牌简介</span>
            </div>
            <div class="btm_t_rb">
                <p>蓓特蔓以皮草皮衣设计，生产，销售为一体，主要生产以羊毛皮，（獭）兔毛皮，貉子，狐狸，水貂等皮草服装及服饰品，产品远销法国，西班牙，美国，丹麦，日本等国家。同时，与国内知名品牌合作开发皮草系列产品。</p>
                <p>每一件皮草都根据自身特性精心设计，历经选皮，设计，确定用料，制板，制作布样，试样，修板，算料，配色，钉皮，裁皮，车缝，再钉皮等 多道工序。公司也致力于个人皮草外套订制业务，为消费者提供个性化服务。公司力求将更好的品质，更好的服务，更低的价格带给广大消费者。</p>
            </div>
        </div>
    </div>

    <div class="btm_c clearfix">
        <div class="center">
            <div class="btm_c_l">
                <div class="btm_c_lt">
                    <em>BRAND CULTURE</em>
                    <span>品牌文化</span>
                </div>
                <div class="btm_c_lb">
                    <ul>
                        <li>
                            <i></i>
                            <span>企业愿景</span>
                            <em>成为令人喜爱的时尚企业</em>
                        </li>
                        <li>
                            <i></i>
                            <span>服务宗旨</span>
                            <em>以服务为基础，满足不同客户群体的需求</em>
                        </li>
                        <li>
                            <i></i>
                            <span>企业精神</span>
                            <em>诚信为本，品质优先，不断创新，勇于实践</em>
                        </li>
                        <li>
                            <i></i>
                            <span>企业使命</span>
                            <em>梦想的传递，个性的彰显，用自然，时尚，充满个性的皮草来演绎突显不同的个性气质。</em>
                        </li>
                        <li>
                            <i></i>
                            <span>企业定位</span>
                            <em>25岁以上成熟自信，独立，了解时尚，注重品味，不盲目跟从的时尚人士，白领阶层，全方位路线，多元化款式。</em>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="btm_c_r"><img src="/yaheng/Public/Home/images/pic_14.png" alt=""/></div>
        </div>
    </div>

    <div class="btm_b">
        <img src="/yaheng/Public/Home/images/pic_15.png" alt=""/>
        <div class="btm_b_w">
            <div class="btm_b_p1"><img src="/yaheng/Public/Home/images/logo.png" alt="蓓特蔓"/></div>
            <div class="btm_b_p2">BRAND LINE</div>
            <div class="btm_b_p3"><i></i><span>品牌路线</span></div>
            <div class="btm_b_p4">摆脱束膊，追求自由。</div>
            <div class="btm_b_p5">设计灵感：自然轻松而又帅气。</div>
            <div class="btm_b_p6">Bety Magi（蓓特蔓）表现出来是一种个性而摩登的生活态度</div>
            <div class="btm_b_p7">BETY MAGI MANIFESTED IS A PERSONALIZED AND MODERN ATTITUDE TO LIFE</div>
            <div class="btm_b_p8">2015年8月全面推出Bety Magi蓓特蔓15秋冬系列皮草皮衣新品。</div>
            <div class="btm_b_p9">
                皮草系列：以羊毛皮，（獭）兔毛皮，貉子，狐狸，水貂为主的皮草系列女装和男装。
                皮衣系列：以羊皮光面皮为主，帅气的朋克风机车服不再是摇滚男孩女孩的专利，走向街头的任何人，随时可以感受机车服带给你的自由和时尚，低调内敛的你，也可以轻松驾驭。
            </div>
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