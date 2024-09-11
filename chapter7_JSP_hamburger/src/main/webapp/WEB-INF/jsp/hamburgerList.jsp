<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>햄부거 목록</title>
</head>
<body>
	<h1>부거 등록</h1>
	<form action="/addBurger" method="POST">
		부거 이름 : <input type="text" name="hname"/>
		가격 : <input type="number" name="hprice"/>
		설명 : <input type="text" name="hdescription"/>
		<button>등록하기</button>
	</form>
	
	<h1>부거 목록</h1>
	<table border="1">
		<tr>
			<th>부거 번호</th>
			<th>부거 이름</th>
			<th>부거 설명</th>
			<th>부거 가격</th>
		</tr>
		<c:forEach var="burger" items="${burgers }">
		<tr>
			<td>${burger.id }</td>
			<td>${burger.hname }</td>
			<td>${burger.hdescription }</td>
			<td>${burger.hprice }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>