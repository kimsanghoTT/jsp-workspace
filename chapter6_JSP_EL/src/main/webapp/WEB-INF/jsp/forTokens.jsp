<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forTokens</title>
</head>
<body>
	<h1>문자열을 구분자로 나눠서 반복하는 방법</h1>
	<pre>
		배열 형식이 아니라 하나의 값으로 특정 기준에 의해 작성된 값을 구분자를 이용해서 출력
		<code>
			<c:set var="str" value="사과,배,포도" />
			str = "사과, 배, 포도"
			
			<c:forTokens var="fruit" items="${str}" delims=",">
				<li>${fruit }</li>
			</c:forTokens>
		</code>
		
		forTokens : 특정 값을 기준으로 구분해서 반복 출력
			- var : 구분자(delims)로 인해 끊어진 값들을 하나씩 담아 출력하기 위해 설정하는 변수명
			- items : 어떤 값을 구분자(delims)로 끊을 것인지 작성. 변수값이나 구분자가 들어간 값을 직접 넣을 수 있음
			- delims : 기준이 되는 구분자(특정 기호나 값)를 설정
	</pre>
	<c:set var="str" value="사과,배,포도" />
	<c:forTokens var="fruit" items="${str}" delims=",">
		<li>${fruit }</li>
	</c:forTokens>
	<c:forTokens var="s" items="키위!참외!수박" delims="!">
		<li>${s}</li>
	</c:forTokens>
	<c:set var="food" value="햄버거~피자~오렌지~치킨~파스타~냉모밀~냉면~라멘"/>
	<c:forTokens var="fd" items="${food }" delims="~">
		<li>${fd}</li>
	</c:forTokens>
</body>
</html>