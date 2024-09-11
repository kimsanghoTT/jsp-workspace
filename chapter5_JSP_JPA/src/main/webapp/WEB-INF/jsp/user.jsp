<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 리스트</title>
</head>
<body>
	<h1>유저 조회하기</h1>
	<h2>유저 추가하기</h2>
	<form action="/addUser" method="post">
		이름 : <input type="text" name="username" /> 이메일 : <input type="text"
			name="useremail" /> 버튼 :
		<button type="submit">유저 저장하기</button>
	</form>
	<table border="1">
		<thead>
			<tr style="padding: 3px">
				<th>id</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}" >
			<tr style="padding: 3px">
				<td>${user.id }</td>
				<td>${user.username }</td>
				<td>${user.useremail }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>