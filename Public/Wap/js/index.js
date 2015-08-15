(function($){
	// 切换卡效果
	$.fn.tabs = function(opts){
		var defaults = {
			hd: '.hd li',
			bd: '.bd',
			on: 'on',
			trigger : 'click'
		}, options = $.extend(defaults, opts);
		return this.each(function(){
			var t = $(this);
			var s = 0;
			var hd = $(options.hd, t);
			var bd = $(options.bd, t).children();
			var on = $("." + options.on, t);
			bd.hide().eq(on.index()).show();
			hd.click( function(){
				s = $(this).index();
				hd.removeClass(options.on);
				$(this).addClass(options.on);
				bd.hide().eq(s).show();
			});
		});
	};

	// 返回顶部
	$.fn.bTop = function(){
		this.click(function() {
			$("body").scrollTop(0);
		});
	};

	// 手风琴效果
	$.fn.sfq = function(opts){
		var defaults = {
			hd: '.hd li',
			bd: '.bd',
			on: 'on',
			trigger : 'click'
		}, options = $.extend(defaults, opts);
		return this.each(function(){
			var t = $(this);
            $(options.hd,t).on('click', function(){
                $(this).next().show().siblings('.sidebar_b').hide();
                $(this).children('i').html('&#xe601;');
                $(this).siblings('.sidebar_t').children('i').html('&#xe600;')
            });
			$(options.hd,t).first().show().children('i').html('&#xe601;');
			$(options.bd,t).first().show();
		});
	};
})(Zepto);

$(function(){
	$('.nav_btn').on('tap', function(){
        $('.nav').toggleClass('nav_on');
	});


    var page = 1;
    var sPage = function(json){
        $.ajax({
            url : "catelist",
            type: "post",
            data: json,
            dataType: "json",
            success: function(data){
                if(data){
                    var str = '';
                    $.each(data, function(i, v){
                        str += '<li>'
                            + '<a href="../product_r/' + v.id + '">'
                            + '<div class="box">'
                            + '<img src="' + v.savapath + '" alt=""/>'
                            + '</div>'
                            + '<div class="tit">' + v.title + '</div>'
                            + '</a>'
                            + '</li>';
                    });
                    $('.plist ul').html(str);
                }else{
                    $('.plist ul').html('<div class="empty">暂无相关信息!</div>');
                }
            }
        })
    };
    $('.pshow_t .swiper-slide').on('click', function(){
        var sid = $(this).data('sid'),
            json = {
                sid: sid
            };
        $(this).addClass('on').siblings().removeClass('on');
        sPage(json);
    });

    $(window).scroll(function(){
        console.log($('body').scrollHeight);
    })
});