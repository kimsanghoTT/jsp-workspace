<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jsp 파일 경로 설정</title>
</head>
<body>
	<h1>controller에서 jsp 확장자 파일 연동하기</h1>
	<pre>
		컨트롤러에서 jsp를 연결할 때 src/main/webapp/WEB-INF/jsp 폴더를 지정해서 연결
		
		jsp 폴더 안에 .jsp 관련 파일을 작성해서 코드를 수행할 수 있도록 설정
	</pre>
	<h1>.jsp로 끝나는 확장자 파일 경로 설정</h1>
	<pre>
	src/main/webapp/WEB-INF/jsp -> 옳은 경로
	src/main/resources/webapp/WEB-INF/jsp -> 잘못된 경로. resources에 작성하는 게 아님. 
	</pre>
</body>
</html>