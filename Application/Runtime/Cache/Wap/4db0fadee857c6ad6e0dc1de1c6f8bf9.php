<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,minimal-ui">
    <meta name="author" content="fcdcyy@sina.cn">
    <link rel="dns-prefetch" href="<?php echo C('WEB_ROOT');?>">
    <link rel="shortcut icon" href="/yuanzhan/favicon.ico">
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
    <meta name="apple-mobile-web-app-title" content="远瞻投权手机端">
    <title>远瞻投权手机端</title>
    <meta name="keywords" content="<?php echo ($site["keyword"]); ?>,<?php echo ($info['keywords']); ?>">
    <meta name="description" content="<?php echo ($site["description"]); ?>,<?php echo ($info['description']); ?>">
    <link type="text/css" href="/yuanzhan/Public/Min/?f=/yuanzhan/Public/Wap/css/common.css|/yuanzhan/Public/Wap/css/index.css" rel="stylesheet" />
    <link href='http://www.youziku.com/webfont/NameCSS/29523' rel='stylesheet' type='text/css'/>
</head>
<body <?php if(CONTROLLER_NAME == Index): ?>class="index"<?php endif; ?>>
    <!--头部-->
    <header>
        <div class="nav_btn"><i class="iconfont">&#xe602;</i></div>
        <div class="logo"><a href="<?php echo C('WEB_ROOT').'wap';?>"><img src="/yuanzhan/Public/Wap/images/logo.png" alt=""/></a></div>
    </header>
    <div class="nav_list nav_on">
        <ul>
            <?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                <a href="<?php if($vo["action"] == null): echo ($vo["link"]); else: echo U($vo['action']); endif; ?>">
                    <span><?php echo ($vo["nav_rename"]); ?></span>
                    <em><?php echo ($vo["nav_name"]); ?></em>
                </a>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </div>
<!--主体内容-->
<section>
    <div class="main">
        <div class="main_t">
            <span>NEWS</span>
            <em>新闻动态</em>
            <b>|</b>
            <i><?php echo ($cat); ?></i>
        </div>

        <div class="read">
            <div class="read_t">
                <h3><?php echo ($info["title"]); ?></h3>
                <div class="date">
                    时间：<?php echo (date('Y-m-d',$info['published'])); ?>&nbsp;&nbsp;浏览次数：<?php echo ($info['click']); ?>
                </div>
            </div>
            <div class="read_b">
                <?php echo ($info['content']); ?>
            </div>
            <div class="read_s">
                <div class="bshare-custom icon-medium"><a title="分享到" href="http://www.bShare.cn/" id="bshare-shareto" class="bshare-more">分享到</a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到微信" class="bshare-weixin"></a><a title="分享到QQ空间" class="bshare-qzone"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis" style="display: none;"></a></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/button.js#style=-1&amp;uuid=7afd94bb-a7e8-4d65-9936-979b687f14eb&amp;pophcol=1&amp;lang=zh"></script><a class="bshareDiv" onclick="javascript:return false;"></a><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
            </div>

            <div class="read_np">
                <div>
                    <a href="<?php echo $prev == null ? 'javascript:':U('News/read',array('id'=>$prev[id]));?>" title="<?php echo ($prev["title"]); ?>">
                        <i></i>
                        <span>上一篇： <?php echo $prev[title] == null ?'没有了':$prev[title];?></span>
                    </a>
                </div>
                <div>
                    <a href="<?php echo $next == null ? 'javascript:':U('News/read',array('id'=>$next[id]));?>" title="{next.title}">
                        <i></i>
                        <span>下一篇： <?php echo $next[title] == null ?'没有了':$next[title];?></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
    <!--底部-->
    <div class="backtop">
        <i class="iconfont">&#xe603;</i>
    </div>
    <footer>
        <div class="footer_nav">
            <ul>
                <?php if(is_array($fnav)): $i = 0; $__LIST__ = $fnav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                    <a href="<?php if($vo["action"] == null): echo ($vo["link"]); else: echo U($vo['action']); endif; ?>"><?php echo ($vo["nav_name"]); ?></a><span>|</span>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
        <div class="footer_tel">
            全国服务热线：<?php echo ($site["tel"]); ?>
        </div>
    </footer>
    <script type="text/javascript" src="/yuanzhan/Public/Min/?f=/yuanzhan/Public/Wap/js/zepto.min.js|/yuanzhan/Public/Wap/js/touch.js|/yuanzhan/Public/Wap/js/index.js"></script>
</body>
</html>