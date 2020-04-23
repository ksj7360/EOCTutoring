$(function(){

	/* menu */
    $(".inner_header ul li").hover(function(){
            $(this).children("a").animate(
            {"opacity": "0.7"},
            500);
       },
       function(){
             $(this).children("a").animate(
            {"opacity": "1"},
            500);
    })

	/* 플로팅메뉴 스크롤시 위치 */
    var floatPosition = parseInt($("#floatMenu").css('top'));
    $(window).scroll(function() {
            var scrollTop = $(window).scrollTop();
    		var newPosition = floatPosition + scrollTop + "px";

    		$("#floatMenu").stop().animate({
    			"top" : newPosition
    		}, 500);

            funcListAnimation();

    }).scroll();

    /* 애니메이션 클래스 추가 공통 스크립트 */
    function funcListAnimation(){
        var scrollTop = $(window).scrollTop();

        //애니메이션 실행되는 엘리먼트요소에 클래스 삽입 필요
        var list = $('.js-motion-item');

        list.each(function(e){
            var listPosition = $(this).offset().top + $(this).outerHeight(true) - $(window).height();
            if(scrollTop > listPosition){
                $(this).addClass('animation');
            }
			/*
             console.log("win :"+ scrollTop)
             console.log("li :"+ $(this).offset().top)
			 */
        });
    }
})

$(document).ready(function(){
    /* jquery ui tab 공통 실행 스크립트 */
    if($('.js-tab').length > 0){
        $( ".js-tab" ).tabs();
    }

	
	/* jquery ui dialog 공통 실행 스크립트 */
	$( ".popup_wrap" ).dialog({
		autoOpen: false,
		resizable: false,
		height: "auto",
		width: 500,
		modal: true,
	});
	$( ".naver_popup" ).click(function() {
	  $( ".naver_popup_wrap" ).dialog( "open" );
	  $( ".kakao_popup_wrap" ).dialog( "close" );
	});
	$( ".kakao_popup" ).click(function() {
	  $( ".kakao_popup_wrap" ).dialog( "open" );
	  $( ".naver_popup_wrap" ).dialog( "close" );
	});

});
