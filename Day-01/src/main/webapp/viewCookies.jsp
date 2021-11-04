<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키 목록<br>
<%
	Cookie[] cookieArray = request.getCookies();
	if(cookieArray != null && cookieArray.length > 0){
		for(int i = 0; i < cookieArray.length; i++){
			
		
	
%>
	<%=cookieArray[i].getName() %> =
	<%=URLDecoder.decode(cookieArray[i].getValue(), "UTF-8") %>
<%
		}
	}
	else{
%>
	쿠키가 존재하지 않습니다.
<%
	}
%>

</body>
</html>