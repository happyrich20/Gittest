<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "path.jsp" %>
<%
	String[] fighterArray = request.getParameterValues("fighter");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	width : 600px;
	margin : auto;
	border : 1px solid red;
}
img{
	width : 150px;
	height : 150px;
}
</style>
</head>
<body>
	<table>
		<tr>
			<%
				for(int i = 0; i < fighterArray.length; i++){
			%>
			<td><img src = "<%=IMAGE_PATH %>/<%=fighterArray[i]%>"/></td>
			<%
				}
			%>
		</tr>
	</table>
</body>
</html>