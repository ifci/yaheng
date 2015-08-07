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

        if(!($('.nav_on').length < 1)){
            $('.main').on('tap', function(){
                $('.nav_list').addClass('nav_on');
            });
        }
        $('.nav_list').toggleClass('nav_on');
	});
    /**/


	$('.backtop').bTop();

    $('.sidebar').sfq({
        hd: '.sidebar_t',
        bd: '.sidebar_b'
    });
});