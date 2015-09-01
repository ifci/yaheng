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
            })
        }
    })
})(jQuery);
$(function(){

    var page = 1,total = $('#total').val();     //当前页和总页数
    var web = {
        val : {
            uname : $("#uname").val(),
            tel : $("#tel").val(),
            email : $("#email").val(),
            address : $("#address").val(),
            text : $("#text").val()
        },
        init : function(){
            $('.submit').on('click', web.enroll);
        },
        enroll : function(){
            var uname = $("#uname").val(),
                tel = $("#tel").val(),
                email = $("#email").val(),
                address = $("#address").val(),
                text = $("#text").val();
            $.ajax({
                url: "enroll",
                type: "post",
                data: {
                    uname: uname,
                    tel:  tel,
                    email: email,
                    address: address,
                    text: text
                },
                success: function (data) {
                    alert(data.info);
                    data.tip == 1 ? location.reload() : false;
                    /*switch(data.tip){
                        case 0:
                            username.parents('.txt').addClass('apply_err').siblings('.txt').removeClass('apply_err');
                            break;
                        case 1:
                            mobile.parents('.txt').addClass('apply_err').siblings('.txt').removeClass('apply_err');
                            break;
                        case 2:
                            $('.apply_c .txt').removeClass('apply_err');
                    }
                    $(".tips").html(data.info);*/
                }
            })

        }
    };
    web.init();

    $(document).coffee({
        click: {
            '#menu': function(){
                var $list = $('.menu_list');
                $list.hasClass('hide') ? $list.addClass('show').removeClass('hide') : $list.addClass('hide').removeClass('show');
            },
            '.menu_list .close': function(){
               $('.menu_list').addClass('hide').removeClass('show');
            },
            '.dz_btn': function(){
                $('.layer').show();
                $('body').css('overflow','hidden');
            },
            '.layer-close': function(){
                $('.layer').hide();
                $('body').css('overflow','auto');
            }
        },
        mouseover: {
            '.s_tel,.s_wx': function(){
                $('.sharebar_con').show();
                $('.sharebar_con span').eq($(this).index()).show();
            }
        },
        mouseout: {
            '.s_tel,.s_wx': function(){
                $('.sharebar_con,.sharebar_con span').hide();
            }
        }
    });



    $(window).load(function(){
        $(".app_mask").addClass("app_mask_out");
    });
    setTimeout(function(){
        $(".app_mask").remove();
        $(".swiper-slide:first").find('.fade').addClass('animated');
        $("#tips").show();
    },1000);

    total < 2 ? $('.add_more').remove() : false;
    $('.add_more').on('click', function(){
        $.ajax({
            url: "news/ajax",
            type: "get",
            data: {page: page},
            dataType: "json",
            success: function(data){
                page++;
                var str = '';
                $.each(data, function(i, val){
                    str += '<li>' +
                    '<div class="box"><a href="./news_r/' + val.id + '" title="' + val.title + '"><img src="' + val.src + '" alt="' + val.title + '"/></a></div>' +
                    '<div class="tit"><a href="./news_r/' + val.id + '" title="' + val.title + '">' + val.title + '</a></div>' +
                    '<div class="txt"><a href="./news_r/' + val.id + '" title="' + val.summary + '">' + val.summary + '</a></div>' +
                    '<div class="time">' + val.published + '</div>' +
                    '</li>';
                });
                $('.news_list ul').append(str);
                if(page == total){
                    $('.add_more').remove();
                }
            }
        })
    });


    /*商品季节切换*/




});