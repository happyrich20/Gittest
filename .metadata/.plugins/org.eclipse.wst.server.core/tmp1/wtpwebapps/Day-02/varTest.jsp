<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String str2 = "Fighting";
	//스크립트릿에서 선언하는 변수는 반드시 사용되기 전에 선언되어야 함
%>
<%
	String str1 = "Java " + str2;
%>
<%-- <%!
	String str2 = "Fighting";
	//선언부에서 선언되는 변수는 JSP 페이지 전체에서 인식된다.
	
%> --%>

</body>
</html>