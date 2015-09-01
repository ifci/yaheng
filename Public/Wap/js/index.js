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
        $('#menu-toggle').toggleClass('open');
	});



    var page = 1,total = $('#total').val();
    var sPage = function(json){
        $.ajax({
            url : "",
            type: "post",
            data: json,
            dataType: "json",
            success: function(data){
                console.log(data);
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
                    $('.plist ul').append(str);
                    if(page == total){
                        $('.add_more').remove();
                    }
                    page++;
                }

                if(page + 1 == total){
                    $('.add_more').remove();
                }else{
                    $('.add_more').removeClass('loading').html('加载更多');
                }
            }
        })
    };
    $('.plist .add_more').on('click', function(){
        var json = {
                page: page
            };
        sPage(json);
    });




    var news = function(){
        $('.add_more').addClass('loading').empty();
        $.ajax({
            url : "news/ajax",
            type: "get",
            data: {
                page: page
            },
            dataType: "json",
            success: function(data){
                //$('.add_more').unbind('click');
                page++;
                //console.log(page + '+' + total);
                var str = '';
                $.each(data, function(i, val){
                    str += '<li>' +
                    '<a href="./news_r/' + val.id + '">' +
                    '<div class="box"><img src="' + val.src + '" alt="' + val.title + '"/></div>' +
                    '<div class="tit">' + val.title + '</div>' +
                    '<div class="txt">' + val.summary + '</div>' +
                    '<div class="time">' + val.published + '</div>' +
                    '</a>' +
                    '</li>';
                });
                $('.news ul').append(str);
                if(page == total){
                    $('.add_more').remove();
                }else{
                    $('.add_more').removeClass('loading').html('加载更多');
                }
                return false;
            },
            error: function(){
                $('.add_more').removeClass('loading').html('加载更多');
            }
        });
    };


    $('.news .add_more').bind('click', function(){
        news();
        //$('.add_more').bind('click', news);
    });



    function checksafestr(str,isspace){             //设置非法字符，防SQL、JS注入攻击
        var result=false;
        var arr=new Array(";",",","!","<",">","@","#","?");
        if(isspace && str.indexOf(" ")!=-1)
            result=true;
        for(var i=0;i<arr.length;i++){
            if(str.indexOf(arr[i])!=-1){
                result=true;
                break;
            }
        }
        return result;
    }



    /*提交留言*/
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
            if(checksafestr(uname,true) || checksafestr(tel,true) || checksafestr(email,true) || checksafestr(address,true) || checksafestr(text,true)){
                alert("字符非法!");
            }else{
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
                    }
                })
            }

        }
    };
    web.init();
});