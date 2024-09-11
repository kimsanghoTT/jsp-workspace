<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP EL 형식 사용하기</title>
</head>
<body>
	<h1>JSP EL 형식 사용 예제</h1>
	<pre>
		EL : Expression Language
		EL 형식을 통해 자바 코드를 최소화하고 데이터를 쉽게 출력하거나 조작할 수 있음
		
		표현 방법: $ { } (예시 : ${username}) 
		< % % >를 이용해 자바에서 전달할 값을 설정, 설정받은 값을 전달
	</pre>
	<%
	request.setAttribute("username", "홍길동");
	request.setAttribute("userage", 20);
	request.setAttribute("balance", 160.88);
	request.setAttribute("fruits", new String[] { "사과", "바나나", "포도" });
	%>
	<!-- 변수 출력 -->
	<p>사용자 이름 : ${username }</p>
	<p>사용자 나이 : ${userage }</p>
	<p>사용자 잔고 : ${balance }</p>
	
	<!-- 배열 출력 -->
	<ul>
		<c:forEach var="fruit" items="${fruits }">
			<li>${fruit }</li><!-- EL 태그 -->
		</c:forEach>
	</ul>
	
	<p>EL / JSTL 차이</p>
	<pre>
		EL(Expression Language)
			- JSP 페이지에서 요청(request)이나 세션(session) 같은 데이터를 쉽게 가져와서 출력하는 데 사용
			- 사용법 : $ { } 사용해서 값을 출력
			- 단점 : 반복문, 조건문 불가능
		
		JSTL(JSP Standard Tag Library)
			- JSP 페이지에서 반복, 조건문, 데이터 포맷팅, 데이터베이스 접근과 같은 작업을 수행할 때 사용
			- 사용법 : prefix="설정한변수명" 후 <설정한변수명:기능>
				- prefix 안의 변수명을 설정할 떄는 http://java.sun.com/jsp/jstl/core 같은 주소에서
					마지막에 끝나는 단어 첫 글자를 따서 주로 사용
			- 단점 : 문법이 복잡함. 태그를 익히는 데 시간 소모
	</pre>
	<h4>request</h4>
	<pre>
		- request.setAttribute() : JSP에서 요청(request) 범위에 데이터를 저장하는 데 사용되는 메서드
		- HttpServletRequest 객체에 저장해서 JSP 페이지 내에서 그 데이터를 다른 페이지로 전달하거나 
			그 페이지 내에서 사용할 수 있도록 설정
		- 문법 : request.setAttribute(String name, 자료형 value)
			name : 데이터를 저장할 때 사용할 key. 이 것을 사용해서 데이터를 가져올 수 있음
			value : 저장할 실제 값. 어떠한 데이터 유형이든 저장할 수 있음
	</pre>
	<h5>request 예제</h5>
	<%
	String name = "홍길동";
	int age = 20;
	
	//데이터를 request 객체에 저장
	request.setAttribute("username", name); //username 변수명 안에 홍길동이라는 이름을 저장
	request.setAttribute("userage", age); //userage 변수명 안에 20이라는 숫자를 저장
	%>
	<!-- JSP 페이지에서 데이터를 EL로 출력 -->
	<p>이름 : ${username }</p>
	<p>나이 : ${userage }</p>
	
	<!-- request에 저장된 값을 다른 페이지로 전달해서 출력 -->
	<%
	request.setAttribute("msg", "index.jsp에서 hello.jsp로 데이터 전달");
	
	//hello.jsp로 데이터 전달
	RequestDispatcher dispatcher = request.getRequestDispatcher("hello.jsp");
	//servlet springboot를 사용하지 않을 때 작성법 -> springboot의 controller로 넘겨줄 떄는 사용 x
	//RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/hello.jsp");
	dispatcher.forward(request, response);
	//dispatcher : 전달자 상태를 전달
	%>
</body>
</html>