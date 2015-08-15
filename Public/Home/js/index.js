/**
 * Created by Administrator on 2015/5/6.
 */
(function($){
    $.fn.extend({
        // coffee方法,事件管理
        coffee: function (obj) {
            for (var eName in obj)
                for (var selector in obj[eName])
                    $(this).on(eName, selector, obj[eName][selector]);
        },
        // 返回顶部
        bTop: function () {
            // autohide 自动隐藏
            // offset 距离顶部多少距离时自动隐藏按钮
            // speed 滚动持续时间
            // position 如果设置为 false，则需要手动在 css 中设置“按钮”的位置
            // right 右侧距离
            // bottom 底部距离
            this.click(function () {
                $("html,body").stop(true).animate({scrollTop: 0}, 1000);
            });
        },
        // 弹出层插件
        layer: function(opts){
            var defaults = {
                v: '0.0.1',
                trigger : 'click',
                type: 'msg',
                shade: [0.3, '#000'],  //弹出遮罩层，默认#000，透明度0.3，关闭为false
                size: [630, 360],   //弹出层尺寸
                scrollbar: true,
                page: ''
            }, options = $.extend(defaults, opts);
            return this.each(function(){
                var Func,lay,page = $(this).data('url');

                if(options.type === 'msg'){
                    Func = function(module, callback){
                        if($('#layer').length < 1){
                            /*$('<div class="layer" id="layer"><div class="layer-box"><div class="layer-box-con"><embed src="' + page + '" quality="high" width="630" height="360" align="middle" allowScriptAccess="always" allowFullScreen="true" mode="transparent" type="application/x-shockwave-flash"></embed></div><div class="layer-close"></div></div></div></div>').appendTo('body');*/
                            $('body').append('<div class="layer" id="layer">');
                            var law = options.size[0]/2;
                            var lah = options.size[1]/2;
                            $("#layer").html('<div class="layer-box"><div class="layer-box-con"><embed src="' + page + '" quality="high" wmode="Transparent" width="630" height="360" align="middle" allowScriptAccess="always" allowFullScreen="true" mode="transparent" type="application/x-shockwave-flash"></embed></div><div class="layer-close"></div></div>');
                            $("#layer .layer-box").css({'margin-left':-law,'margin-top':-lah,'width': options.size[0],'height': options.size[1]});
                        }
                    }
                }else if(options.type === 'confirm'){
                    Func = function(module, callback){
                        $('<div>',{
                            html: '<div class="alertTip"><p class="tips">提示：' + module + '</p><a class="sure" href="javascript:;">确定</a><a class="cancel" href="javascript:;">取消</a></div>',
                            id: 'layer'
                        }).appendTo('body');
                        $('#layer,.alertTip').show();
                        $('.sure').click(callback);
                    }
                }else if(options.type === 'page'){
                    Func = function(module, callback) {

                    }
                }

                //弹出层效果
                var shade = options.shade ? $('<div class="layer-shade" id="layer-shade" style="opacity:'+ (options.shade[0]||options.shade) +'; filter:alpha(opacity='+ (options.shade[0]*100||options.shade*100) +');background-color:'+ (options.shade[1]||'#000') +';"></div>') : '';


                //点击关闭事件
                /*$('#layer,.cancel,.sure').on('click',function(){
                    $(this).remove();
                });*/

                /*$('body').on('click', '.layer-shade', function(){
                    $('#layer').remove();
                    $('body').css('overflow', 'auto');
                });*/

                $('body').coffee({
                    click: {
                        '.layer-shade,.layer-close': function(){
                            $('#layer').remove();
                            $('body').css('overflow', 'auto');
                        }
                    }
                });


                $(this).on(options.trigger, function(){
                    Func(options.page);
                    shade.prependTo('#layer');
                    //浏览器滚动条
                    options.scrollbar ? $('body').css('overflow', 'hidden') : '';
                })
            });
        },
        // 动画插件
        anim: function(opts){
            var defaults = {
                v: '0.0.1',
                delay: 200,   //延迟触发的距离
                ease: 'fadeInUp'
            }, options = $.extend(defaults, opts);
            return this.each(function(i) {
                var ease = $(this).attr('anim-ease') || options.ease,t = $(this);
                var bottom_of_object, bottom_of_window;   //元素距离顶部的值，元素进入视野的高度
                bottom_of_object = parseInt($(this).offset().top) + options.delay;
                bottom_of_window = $(window).scrollTop() + $(window).height();
                //console.log(bottom_of_object + "," + bottom_of_window);
                if (bottom_of_window > bottom_of_object) {
                    return $(this).addClass("active animated " + ease);
                }
            })
        }
    })
})(jQuery);
$(function(){
    var __hash__ = window.location.hash.substr(1);
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination-wrapper',
        paginationClickable: true,
        keyboardControl: true,
        mousewheelControl : true,
        parallax: true,
        initialSlide: __hash__
    });

    $(".swiper-slide").eq(__hash__).find('.fade').each(function(i){
        var T = $(this);
        setTimeout(function(){
            T.addClass('animated');
        }, i * 800);
    });

    swiper.addCallback('SlideChangeStart', function(swiper){
        var $left = $('.arrow-left'),$right = $('.arrow-right');
        swiper.activeIndex === 0 ? $left.addClass('arrow-stop') : $left.removeClass('arrow-stop');
        swiper.activeIndex === swiper.paginationButtons.length - 1 ? $right.addClass('arrow-stop') : $right.removeClass('arrow-stop');
        window.location.hash = "#" + swiper.activeIndex;
        swiper.activeIndex >= 2 ? $("#tips").animate({'bottom': '-60px'}, 800) : false;
        $(".swiper-slide").eq(swiper.activeIndex).find('.fade').each(function(i){
            var T = $(this);
            setTimeout(function(){
                T.addClass('animated');
            }, i * 600);
        })
    });
    $(document).coffee({
        click: {
            '.arrow-left': function(e){
               e.preventDefault();
               swiper.swipePrev()
            },
            '.arrow-right': function(e){
               e.preventDefault();
               swiper.swipeNext()
            },
            '#menu': function(){
                var $list = $('.menu_list');
                $list.hasClass('hide') ? $list.addClass('show').removeClass('hide') : $list.addClass('hide').removeClass('show');
            },
            '.menu_list .close': function(){
               /*$(".menu_list").animate({'width':0},400,function(){
                   $(".menu_list").hide();
               });*/
               $('.menu_list').addClass('hide').removeClass('show');
            },
            '.slide-19': function(){
               //$(this).toggleClass('map');
               $('.map').show().before("<div class='layer-bg'>");
            },
            '.layer-bg': function(){
               $('.map').hide();
               $('.layer-bg').remove();
            }
        }
    });



    $(".news_list > div").hover(function(){
        $(this).addClass('active').siblings('div').removeClass('active');
    });

    $(window).load(function(){
        $(".app_mask").addClass("app_mask_out");
    });
    setTimeout(function(){
        $(".app_mask").remove();
        $(".swiper-slide:first").find('.fade').addClass('animated');
        $("#tips").show();
    },1000);

    $('.map').hide();
    var cur = 0;
    setInterval(function(){
        $(".t_mouse").children().eq(cur).fadeIn().siblings().fadeOut();
        $(".t_key").children().eq(cur).fadeIn().siblings().fadeOut();
        cur++;
        cur > 1 ? cur = 0 : false;
    }, 1500);




});