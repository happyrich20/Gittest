<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Sub Main</h1>
<%String[] ageArray = request.getParameterValues("age");
   for(int i=0; i<ageArray.length; i++) {
%>
      나이 : <%=ageArray[i] %><br>
<% 
   }
%>

하나만 받을때 나이 : <%=request.getParameter("age") %>
</body>
</html>