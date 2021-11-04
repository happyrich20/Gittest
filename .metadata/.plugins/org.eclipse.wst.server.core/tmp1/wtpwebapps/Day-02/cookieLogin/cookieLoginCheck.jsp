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
		boolean loginOK = false;
		Cookie[] cookieArray = request.getCookies();
		
		//-쿠키 배열에 로그인할 쿠키가 있는지 찾겠다
		if(cookieArray != null){
			//-쿠키가 하나라도 넘어왔는지 판단
			for(int i = 0; i < cookieArray.length; i++){
				//-login이라는 이름을 갖고 있는 쿠키가 있는지 판단
				if(cookieArray[i].getName().equals("login")){
					loginOK = true;
				}
			}
		}
	
		if(loginOK){
	%>
		<a href = "cookieLogout.jsp">로그아웃</a>
	<%
		}
		else{
	%>
		<a href = "cookieLoginForm.jsp">로그인</a>
	<%
		}
	%>
</body>
</html>