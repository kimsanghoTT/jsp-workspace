<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>태그활용 실습</title>
</head>
<body>
	<%
	for(int i = 1; i < 6; i++){%>
		<p>i 값 : <%= i %></p>
	<%}%>
	
</body>
</html>