<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>catch�� ����ó���ϱ�</title>
</head>
<body>
	<h1>catch�� ����ó�� ����ϱ�</h1>
	<pre>
	Ư�� ������ ������ �߻����� �� ����ó���� �ۼ��� �� ����
	
	c:catch 
		- Ư�� ������ �߻��� ���� ����ؼ� �����ִ� ��. ���� ����
		- c:if�� ����� �� catch�� �ȿ� �ַ� ���
		
	���� ���� ������ ������ ����
	 -> ����̳� �±� �ȿ� ������ �߻��� ���, jsp���� ���� ó���� �̸� ������ ������ �ڵ带 �����ֱ� ������ ������ ����
	</pre>
	<c:catch var="e">
		<c:set var="result" value="${10/0 }"/> <!-- ��� ���� ���� -->
		<c:if test="${not empty e}">
			���� �߻� : ${e.message}
		</c:if>
	</c:catch>
</body>
</html>