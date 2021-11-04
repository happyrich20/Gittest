<%@page import="vo.PageVO"%>
<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ page import = "vo.BoardVO" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>


<%!
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
    //2021-01-12 09:17%>

<%
	List<BoardVO> articleList = (List<BoardVO>)request.getAttribute("articleList");
	PageVO pageVO = (PageVO)request.getAttribute("pageVO");
	int count = pageVO.getCount();
	int currentPage = pageVO.getCurrentPage();
	int startPage = pageVO.getStartPage();
	int number = pageVO.getNumber();
	int endPage = pageVO.getEndPage();
	int pageCount = pageVO.getPageCount();
%>
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
<center><b>글목록(전체 글:<%=count%>)</b>
<table width="700">
<tr>
    <td align="right">
    <a href="boardWriteForm.bo">글쓰기</a>
    </td>
</table>

<%
	if (count == 0) {
%>
<table width="700" border="1" cellpadding="0" cellspacing="0">
<tr>
    <td align="center">
    게시판에 저장된 글이 없습니다.
    </td>
</table>

<%
	} else {
%>
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
    <tr height="30"> 
      <td align="center"  width="50"  >번 호</td> 
      <td align="center"  width="250" >제   목</td> 
      <td align="center"  width="100" >작성자</td>
      <td align="center"  width="150" >작성일</td> 
      <td align="center"  width="50" >조 회</td>    
    </tr>
<%
	for (int i = 0 ; i < articleList.size() ; i++) {
          BoardVO article = (BoardVO)articleList.get(i);
%>
   <tr height="30">
    <td align="center"  width="50" > <%=number--%></td>
    <td  width="250" >
	<%
	      int wid=0; //공백 이미지의 픽셀값
	      if(article.getRe_level()>0){
	        wid=5*(article.getRe_level());
	%>
	  <img src="board/images/level.gif" width="<%=wid%>" height="16">
	  <img src="board/images/re.gif">
	<%}else{%>
	  <img src="board/images/level.gif" width="<%=wid%>" height="16">
	<%}%>
           
      <a href="boardContent.bo?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
           <%=article.getSubject()%></a> 
          <% if(article.getReadcount()>=20){%>
         <img src="images/hot.gif" border="0"  height="16"><%}%> 
         </td>
    <td align="center"  width="100"> 
       <a href="mailto:<%=article.getEmail()%>">
       <%=article.getWriter()%></a></td>
    <td align="center"  width="150">
    <%= sdf.format(article.getReg_date())%></td>
    <td align="center"  width="50"><%=article.getReadcount()%>
    </td>
  </tr>
     <%}%>
</table>
<%}%>

<%
    if (count > 0) {
        
        if (startPage > 10) { //첫번째 페이지 그룹이 아니면...  이전그룹의 startPage로 이동 %>
        <a href="boardList.bo?pageNum=<%= startPage - 10 %>">[이전]</a>
<%      }
        for (int i = startPage ; i <= endPage ; i++) {  %>
        <a href="boardList.bo?pageNum=<%= i %>">[<%= i %>]</a>
<%
        }
        if (endPage < pageCount) { //현재 페이지그룹이 마지막 페이지 그룹이 아닐때 다음 페이지그룹의 startPage로 이동 %>
        <a href="boardList.bo?pageNum=<%= startPage + 10 %>">[다음]</a>
<%
        }
    }
%>
</center>
</body>
</html>