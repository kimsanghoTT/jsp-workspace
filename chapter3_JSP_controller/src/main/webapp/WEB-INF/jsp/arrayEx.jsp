<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>배열 값 가져오기</title>
</head>
<body>
	<h1> [] 활용해서 배열값 작성, 작성 값 출력</h1>
	<%
	String [] fruits = {"사과", "바나나", "포도", "체리"};
	%>
	<pre>forEach문 활용해서 과일들 출력</pre>
	<ul>
	<%
	for(String f : fruits){%>
			<li><%= f %></li>	
	<% }%>
	</ul>
	
</body>
</html>