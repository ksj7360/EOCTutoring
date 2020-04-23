<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Welcome to our family!</title>
</head>
<body>
	<center>

		<h3>Welcome!</h3>
		<h3>
			<p> Sign up process is completed. </p>
			<p> Please confirm your information below.</p>
		</h3>
	<hr>
		<br>
		<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
	String gender = request.getParameter("sex");
	String[] hobbies = request.getParameterValues("hobby");
	String birthyear = request.getParameter("year");
	String profile = request.getParameter("profile");
	String picture = request.getParameter("file");
		
	out.println("ID:"+id+"<br>");
	out.println("PW:"+pw+"<br>");
	out.println("Gender:"+gender+"<br>");
	int cnt = hobbies.length;
	
	out.print("Hobby:<br>");
	for(int i=0;i<hobbies.length;i++){
		out.println(hobbies[i]+"<br>");
	}
	out.println("year:"+birthyear+"<br>");
	out.println("profile:"+profile+"<br>");
	out.println("file:"+picture+"<br>");	
%>

	</center>
</body>
</html>