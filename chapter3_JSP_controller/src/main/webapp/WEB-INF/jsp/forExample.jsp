<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>For문 예제</title>
</head>
<body>
	<h1>for문 돌리기</h1>
	<%
	for(int i = 1; i < 6; i++){%>
		<strong>i 값은 : <%= i %></strong>
		<br/>
	<%}%>
</body>
</html>