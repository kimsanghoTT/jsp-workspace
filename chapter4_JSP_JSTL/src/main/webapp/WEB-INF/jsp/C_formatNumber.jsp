<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자값 넣기</title>
</head>
<body>
	<h1>format 태그 예제(숫자)</h1>
	<c:set var="price" value="150.75"/>
	<fmt:formatNumber value="${price}" type="currency"/>
	<pre>
		uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"
		: 날짜, 숫자를 쉽게 포맷팅할 수 있도록 도와주는 태그
			-> 날짜의 형식을 바꾸거나 숫자를 통화, 퍼센트 형식으로 변환할 수 있음
		
		숫자 포멧팅 태그
		fmt:formatNumber :: 숫자를 특정 형식으로 변환할 때 사용
			type="currency" : 숫자를 현재 위치한 지역에 맞춰 통화 기호가 자동으로 추가 ($, ₩, €)
			type="percent" : 숫자를 퍼센트 형식으로 변환
			type="number" : 숫자를 소수점 자리까지 조정하면서 표현
			
			maxFractionDigits : 지정한 소수점 자리 이하까지만 보여주기. 2로 작성 시 소수점 두 자리까지만 표기
			maxIntegerDigits : 지정한 소수점 자리 이상을 보여주기. 2로 작성시 최소 소수점 두 자리부터 표기
		<c:set var="n" value="1234567.89"/>
		<p>일반적인 숫자 : <fmt:formatNumber value="${n}" type="number"/></p>
		<p>소수점 2자리까지 표현 : <fmt:formatNumber value="${n}" type="number" maxFractionDigits="2"/></p>
	</pre>
</body>
</html>