<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스위치문 활용하기</title>
</head>
<body>
	<h1>switch 활용 JSP</h1>
	<%
	int b = 3;
	switch(b) {
	case 1:%>
		<span><%= b %>는 1임</span>
	<% 	break;
	case 2:%>
		<span><%= b %>는 2임</span>
	<% 	break;
	case 3: %>
		<span><%= b %>는 3임</span>
	<% 	break;
	default:%>
		<span><%= b %>는 몰?루</span>
	<%	break;
	}%>
</body>
</html>