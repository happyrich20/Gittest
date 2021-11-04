<%@page import="vo.BoardVO"%>
<%@page import="vo.ReplyVO"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<% 
   BoardVO article = (BoardVO)request.getAttribute("article");
    String pageNum = (String)request.getAttribute("pageNum");
%>
   
<body>  
<center><b>글쓰기</b>
<br>
<form method="post" name="writeform" action="boardUpdatePro.bo" onsubmit="return writeSave()">
<input type="hidden" name="num" value="<%=article.getNum()%>">
<input type="hidden" name="pageNum" value="<%=pageNum%>">


<table width="400" border="1" cellspacing="0" cellpadding="0" align="center">
   <tr>
    <td align="right" colspan="2">
       <a href="list.jsp"> 글목록</a> 
   </td>
   </tr>
   <tr>
    <td  width="70" align="center">이 름</td>
    <td  width="330">
       <input type="text" size="10" maxlength="10" name="writer" value = "<%=article.getWriter()%>"></td>
  </tr>
  <tr>
    <td  width="70"  align="center">제 목</td>
    <td  width="330">
       <input type="text" size="40" maxlength="50" name="subject" value = "<%=article.getSubject()%>"></td>
  </tr>
  <tr>
    <td  width="70"  align="center">Email</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="email" value = "<%=article.getEmail()%>"></td>
  </tr>
  <tr>
    <td  width="70" align="center" >내 용</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"><%=article.getContent()%></textarea> </td>
  </tr>
  <tr>
    <td  width="70"  align="center" >비밀번호</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" name="passwd"> 
    </td>
  </tr>
<tr>      
 <td colspan=2  align="center"> 
  <input type="submit" value="글쓰기" >  
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" 
  OnClick="window.location='list.jsp'">
</td></tr></table>    
    
</form>      
</body>
</html>      