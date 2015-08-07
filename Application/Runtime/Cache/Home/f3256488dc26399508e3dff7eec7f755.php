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
    <span>当前位置：</span><a href="/yaheng/" title="首页">首页</a><i>></i><a href="<?php echo U('/'.$b_url);?>" title="<?php echo ($webtitle); ?>"><?php echo ($webtitle); ?></a><?php if($details == 1): ?><i>></i><a href="/yaheng/news_r/45.html" title="<?php echo ($info['title']); ?>"><?php echo ($info['title']); ?></a><?php endif; ?>
</div>
<!--content开始-->
<div id="content">
    <div class="news center">
        <div class="news_l">
            <div class="news_lc">
                <div class="tit"><?php echo ($info["title"]); ?></div>
                <div class="date">TIME: <?php echo (date('Y/m/d H:i:s',$info['published'])); ?>&nbsp;&nbsp;&nbsp;&nbsp;CLICK: <?php echo ($info['click']); ?></div>
                <div class="con">
                    <?php echo ($info['content']); ?>
                </div>
                <div class="share">分享到：<div class="bshare-custom" style="display:inline-block;*display:inline;zoom:1;"><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到人人网" class="bshare-renren"></a><a title="分享到腾讯微博" class="bshare-qqmb"></a><a title="分享到网易微博" class="bshare-neteasemb"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count">0</span></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=7afd94bb-a7e8-4d65-9936-979b687f14eb&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script></div>
                <div class="news_b clearfix">
                    <div class="news_np">
                        <?php if($prev != null): ?><a href="<?php echo $prev == null ? 'javascript:':U('News/read',array('id'=>$prev[id]));?>" title="<?php echo ($prev["title"]); ?>">
                            下一篇： <?php echo ($prev[title]); ?>
                        </a>
                        <?php else: ?>
                        <span>下一篇：没有了</span><?php endif; ?>
                    </div>
                    <div class="backIndex">
                        <a href="<?php echo C('WEB_ROOT');?>" title="返回首页">
                            <i></i>
                            <span>返回首页</span>
                        </a>
                    </div>
                    <div class="backList">
                        <a href="<?php echo U('/news');?>" title="更多热门新闻">
                            <i></i>
                            <span>更多热门新闻</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="news_r">
            <ul>
                <li>
                    <div class="box"><a href="/yaheng/news_r/49.html" title="蓓特蔓（Bety Magi）皮草品牌經營發展趨勢5"><img src="/yaheng/Uploads/image/news/20150731/20150731172320_62965.jpg" alt="蓓特蔓（Bety Magi）皮草品牌經營發展趨勢5"/></a></div>
                    <div class="tit"><a href="/yaheng/news_r/49.html" title="蓓特蔓（Bety Magi）皮草品牌經營發展趨勢5">蓓特蔓（Bety Magi）皮草品牌經營發展趨勢5</a></div>
                    <div class="txt"><a href="/yaheng/news_r/49.html" title="上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品…">上海蘊盛國際貿易有限公司的產品一直主要是出口到日本和歐美國家，並為一些國際品牌做貼牌生產，奠定了保障生產品質的基礎，隨著國內場市場的發展，推出了自有品牌蓓特蔓(Bety Magi)皮草，現在的消費者越來越講求個性化，越來越注重個人形象的展現，特別是對有一定經濟基礎和一定消費品位的白領們來說，他們更是喜歡的是有個性，時尚而又有一定知名度的品牌服裝。因此，一定時期內消費市場將會向中高端的品…</a></div>
                    <div class="time">2015/07/31</div>
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