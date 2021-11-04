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
		//-로그인이 된 상태인지 안 된 상태인지 판단하는 변수
		//-세션영역에 login이 없으면 false
		boolean loginOK = session.getAttribute("login") == null ? false : true;
		
		
	
		if(loginOK){
	%>
		<a href = "sessionLogout.jsp">로그아웃</a>
	<%
		}
		else{
	%>
		<a href = "sessionLoginForm.jsp">로그인</a>
	<%
		}
	%>
</body>
</html>