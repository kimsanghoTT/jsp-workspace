<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:forEach 활용해서 for문 생성하기</title>
</head>
<body>
	<h1>c:forEach 활용해서 for문 생성하기</h1>
	<!-- 
	EL : <c:set var="fruits" value="${['apple', 'banana', 'grape'] }"/>
	JSTL : 배열을 < % 에 담아서 사용해야함
	 -->
	<!-- %를 이용해서 자바 배열 선언 -->
	<%
	String[] fruits = {"apple", "banana", "grape"};
	pageContext.setAttribute("fruits", fruits);
	//pageContext : 페이지 내에서 변수명에 담긴 내용을 전체적으로 사용할 수 있도록 유지하는 역할
	//setAttribute("저장할이름",저장할변수명)
	%>
	
	<ul>
		<c:forEach var="fruit" item="${fruits }">
			<li>${fruit}</li>
		</c:forEach>
	</ul>
	
</body>
</html>