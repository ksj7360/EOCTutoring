$(function() { 
  
	$(window).scroll(function() { 
		// ���� ��ũ�� ��ġ�� �����´�.
		var scrollTop = $(window).scrollTop();
		 
		if(scrollTop > 200 && scrollTop <= 1590){
			$('.sec02_right_div').animate({ 'marginLeft': '0%' }, 1000);
		}else if(scrollTop > 1590 ){
			$('.review:eq(0)').animate({ 'marginLeft': '0%' }, 1000); 
			$('.review:eq(1)').animate({ 'marginLeft': '0%' }, 1000); 
			$('.review:eq(2)').animate({ 'marginLeft': '0%' }, 1000);
		}else{
			 
		} 
 
	}).scroll();
 
});