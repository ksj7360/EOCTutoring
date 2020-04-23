
<html>
<head>
<meta charset="UTF-8">
<meta name="author" content="권순정">
<meta name="keywords" content="HTML, JavaScript, CSS3, jsp">
<meta name="description" content="Tutoring Webpage">
<meta property="og:type" content="website">
<meta property="og:url" content="http://EOCtutoring.org">
<meta property="og:image" content="EOCTutoringLab.jpg">
<meta property="og:site_name" content="EOC Tutoring Lab">
<meta property="og:title" content="EOC Tutoring Lab">
<meta name="robots" content="index,follow">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
     <title>Log In Confirmation</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel="stylesheet" href="slick.css">
<link type="text/css" href="HomepageStyle.css" rel="stylesheet">
<style>
.gggg{
	font-family: Open Sans;
	width : 60px;
	height : 30px;
	background-color : #1C8ECD;
	border-radius : 10px;
	color:white;
	border: none;
}
</style>
<script type="text/javascript" src="jquery_183.js"></script>
<script src="common_script.js"></script>
<script type="text/javascript" src="jquery.cookie.js"></script>
<script type="text/javascript" src="common_script1586.js"></script>
<script src="lib_slick.min.js"></script>
<script src="jquery-ui.min.js"></script>
<script type="text/javascript" src="jquery.bxslider.min.js"></script>
<script type="text/javascript" src="module_main.js"></script>

<script type="text/javascript">
	$(function() {

	$( ".dropbtn" )
	  .mouseout(function() {
			 $("#header").css("border-bottom","1px solid #ddd");
			 $(".gnb").css('display','none');
	  })
	  .mouseover(function() {
			 $("#header").css("border-bottom","0px");
			 $(".gnb").css('display','block');
	  });

});

$(document).ready(function(){
	/* 메인페이지 비주얼 텍스트 슬라이드 */
    if($('.js-main-visual').length > 0){
        $('.js-main-visual').slick({
            autoplay:true,
            autoplaySpeed:3000,
            arrows:false
        });
    }

    /* 메인페이지 수업정보 슬라이드 */
    if($('.js-class-info').length > 0){
        $('.js-class-info').slick({
            autoplay:true,
            autoplaySpeed:2000,
            arrows:false,
            centerMode: true,
            slidesToShow: 3,
            variableWidth: true
        });
    }
});
</script>
</head>

<body data-gr-c-s-loaded="true">
	<div id="wrap">
		<div id="header" style="border-bottom: 1px solid rgb(221, 221, 221);">
			<div class="inner_header">
				<h1 class="logo">
					<a href="mainpage.html"><img src="EOCTutoringLab.jpg" alt="EOC Tutoring Lab" id="learning_lab"></a>
				</h1>
				<ul class="menu_list dropbtn">
					<li class="dropbtn"><a href="home.html" style="opacity: 1;">HOME</a></li>
					<li class="dropbtn"><a href="admin.html" style="opacity: 1;">ADMIN</a></li>
					<li class="dropbtn"><a href="subjects.html" style="opacity: 1;">SUBJECTS</a></li>
					<li class="dropbtn"><a href="students.html"	style="opacity: 1;">STUDENTS</a></li>
					<li class="dropbtn"><a href="contact.html" style="opacity: 1;">CONTACT</a></li>
					<li class="dropbtn"><button class="gggg" type="button" value="Sign Up" onclick="alert('We are moving to a signing-up page.'); location.href='signup.html'">Sign Up</button>
					
				</ul>
			</div>
			<!--// inner_header -->
		</div>
		<!--// header -->
		<div class="gnb dropbtn" style="display: none;">
			<div class="gnb_menus">
				<div class="menus">
					<ul>
						<li><a href="#">&nbsp;&nbsp;</a></li>
					</ul>
				</div>
				<div class="menus">
					<ul>
						<li><a href="comment.html">Leave a Comment</a></li>
						<li><a href="visit.html">Schedule a Visit</a></li>
					</ul>
				</div>
				<div class="menus">
					<ul>
						<li><a href="julia.html">Julia Harris</a></li>
						<li><a href="damon.html">Demon Gilstrap</a></li>
						<li><a href="naomi.html">Naomi</a></li>
						<li><a href="fadi.html">Fadi</a></li>
						<li><a href="shiori.html">Shiori</a></li>

					</ul>
				</div>
				<div class="menus">
					<ul>
						<li><a href="math.html">Math</a></li>
						<li><a href="languagearts.html">Language Arts</a></li>
						<li><a href="socialstudies.html">Social Studies</a></li>
						<li><a href="science.html">Science</a></li>
						<li><a href="ESL.html">ESL</a></li>
					</ul>
				</div>
				<div class="menus">
					<ul>
						<li><a href="faculty.html">Faculty</a></li>
						<li><a href="tutors.html">Tutors</a></li>
						<li><a href="rules.html">Rules & Regulations</a></li>
						<li><a href="health.html">Health Services</a></li>
					</ul>
				</div>

				<div class="menus">
					<ul>
						<li><a href="aboutus.html">About Us</a></li>
						<li><a href="letter.html">Letter from Director</a></li>
						<li><a href="accomplishment.html">Accomplishment</a></li>
						<li><a href="location.html">Location</a></li>
						<li><a href="otherEOCs.html">Other EOCs</a></li>
					</ul>
				</div>
			</div>
		</div>
		

	<center>
	
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	





<!-- JSP 문법 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
String strName=request.getParameter("name");
String strPwd=request.getParameter("pwd");


if (strName.equals("SoonJeong") && strPwd.equals("1234"))  {
	out.println(strName + "님 안녕하세요!<br/>");
}
else  {
	out.println("ID 또는 PW가 일치하지 않습니다.");
}


%>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	<br>
<br>
<br>
<br>
	
	<div id="footer">
		<div class="footer_util">
			<div class="inner_footer">
				<ul class="util_list">
					<li><a href="home.html">HOME</a></li>
					<li><a href="admin.html">ADMIN</a></li>
					<li><a href="subjects.html">SUBJECTS</a></li>
					<li><a href="students.html">STUDENTS</a></li>
					<li><a href="contact.html">CONTACT</a></li>
					<li><button class="gggg" type="button" value="log-in" onclick="alert('We are moving to a log-in page.'); location.href='login.html'">Login</button></a></li>
				</ul>
			</div>
		</div>

		<div class="footer_info">
			<ul>
				<li class="bottom_space"><span class="location">Syracuse EOC Tutoring Lab</span> Director: Colson Klein</li> 
				<li><span class="location">100 New Street Syracuse, NY
						13202</span> (315)472-0130</li>
			</ul>
			<p class="copyright">Copyright ⓒ Syracuse EOC Tutoring Lab</p>
		</div>
	</div>

</div>
<div tabindex="-1" role="dialog"
	class="ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable"
	aria-describedby="ui-id-7" aria-labelledby="ui-id-8"
	style="position: relative; height: auto; width: 500px; top: -5683px; left: 424.5px; display: none;">
	<div
		class="ui-dialog-titlebar ui-corner-all ui-widget-header ui-helper-clearfix ui-draggable-handle">
		<span id="ui-id-8" class="ui-dialog-title">&nbsp;</span>
		<button type="button"
			class="ui-button ui-corner-all ui-widget ui-button-icon-only ui-dialog-titlebar-close"
			title="X">
			<span class="ui-button-icon ui-icon ui-icon-closethick"></span><span
				class="ui-button-icon-space"> </span>X
		</button>
	</div>

</div>
</body>
</html>