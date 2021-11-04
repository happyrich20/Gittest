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
   int num = (int)request.getAttribute("num");
    String pageNum = (String)request.getAttribute("pageNum");
%>
   
<body>  
<center><b>글쓰기</b>
<br>
<form method="post" name="writeform" action="boardDeletePro.bo" onsubmit="return writeSave()">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="pageNum" value="<%=pageNum%>">


<table width="400" border="1" cellspacing="0" cellpadding="0" align="center">
   <tr>
    <td align="right" colspan="2">
       <a href="list.jsp"> 글목록</a> 
   </td>
   </tr>
  <tr>
    <td  width="70"  align="center" >비밀번호</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" name="passwd"> 
    </td>
  </tr>
<tr>      
 <td colspan=2  align="center"> 
  <input type="submit" value="삭제" >  
  <input type="button" value="목록보기" 
  OnClick="window.location='list.jsp'">
</td></tr></table>    
    
</form>      
</body>
</html>      