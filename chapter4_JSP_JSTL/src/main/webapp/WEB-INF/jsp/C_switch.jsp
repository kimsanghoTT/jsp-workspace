<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Switch 활용하기</title>
</head>
<body>
	<h1>Switch와 같은 choose when otherwise 태그 활용</h1>
	<pre>
		- c:choose :: 다중 조건을 처리할 때 사용하는 태그
		- c:when test="" :: 조건이 true일 때 실행되는 태그
		- c:otherwise :: 모든 조건이 false일 때 실행되는 태그
	</pre>
	<c:set var="grade" value="B" />
	<c:choose>
		<c:when test="${grade == 'A'}">
			<p>훌륭한 성적입니다.</p>
		</c:when>
		<c:if test="${ grade == 'B' }">
			<p>공부 열심히 하셨네요</p>
		</c:if>
		<c:otherwise>
			<p>좀 더 노력합시다</p>
		</c:otherwise>
	</c:choose>

	<c:set var="gender" value="?" />
	<c:choose>
		<c:when test="${gender == 'F' }">
			<p>여자임</p>
		</c:when>
		<c:if test="${gender == 'M' }">
			<p>남자임</p>
		</c:if>
		<c:otherwise>
			<p>잘 모름</p>
		</c:otherwise>
	</c:choose>
</body>
</html>