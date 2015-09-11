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
    <span>当前位置：</span><a href="/yaheng/" title="首页">首页</a><i>></i><a href="<?php echo U('/'.strtolower(CONTROLLER_NAME));?>" title="<?php echo ($bread); ?>"><?php echo ($bread); ?></a><?php if($details == 1): ?><i>></i><a href="/yaheng/product/index/cid/62/sid/90.html" title="<?php echo ($info['title']); ?>"><?php echo ($info['title']); ?></a><?php endif; ?>
</div>
<link rel="stylesheet" href="/yaheng/Public/Home/css/swiper.min.css"/>
<link rel="stylesheet" href="/yaheng/Public/Home/css/idangerous.swiper.scrollbar.css"/>
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
                    <?php if(is_array($cate_list)): $i = 0; $__LIST__ = $cate_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="slide_t <?php if($_GET['cid'] == $vo['cid']): ?>on<?php endif; ?>"><a href="<?php echo U('product/index',array('cid'=>$vo['cid'],'sid'=>$_GET['sid']));?>" title="<?php echo ($vo["name"]); ?>" data-cid="<?php echo ($vo["id"]); ?>"><?php echo ($vo["name"]); ?></a></div>
                        <div class="slide_c">
                            <ul>
                                <?php if(is_array($vo[voo])): $i = 0; $__LIST__ = $vo[voo];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub): $mod = ($i % 2 );++$i;?><li <?php if($_GET['cid'] == $sub['cid']): ?>class="on"<?php endif; ?>><a href="<?php echo U('product/index',array('cid'=>$sub['cid'],'sid'=>$_GET['sid']));?>" title="<?php echo ($sub["name"]); ?>" data-cid="<?php echo ($vo["id"]); ?>"><i></i><?php echo ($sub["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            </ul>
                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
                <div class="side_c">
                    高级定制，<br/>“奢华需要精致的细节表现”
                    <a href="tencent://message/?uin=<?php echo ($site["qq"]); ?>" title="我要定制">我要定制</a>
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
                            <?php if(is_array($season)): $k = 0; $__LIST__ = $season;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><a href="<?php echo U('product/index',array('cid'=>$_GET['cid'],'sid'=>$vo['cid']));?>" <?php if($sid == $vo['cid']): ?>class="on"<?php endif; ?> data-sid="<?php echo ($vo["cid"]); ?>"><?php echo ($vo["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
                        </div>
                        <input type="hidden" id="sea_val_cid" value="<?php echo ($_GET['cid']); ?>"/>
                        <input type="hidden" id="total" value="<?php echo ($total); ?>"/>
                        <div class="hd">
                            <a href="javascript:"><</a>
                            <a href="javascript:">></a>
                        </div>
                    </div>
                    <div class="plist">
                        <ul class="clearfix">
                            <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('product_r/'.$vo['id']);?>" title="<?php echo ($vo["title"]); ?>"><img src="<?php echo get_default_img($vo['image_id']);?>" alt="<?php echo ($vo["title"]); ?>"/><em></em><span><?php echo ($vo["title"]); ?></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <?php if($list == null): ?><div class="empty">暂无相关产品信息！</div><?php endif; ?>
                        </ul>
                        <?php echo ($page); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/yaheng/Public/Home/js/swiper.min.js"></script>
<script src="/yaheng/Public/Home/js/idangerous.swiper.scrollbar.js"></script>
<div class="footer">
    <div class="center">
        <div class="copy">
            <p>© Copyright betymagifur.cn All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;沪ICP备15018568号-1&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="http://www.shjkd.cn/" title="上海九口袋" target="_blank">上海九口袋</a></p>
        </div>
    </div>
</div>
</body>
</html>