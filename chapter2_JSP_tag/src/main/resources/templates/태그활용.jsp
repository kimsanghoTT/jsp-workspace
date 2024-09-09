<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP 태그 설명 및 활용</title>
</head>
<body>
	<h1><% %> 태그 활용하기</h1>
	<h3><% %> : java 코드 실행 태그</h3>
	<pre>
		<% %> 안에 java 코드를 넣으면 해당 코드가 서버에서 실행.
		웹 브라우저에서 직접 출력되는 것이 아니라, 서버에서 처리를 진행하고 결과를 다시 HTML 태그로 전달해서 보여줌
		대부분의 java 코드가 허용. 변수 선언 및 조건문, 반복문 작성
	</pre>
	<% 
	String name = "홍길동"; 
	out.println("이름 : " + name);
	%>
	
	<h3><%= %> : java 표현식의 결과를 HTML로 출력할 때 사용</h3>
	<pre>
		위 태그에서 선언한 변수를 다른 태그 안에서 불러오고 싶을 때 사용
		-> 위에서 선언한 name 변수를 다른 태그에서도 사용하고 싶을 때
	</pre>
	<p>이름 : <%= name %></p> <!-- 위에서 작성한 name을 여기서도 작성함을 의미 -->
	
	<h3><%! %> : 메서드에 대한 설정을 작성할 때 사용</h3>
	<%!
	//주석은 자바와 같음
	
	//메서드 선언
	public String Greeting(){
		return "하이요";
	}
	%>
	
	<h2><%! %>, <%= %>, <% %> 활용하기</h2>
	<%
	//위에서 작성한 Greeting 호출해서 결과 출력
	String greeting = Greeting();
	%>
	<p>인사말 : <%= greeting %></p>
</body>
</html>