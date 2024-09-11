<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>catch로 예외처리하기</title>
</head>
<body>
	<h1>catch로 예외처리 사용하기</h1>
	<pre>
	특정 문제나 에러가 발생했을 때 예외처리를 작성할 수 있음
	
	c:catch 
		- 특정 문제가 발생할 것을 대비해서 감싸주는 것. 에러 방지
		- c:if를 사용할 때 catch를 안에 주로 사용
		
	에러 관련 구문이 보이지 않음
	 -> 계산이나 태그 안에 문제가 발생할 경우, jsp에서 문제 처리를 미리 진행한 다음에 코드를 보여주기 때문에 보이지 않음
	</pre>
	<c:catch var="e">
		<c:set var="result" value="${10/0 }"/> <!-- 계산 에러 유도 -->
		<c:if test="${not empty e}">
			에러 발생 : ${e.message}
		</c:if>
	</c:catch>
</body>
</html>