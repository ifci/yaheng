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

    $(document).coffee({
        click: {
            '#menu': function(){
                var $list = $('.menu_list');
                $list.hasClass('hide') ? $list.addClass('show').removeClass('hide') : $list.addClass('hide').removeClass('show');
            },
            '.menu_list .close': function(){
               $('.menu_list').addClass('hide').removeClass('show');
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

    var page = 1,total = $('#total').val();
    total < 4 ? $('.add_more').remove() : false;
    $('.add_more').on('click', function(){

    });

    function ajaxPage(url){
        $.ajax({
            url: "news/ajax",
            type: "get",
            data: {page: page},
            dataType: "json",
            success: function(data){
                page++;
                console.log(page + '+' + total);
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
    }


});