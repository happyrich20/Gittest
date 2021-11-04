<%@page import="java.util.ArrayList"%>
<%@page import="vo.DogVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<DogVO> dogList = (ArrayList<DogVO>)request.getAttribute("dogList");
ArrayList<String> todayImageList = (ArrayList<String>)request.getAttribute("todayImageList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#dogListArea, #todayImageListArea{
		width : 620px;
		margin : auto;
		border : 1px solid red;
		text-align : center;
	}
	h1{
		text-align: center;
	}
	table{
		width: 600px;
	}
	.productImage{
		width : 150px;
		height : 150px;
	}
	.todayImage{
	width : 100px;
		height : 100px;
	}
</style>
</head>
<body>
	<section id = "dogListArea">
		<%
			if(dogList == null || dogList.size() == 0){
		%>
			<h1>등록된 개 상품이 없습니다.</h1>
		<%
			}
			else{
		%>
			<h1>개상품목록</h1>
		<table>
			<tr>
				<%
					for(int i = 0; i<dogList.size(); i++){
				%>
				<td>
					<a href = "dogView.dog?id=<%=dogList.get(i).getDogId()%>">
						<img src = "images/<%=dogList.get(i).getDogImage()%>.jpg"
						class = "productImage"/>
					</a><br>
					상품명 : <%=dogList.get(i).getDogKind() %><br>
					가격 : <%=dogList.get(i).getDogPrice() %>원
				</td>
				<%		
					if((i+1) % 4 == 0){											
				%>
				</tr>
				<tr>
				<%		
					}
				%>
				<%		
					}
				%>
			</tr>
		</table>
		<%		
			}
		%>
	</section>
	<% 
		if(todayImageList != null && todayImageList.size()>0){
	%>
	<section id="todayImageListArea" style="margin-top: 20px">
		<h1>오늘 본 개 상품 목록</h1>
		<table>
			<tr>
				<%
					for(int i=0; i<todayImageList.size();i++){
				%>
					<td>
						<img src="images/<%=todayImageList.get(i)%>.jpg" class="todayImage"/>
					</td>
				<%
					}
				%>
			</tr>
		</table>
	</section>
	<%
		}
	%>
</body>
</html>