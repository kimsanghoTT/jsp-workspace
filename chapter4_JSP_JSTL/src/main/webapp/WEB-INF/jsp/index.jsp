<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 
taglib : 태그 라이브러리 
uri="http://java.sun.com/jsp/jstl/core" -> 사용할 때 이름을 "C"라고 줄여서 칭함
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 웹사이트</title>
</head>
<body>
	<h1>C 구문을 활용한 jstl 활용</h1>
	<pre>
		JSTL : JSP Standard Tag Library, jsp 표준 태그 라이브러리
			- JSP에서 반복문, 조건문, 변수 처리
			- 사용 방법
				taglib로 맨 위에 사용한다고 설정
				< %@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"% >
				
				<c:set var="이름" value="홍길동"/>
				<p>NAME : ${이름}</p>
				c:로 jstl에 저장된 기능을 가져올 수 있음.
				set = setter, 이름이라는 변수명에 value로 설정한 홍길동을 넣음을 명시
	</pre>
	
	<h3>C 태그 사용해서 if문 설정</h3>
	<pre>
		c태그를 이용해서 if문 설정
			- c:if test="${테스트할 조건 작성}"
			- c:if문은 else가 존재하지 않음. if만 사용
	</pre>
	<c:set var="age" value="20"/>
	<c:if test="${age >= 18 }">
		<p>당신은 성인 입니다.</p>
	</c:if>
	<c:if test="${age < 18 }">
		<p>청소년입니다.</p>
	</c:if>
</body>
</html>