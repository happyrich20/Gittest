<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String contentPage = request.getParameter("contentPage");
   
   if(contentPage == null) {
      contentPage = "welcome.jsp";
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   #wrap{
      width : 800px;
      margin : auto;
   }
   #top{
      height : 150px;
      background : orange;
   }  
   #main{
      margin-top : 10px;
    }
   #main_left{
      height : 300px;
      width : 180px;
      background : green;
      margin-left: 10px;
      float : left;
   }
   #main_right{
      height : 300px;
      width : 600px;
      /* background : yellow; */
      margin-left: 10px;
      float : left;
   }
   #bottom{
      height : 150px;
      margin-top : 10px;
      background : gray;
   }
</style>
</head>
<body>
<section id = "wrap">
   <header id = "top">
      <h1>Top</h1>
   </header>
   <section id = "main">
      <asdie id = "main_left">
         <jsp:include page = "menu.jsp"></jsp:include>
      </asdie>
      <section id = "main_right">
         <jsp:include page = "<%=contentPage %>"/>
      </section>
   </section>
   <div style = "clear:both;"></div>
   <footer id = "bottom">
      <h1>Bottom</h1>
   </footer>
</section>
</body>
</html>