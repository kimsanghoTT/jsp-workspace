<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 사용 예제 1</title>
</head>
<body>
	<h1>JSP 문법 태그 사용하기</h1>
	<pre>
		JSP 문법을 사용하기 위해선 index.jsp 페이지에서 
		<% %> 안에 자바처럼 작성해주면 됨
		
		※ JSP에서 System.out.println을 사용할 때는 System을 지워주고 사용
	</pre>
	
	<%
	String name = "학생";
	out.println("이름 : " + name);
	%>
	
	<pre>
		jsp를 사용하기 위해선 프로젝트 우클릭 -> Properties -> Java Build Path -> Libraries -> Add Library
		-> Server Runtime -> Apache Tomcat 설정
		
		요즘은 Springboot + JSP 에서 Springboot + React (+ NextJs or TypeScript) 로 바뀌는 중
	</pre>
	
	<h3>JSP <% %> 태그 사용하기</h3>
	<pre>
		<% %> : 이 페이지에서만 사용할 변수 작성
	</pre>
	<h4>if문 jsp 예제</h4>
	<pre>만약 i가 10보다 클 때 10보다 크다 출력</pre>
	<% 
	int i = 0;
	if(i > 10){
		out.println("i가 10보다 큼");
	}
	else{
		out.println("i가 10보다 작음");
	}
	%>
	<%int a = 0;
	if(a > 10){%> <!-- 자바 태그로 설정 -->
		a가 10보다 큼 <!-- 일부러 텍스트를 자바 태그에서 제외 -> 텍스트 서식을 위함 -->
	<%}else{%>	<!-- 다시 자바 태그로 설정 -->
		<p>a가 10보다 작음</p>
	<%}%>
	
	<pre>
	만약에 b가 1보다 크면 1보다 큽니다.
	4~5사이에 존재합니다.
	10보다 작습니다
	</pre>
	<%
	int b = 4;
	if(b > 1){%>
		<p>1보다 큼</p>
	<% }else if(b >= 4 && b <= 5){%>
		<p>4 ~ 5 사이에 존재함</p>
	<% }else{%>
		<p>10보다 작음</p>
	<% }%>
</body>
</html>