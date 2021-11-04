<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ page import = "vo.BoardVO" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<%
	
   SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
   BoardVO article = (BoardVO)request.getAttribute("article");
   String pageNum = (String)request.getAttribute("pageNum");
      
  	  int num = article.getNum();
	  int ref=article.getRef();
	  int re_step=article.getRe_step();
	  int re_level=article.getRe_level();
%>

<body>  
<center><b>글내용 보기</b>
<br>
<form>
<table width="500" border="1" cellspacing="0" cellpadding="0" align="center">  
  <tr height="30">
    <td align="center" width="125" >글번호</td>
    <td align="center" width="125" align="center">
	     <%=num %></td>
    <td align="center" width="125" >조회수</td>
    <td align="center" width="125" align="center">
	      <%=article.getReadcount() %></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" >작성자</td>
    <td align="center" width="125" align="center">
	      <%=article.getWriter() %></td>
    <td align="center" width="125" >작성일</td>
    <td align="center" width="125" align="center">
	      <%=article.getReg_date() %></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" >글제목</td>
    <td align="center" width="375" align="center" colspan="3">
	      <%=article.getSubject() %></td>
  </tr>
  <tr>
    <td align="center" width="125" >글내용</td>
    <td align="left" width="375" colspan="3"><pre> <%=article.getContent() %></pre></td>
  </tr>
  <tr height="30">      
    <td colspan="4"  align="right" > 
	  <input type="button" value="글수정" 
       onclick="document.location.href='boardUpdateForm.bo?num=<%=num %>&pageNum=<%=pageNum %>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" value="글삭제" 
       onclick="document.location.href='boardDeleteForm.bo?num=<%=num %>&pageNum=<%=pageNum %>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" value="답글쓰기" 
       onclick="document.location.href='boardWriteForm.bo?num=<%=num %>&ref=<%=article.getRef() %>&re_step=<%=article.getRe_step() %>&re_level=<%=article.getRe_level() %>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" value="글목록" 
       onclick="document.location.href='boardList.bo?pageNum=<%=pageNum %>'">
    </td>
  </tr>
</table>    
</form>      
</body>
</html>      
