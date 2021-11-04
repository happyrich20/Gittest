<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Main Top</h1>
<jsp:include page = "sub.jsp">
	<jsp:param value="22" name="age"/>
</jsp:include>
<h1>Main Bottom</h1>
</body>
</html>