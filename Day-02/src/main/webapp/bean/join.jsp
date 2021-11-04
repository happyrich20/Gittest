<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class = "vo.MemberVO" scope = "request"></jsp:useBean>
<jsp:setProperty name = "member" property = "*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>이름 : <jsp:getProperty property ="name" name = "member"/></h1>
	<h1>주소 : <jsp:getProperty property ="addr" name = "member"/></h1>
	<h1>전화번호 : <jsp:getProperty property="tel" name="member"/></h1>
	<h1>비밀번호 : <jsp:getProperty property="member" name="member"/></h1>
	
</body>
</html>