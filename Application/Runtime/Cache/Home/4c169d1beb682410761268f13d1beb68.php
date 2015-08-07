<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
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
    <link type="text/css" href="/yaheng/Public/Min/?f=/yaheng/Public/Home/css/base.css|/yaheng/Public/Home/css/swiper.min.css|/yaheng/Public/Home/css/index.css" rel="stylesheet" />
    <script type="text/javascript" src="/yaheng/Public/Min/?f=/yaheng/Public/Home/js/jquery-1.11.3.min.js|/yaheng/Public/Home/js/swiper.min.js|/yaheng/Public/Home/js/index.js"></script>
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

<div class="map">

    <style type="text/css">
        .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
        .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

    <!--百度地图容器-->
    <div style="width:600px;height:400px;border:#ccc solid 1px;" id="dituContent"></div>
    <script type="text/javascript">
        //创建和初始化地图函数：
        function initMap(){
            createMap();//创建地图
            setMapEvent();//设置地图事件
            addMapControl();//向地图添加控件
            addMarker();//向地图中添加marker
        }

        //创建地图函数：
        function createMap(){
            var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
            var point = new BMap.Point(121.323285,31.137374);//定义一个中心点坐标
            map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
            window.map = map;//将map变量存储在全局
        }

        //地图事件设置函数：
        function setMapEvent(){
            map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
            map.enableScrollWheelZoom();//启用地图滚轮放大缩小
            map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
            map.enableKeyboard();//启用键盘上下左右键移动地图
        }

        //地图控件添加函数：
        function addMapControl(){
            //向地图中添加缩放控件
            var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
            map.addControl(ctrl_nav);
            //向地图中添加缩略图控件
            var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:0});
            map.addControl(ctrl_ove);
            //向地图中添加比例尺控件
            var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
            map.addControl(ctrl_sca);
        }

        //标注点数组
        var markerArr = [{title:"上海亚恒服饰",content:"上海市松江区伴亭路888弄",point:"121.323231|31.137405",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
        ];
        //创建marker
        function addMarker(){
            for(var i=0;i<markerArr.length;i++){
                var json = markerArr[i];
                var p0 = json.point.split("|")[0];
                var p1 = json.point.split("|")[1];
                var point = new BMap.Point(p0,p1);
                var iconImg = createIcon(json.icon);
                var marker = new BMap.Marker(point,{icon:iconImg});
                var iw = createInfoWindow(i);
                var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
                marker.setLabel(label);
                map.addOverlay(marker);
                label.setStyle({
                    borderColor:"#808080",
                    color:"#333",
                    cursor:"pointer"
                });

                (function(){
                    var index = i;
                    var _iw = createInfoWindow(i);
                    var _marker = marker;
                    _marker.addEventListener("click",function(){
                        this.openInfoWindow(_iw);
                    });
                    _iw.addEventListener("open",function(){
                        _marker.getLabel().hide();
                    })
                    _iw.addEventListener("close",function(){
                        _marker.getLabel().show();
                    })
                    label.addEventListener("click",function(){
                        _marker.openInfoWindow(_iw);
                    })
                    if(!!json.isOpen){
                        label.hide();
                        _marker.openInfoWindow(_iw);
                    }
                })()
            }
        }
        //创建InfoWindow
        function createInfoWindow(i){
            var json = markerArr[i];
            var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
            return iw;
        }
        //创建一个Icon
        function createIcon(json){
            var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
            return icon;
        }

        initMap();//创建和初始化地图
    </script>
</div>

<!-- Swiper -->
<div class="swiper-container">

    <div id="tips" class="tips">
        <div class="t_mouse t_unit">
            <div class="t_mouse_0"></div>
            <div class="t_mouse_1"></div>
        </div>
        <div class="t_key t_unit">
            <div class="t_key_0 "></div>
            <div class="t_key_1"></div>
        </div>
        <div class="t_tip"></div>
    </div>
    <div class="arrow-wrapper">
        <a class="arrow-left arrow-stop" href="javascript:"></a>
        <a class="arrow-right" href="javascript:"></a>
    </div>
    <div class="swiper-wrapper">
        <div class="swiper-slide black" style="background-image: url(/yaheng/Public/Home/images/Slide1.jpg)">
            <div class="center">
                <div class="slide-1 fade"><img src="/yaheng/Public/Home/images/pic_01.png" alt="Bety Magi" /></div>
                <div class="slide-2 fade">
                    <img src="/yaheng/Public/Home/images/pic_02.png" alt="摆脱束缚，追求自由。"/>
                    <div class="slide-3">时尚与自由的完美融合，是Bety Magi蓓特蔓散发魅力的源泉。</div>
                </div>
                <div class="darkButton fade"><a href="<?php echo U('/bety');?>" title="了解蓓特蔓"><span>了解蓓特蔓</span><i></i></a></div>
            </div>
        </div>
        <div class="swiper-slide" style="background-image: url(/yaheng/Public/Home/images/Slide2.jpg)">
            <div class="center">
                <div class="slide-4 fade"><img src="/yaheng/Public/Home/images/pic_03.png" alt="2015蓓特蔓秋冬产品"/></div>
                <div class="slide-5 fade"><img src="/yaheng/Public/Home/images/pic_04.png" alt="皮草系列"/></div>
                <div class="slide-6 fade">以羊毛皮，（獭）兔毛皮，貉子，狐狸，水貂为主</div>
                <div class="darkButton darkButton-white fade"><a href="<?php echo U('/product',array('cid'=>62));?>" title="购买皮草"><span>购买皮草</span><i></i></a></div>
            </div>
        </div>

        <div class="swiper-slide" style="background-image: url(/yaheng/Public/Home/images/Slide3.jpg)">
            <div class="center">
                <div class="slide-4 fade"><img src="/yaheng/Public/Home/images/pic_03.png" alt="2015蓓特蔓秋冬产品"/></div>
                <div class="slide-5 fade"><img src="/yaheng/Public/Home/images/pic_05.png" alt="皮衣系列"/></div>
                <div class="slide-6 fade">羊皮光面皮为主，帅气的朋克风机车服不再是摇滚男孩女孩的专利</div>
                <div class="darkButton darkButton-white fade"><a href="<?php echo U('/product',array('cid'=>61));?>" title="购买皮衣"><span>购买皮衣</span><i></i></a></div>
            </div>
        </div>
        <div class="swiper-slide" style="background-image: url(/yaheng/Public/Home/images/Slide4.jpg)">
            <div class="center">
                <div class="slide-7">
                    <div class="slide-8 fade">专注皮草、皮衣制成品15年、创新设计、时尚专家助阵</div>
                    <div class="slide-9 fade"><img src="/yaheng/Public/Home/images/pic_06.png" alt="Bety Magi蓓特蔓"/><div class="slide-10"></div></div>
                    <div class="slide-11 fade">
                        <ul>
                            <li>结合西方高端服装流行趋势，符合亚洲人身型定制高端服装</li>
                            <li>拥有资深设计师打造最前沿的经典时尚</li>
                            <li>每款服装都经历严格14道工序</li>
                            <li>欧美奢侈品网热卖品牌</li>
                        </ul>
                    </div>
                    <!--<div class="darkButton darkButton-white fade"><a href="#" title="了解蓓特蔓优势"><span>了解蓓特蔓优势</span><i></i></a></div>-->
                </div>
            </div>
        </div>
        <div class="swiper-slide" style="background-image: url(/yaheng/Public/Home/images/Slide5.jpg)">
            <div class="center">
                <div class="slide-7">
                    <div class="slide-12 fade"><img src="/yaheng/Public/Home/images/pic_07.png" alt="资深设计师"/></div>
                    <div class="slide-13 fade"><img src="/yaheng/Public/Home/images/pic_08.png" alt="何娅妮"/></div>
                    <div class="slide-14 fade">从事皮草皮衣外贸10年，有丰富的皮草皮衣经验。<br/>
                                          洞悉国际时装流行趋势，并把流行元素融入服装系列中。<br/>
                                          崇尚简单时尚，敢于突破自我，设计出的每款服装都闪烁着自由的光芒。
                    </div>
                    <!--<div class="darkButton darkButton-white fade"><a href="#" title="了解设计团队"><span>了解设计团队</span><i></i></a></div>-->
                </div>
            </div>
        </div>
        <div class="swiper-slide" style="background-image: url(/yaheng/Public/Home/images/Slide6.jpg)">
            <div class="center">
                <div class="slide-7">
                    <div class="slide-15 fade"><img src="/yaheng/Public/Home/images/pic_09.png" alt="精湛工艺"/></div>
                    <div class="slide-14 fade">从选皮到设计，从裁剪到缝制，<br/>
                                          每一道工序都凝聚着BetyMagi的心意。<br/>
                                          流畅的线条，灵动的触感，<br/>
                                          国际高端标准彰显优雅与魅力。
                    </div>
                    <!--<div class="darkButton darkButton-white slide-16 fade"><a href="#" title="了解设计团队"><span>了解设计团队</span><i></i></a></div>-->
                </div>
            </div>
        </div>
        <div class="swiper-slide" style="background-image: url(/yaheng/Public/Home/images/Slide7.jpg)">
            <div class="center">
                <div class="slide-7">
                    <div class="slide-15 fade"><img src="/yaheng/Public/Home/images/pic_10.png" alt="高级定制"/></div>
                    <div class="slide-14 fade">打造独家潮流风格</div>
                    <div class="darkButton darkButton-white slide-17 fade"><a href="<?php echo U('/haute');?>" title="了解定制流程&案例"><span>了解定制流程&案例</span><i></i></a></div>
                </div>
            </div>
        </div>
        <div class="swiper-slide" style="background-image: url(/yaheng/Public/Home/images/Slide8.jpg)">
            <div class="center">
                <div class="slide-18">
                    <img src="/yaheng/Public/Home/images/pic_11.png" alt="Bety Magi"/>
                </div>
            </div>
        </div>
        <div class="swiper-slide" style="background-image: url(/yaheng/Public/Home/images/Slide9.jpg)">
            <div class="center">
                <div class="news_list">
                    <ul class="clearfix">
                        <?php if(is_array($news_list)): $i = 0; $__LIST__ = $news_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                            <div class="box">
                                <a href="<?php echo U('/news_r/'.$vo['id']);?>" title="">
                                    <div class="day">20</div>
                                    <div class="date">2015.05</div>
                                    <div class="tit">Bety Magi蓓特蔓皮草品牌创始人谈不一样的全网营销</div>
                                    <div class="details">Details+</div>
                                </a>
                            </div>
                        </li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                    <!--<div class="news_list_left"><</div>
                    <div class="news_list_right active">></div>-->
                </div>
            </div>
        </div>
        <div class="swiper-slide" style="background-image: url(/yaheng/Public/Home/images/Slide10.jpg)">
            <div class="center pr">
                <div class="slide-19"></div>
                <div class="slide-20">
                    <div class="contact">
                        <div class="contact_l">联系方式 <em></em><i></i></div>
                        <div class="contact_c">
                            <div class="contact_d clearfix"><i></i><span>城市：中国 - 上海</span></div>
                            <div class="contact_d clearfix"><i></i><span>地址：<?php echo ($site["address"]); ?></span></div>
                            <div class="contact_d clearfix"><i></i><span>邮箱：<?php echo ($site["service"]); ?></span></div>
                            <div class="contact_d clearfix"><i></i><span>电话：<?php echo ($site["tel"]); ?></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"><div class="swiper-pagination-wrapper"></div></div>
    <div class="copy">
        <p>© Copyright betymagifur.cn All Rights Reserved&nbsp;&nbsp;<?php echo ($site["tongji"]); ?>&nbsp;&nbsp;&nbsp;&nbsp;沪ICP备15018568号-1&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="http://www.shjkd.cn/" title="上海九口袋" target="_blank">上海九口袋</a></p>
    </div>
</div>




</body>
</html>