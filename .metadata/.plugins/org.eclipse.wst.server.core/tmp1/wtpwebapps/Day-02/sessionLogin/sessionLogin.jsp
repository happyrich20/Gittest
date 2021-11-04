<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 아이디와 비밀번호가 같으면 로그인 되었다고 처리할 것임 -->
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	if(id.equals(passwd)){
		//-세션에 로그인정보 저장
		session.setAttribute("login", "OK");
		response.sendRedirect("sessionLoginCheck.jsp");
	}
	else{ //-로그인 실패했을때
%>
	<script>
		alert('로그인 실패');
		history.back(); //-아이디와 비밀번호 입력하는 페이지로 되돌아가겠다.
	</script>
	<%
		}
	%>
</body>
</html>