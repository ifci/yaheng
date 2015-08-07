<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>显示配置-系统设置-<?php echo ($site["SITE_INFO"]["name"]); ?></title>
    <?php $addCss=""; ?>
    <?php $addJs=""; ?>
    <link rel="stylesheet" type="text/css" href="/yaheng/Public/Min/?f=/yaheng/Public/Admin/Css/base.css|/yaheng/Public/Admin/Css/layout.css|/yaheng/Public/Js/asyncbox/skins/default.css<?php echo ($addCss); ?>" />
<script type="text/javascript" src="/yaheng/Public/Min/?f=/yaheng/Public/Js/jquery-1.9.0.min.js|/yaheng/Public/Js/functions.js|/yaheng/Public/Admin/Js/base.js|/yaheng/Public/Js/jquery.form.js|/yaheng/Public/Js/asyncbox/asyncbox.js<?php echo ($addJs); ?>"></script>
    <link rel="stylesheet" type="text/css" href="/yaheng/Public/kindeditor/themes/default/default.css" />
</head>
<body>
<div class="wrap"> <div id="Top">
    <div class="logo"><a target="_blank" href="<?php echo ($site["WEB_ROOT"]); ?>"><img src="/yaheng/Public/Admin/Img/logo.png" /></a></div>
    <div class="help"><a href="#">网站地图</a><span><a href="http://www.9koudai.net" target="_blank">关于</a></span></div>
    <div class="menu">
        <ul> <?php echo ($menu); ?> </ul>
    </div>
</div>
<div id="Tags">
    <div class="userPhoto"><img src="/yaheng/Public/Admin/Img/userPhoto.jpg" /> </div>
    <div class="navArea">
        <div class="userInfo"><div><a href="<?php echo U('Webinfo/index');?>" class="sysSet"><span>&nbsp;</span>系统设置</a> <a href="<?php echo U("Public/loginOut");?>" class="loginOut"><span>&nbsp;</span>退出系统</a></div>欢迎您，<?php echo ($my_info["email"]); ?></div>
        <div class="nav"><font id="today"><?php echo date("Y-m-d H:i:s"); ?></font>您的位置：<?php echo ($currentNav); ?></div>
    </div>
</div>
<div class="clear"></div>
    <div class="mainBody"> <div id="Left">
    <div id="control" class=""></div>
    <div class="subMenuList">
        <div class="itemTitle"><?php if(CONTROLLER_NAME == 'Index'): ?>常用操作<?php else: ?>子菜单<?php endif; ?> </div>
        <ul>
            <?php if(is_array($sub_menu)): foreach($sub_menu as $key=>$sv): ?><li><a href="<?php echo ($sv["url"]); ?>"><?php echo ($sv["title"]); ?></a></li><?php endforeach; endif; ?>
        </ul>
    </div>

</div>
        <div id="Right">
            <div class="contentArea">
                <div class="Item hr">
                    <div class="current">显示配置</div>
                </div>
                <form action="" method="post" enctype="multipart/form-data">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table1">
                        <tr>
                            <th width="120">文章每页显示条数：</th>
                            <td><input name="newslist" type="text" class="input" size="30" value="<?php echo ($site["LISTNUM"]["newslist"]); ?>" /></td>
                        </tr>
                        <tr>
                            <th width="120">产品每页显示条数：</th>
                            <td><input name="prolist" type="text" class="input" size="30" value="<?php echo ($site["LISTNUM"]["prolist"]); ?>" /></td>
                        </tr>
                        <tr>
                            <th width="120">主题颜色：</th>
                            <td><input id="color" class="input" name="tempcolor" size="20" value="<?php echo ($site["LISTNUM"]["tempcolor"]); ?>" /><input type="button" class="btn" id="colorpicker" value="打开取色器" /></td>
                        </tr>
                        <tr>
                            <th width="120">选择主题：</th>
                            <td><input  class="input" name="DEFAULT_THEME" size="20" value="<?php echo ($site["LISTNUM"]["DEFAULT_THEME"]); ?>" />默认模版：default</td>
                        </tr>
                    </table>
                </form>
                <div class="commonBtnArea" >
                    <button class="btn submit">提交</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/yaheng/Public/kindeditor/kindeditor.js"></script>
<script>
    KindEditor.ready(function(K) {
        var colorpicker;
        K('#colorpicker').bind('click', function(e) {
            e.stopPropagation();
            if (colorpicker) {
                colorpicker.remove();
                colorpicker = null;
                return;
            }
            var colorpickerPos = K('#colorpicker').pos();
            colorpicker = K.colorpicker({
                x : colorpickerPos.x,
                y : colorpickerPos.y + K('#colorpicker').height(),
                z : 19811214,
                selectedColor : 'default',
                noColor : '无颜色',
                click : function(color) {
                    K('#color').val(color);
                    colorpicker.remove();
                    colorpicker = null;
                }
            });
        });
        K(document).click(function() {
            if (colorpicker) {
                colorpicker.remove();
                colorpicker = null;
            }
        });
    });
</script>
<div class="clear"></div>
<script type="text/javascript">
    $(window).resize(autoSize);
    $(function(){
        autoSize();
        $(".loginOut").click(function(){
            var url=$(this).attr("href");
            popup.confirm('你确定要退出吗？','你确定要退出吗',function(action){
                if(action == 'ok'){ window.location=url; }
            });
            return false;
        });

        var time=self.setInterval(function(){$("#today").html(date("Y-m-d H:i:s"));},1000);


    });

</script>
<script type="text/javascript">
    $(".submit").click(function(){
        commonAjaxSubmit();
    });
</script>
</body>
</html>