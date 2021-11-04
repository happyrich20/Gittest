<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
	Cookie cookie1 = new Cookie("path1", URLEncoder.encode("경로 :/Day-02/path1", "UTF-8"));
	cookie1.setPath("/Day-02/path1");
	//클라이언트가 /Day-02/path1 의 경로로 요청을 했을 때만 쿠키가 인식되게 하겠다는 의미
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("path", URLEncoder.encode("경로 : ", "UTF-8"));
	//path를 설정하지 않은 쿠키는 처음에 쿠키를 생성한 동일한 경로로 요청을 할때만 쿠키가 인식된다.
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("root", URLEncoder.encode("경로 : /", "UTF-8"));
	cookie3.setPath("/");
	//경로는 localhost:8088/
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("path2", URLEncoder.encode("경로 : /Day-02/path2", "UTF-8"));
	cookie4.setPath("/Day-02/path2");
	//경로는 localhost:8088/
	response.addCookie(cookie4);
%>