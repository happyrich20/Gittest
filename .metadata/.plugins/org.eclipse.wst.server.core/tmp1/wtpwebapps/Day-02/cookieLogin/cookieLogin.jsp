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
		//쿠키로 로그인 처리한다는 의미는 로그인이 성공했을때 쿠키에 로그인 정보를 저장하겠다는 의미
		Cookie loginCookie = new Cookie("login", "OK");
		response.addCookie(loginCookie);
		//-로그인 성공시킨 후에는 리다이렉트 방식으로 cookieLoginCheck.jsp로 리다이렉트하겠다.
		response.sendRedirect("cookieLoginCheck.jsp");
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