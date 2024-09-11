<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변수를 삭제하는 remove</title>
</head>
<body>
	<h1>remove 태그</h1>
	<pre>
		- JSTL에서 system.out.println은 c:out을 이용해서 작성
		- 작성법 
			c:out defult="작성될 내용"
			
		- 특정 변수의 값 출력
			c:out var="변수명" default="변수명을 불러오지 못하거나 특정 값이 없으면 보여줄 내용"
			
		- JSTL에서 특정 변수값을 삭제하는 태그
		- 작성법
			c:remove var="값을 삭제할 변수명"
	</pre>
	<c:set var="tempVar" value="삭제될 값 입니다"/>
	<c:out value="${tempVar}"/>
	<c:remove var="tempVar"/>
	<c:out value="${tempVar }" default="없는 값입니다"/>
</body>
</html>