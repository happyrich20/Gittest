<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>좋아하는 걸파이터를 선택하세요</h1>
<form action="<%=request.getContextPath() %>/fighterChoice.jsp" method = "POST">
	<input type = "checkbox" name = "fighter" value = "lee.jpg"/>원트
	<input type = "checkbox" name = "fighter" value = "jet.jpg"/>코카앤버터
	<input type = "checkbox" name = "fighter" value = "holl.jpg"/>홀리뱅
	<input type = "checkbox" name = "fighter" value = "la.jpg"/>라치카<br>
	<input type = "submit" value = "선택"/>
</form>
</body>
</html>