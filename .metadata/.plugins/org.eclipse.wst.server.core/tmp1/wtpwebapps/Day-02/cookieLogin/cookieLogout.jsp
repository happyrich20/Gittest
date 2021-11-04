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
	//쿠키를 사용해서 로그인 처리를 했는데 로그아웃을 한다는 의미는 로그인 정보를 저장한 쿠키를 제거한다는 것임
	//-로그인이라는 이름을 가진 쿠키를 없앨려면 우선 로그인이라는 이름을 가진 쿠키를 찾아야 함
	Cookie[] cookieArray = request.getCookies(); //-우리가 원하는 쿠키만 따로 넘어오지 않음. 다 받아야됨
	if(cookieArray != null){
		//-쿠키의 배열에서 우리가 원하는 쿠키를 찾는 작업을 해야됨.
		for(int i = 0; i < cookieArray.length ; i++){
			if(cookieArray[i].getName().equals("login")){
				//-절대 똑같은 쿠키 이름으로 저장될 수 없음. 이름은 중복될 수 없음
				//쿠키를 제거한다는 의미는 해당 쿠키의 생존기간을 0으로 준다는 의미
				cookieArray[i].setMaxAge(0);
				response.addCookie(cookieArray[i]); //-addCookie 해야 클라이언트쪽으로 전송됨
				response.sendRedirect("cookieLoginCheck.jsp");
			}
		}
	}
%>
</body>
</html>