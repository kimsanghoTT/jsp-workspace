<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사메시지 페이지</title>
</head>
<body>
	<h1>index.jsp에서 받은 데이터 출력</h1>
	
	<!-- request로 전달된 데이터 출력 -->
	<!--  -->
	<p>받은 메시지 : ${msg }</p>
</body>
</html>