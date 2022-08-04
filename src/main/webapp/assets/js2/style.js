/*
-------------------------------------------------
-------------------------------------------------
Content Java Script Jquery
Version : 1.0
Author : JYJ
First update : 2022. 08. 04.
-------------------------------------------------
-------------------------------------------------
*/


// gnb 드롭다운
$(document).ready(function(){
    $('.gnb').children('li').children('a').mouseover(function(){
        $('.gnb').find('.depth2').slideUp(300);
        $(this).next('.depth2').slideDown(300);
    });
    $('.header_wrapper').mouseleave(function(){
        $('.gnb').find('.depth2').slideUp(300);
    });
});


// portfolio 셀렉트 드롭다운
$(document).ready(function(){
    $('.portfolio').children('a').click(function(){
        $('.portfolio').removeClass('active');
        $('.portfolio').find('.down').slideUp(300);
        if(!$(this).next().is(':visible')) {
            $(this).parents('.portfolio').addClass('active');
            $(this).next().slideDown(300);
        }
    });
});


// login 셀렉트 드롭다운
$(document).ready(function(){
    $('.loginafter').children('li').children('a').click(function(){
        $('.loginafter').removeClass('active');
        $('.loginafter').find('.down').slideUp(300);
        if(!$(this).next().is(':visible')) {
            $(this).parents('.loginafter').addClass('active');
            $(this).next().slideDown(300);
        }
    });
});

// 탑버튼
$(document).ready(function(){
    let Top = document.getElementById('topbtn');

    window.addEventListener('scroll', function () {
        if(this.scrollY > 200){
            Top.classList.add('on');
        }else {
            Top.classList.remove('on');
        }
    });

    Top.addEventListener('click', function(e) {
        e.preventDefault();
        window.scrollTo({ top:0, behavior: 'smooth'});
    });
});

// 경찰 고정배너
$(document).ready(function() {

	var scrollPosition = parseInt($("#scrollbanner").css('top'));

	$(window).scroll(function() {
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + scrollPosition + "px";

		$("#scrollbanner").stop().animate({
			"top" : newPosition
		}, 500);

	}).scroll();

});

