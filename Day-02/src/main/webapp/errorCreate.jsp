<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@page errorPage = "/error/viewErrorMessage.jsp" %> --%>
<!-- jsp 예외처리 방법 중 errorPage 속성을 지정하는 방식이 우선순위가 제일 높다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
에러발생 : <%=request.getParameter("name").toUpperCase() %><%--NullPointerException 발생 --%>
</body>
</html>