<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vo.DogVO"%>
<%
	DogVO dogVO = (DogVO)request.getAttribute("dogVO");
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
		float : left;
	}
	#main_right{
		height : 300px;
		width : 600px;
		background : yellow;
		margin-left: 10px;
		float : left;
	}
	#bottom{
		height: 150px;
		margin-top: 10px;
		background: gray;
	}
	.viewProductImage{
		height : 300px; 
		width : 180px;
	}
</style>
</head>
<body>
<section id="wrap">
	<header id="top">
		<h1><%=dogVO.getDogKind() %>개상품 정보</h1>
	</header>
	<section id="main">-
		<aside id="main_left">
			<img src = "images/<%=dogVO.getDogImage() %>.jpg" class = "viewProductImage"/>
		</aside>
		<section id="main_right" style = "font-size : xx-large">
			<b>개 원산지 : </b><%=dogVO.getDogCountry() %><br>
			<b>개 가격 : </b><%=dogVO.getDogPrice() %>원<br>
			<b>개 신장 : </b><%=dogVO.getDogHeight() %>cm<br>
			<b>개 체중 : </b><%=dogVO.getDogWeight() %>kg<br>
			<b>개 설명 : </b><%=dogVO.getDogContent() %><br>
		</section>
	</section>
	<div style="clear: both;"></div>
	<footer id="bottom">
		<h1>
			<a href="dogList.dog">쇼핑계속하기</a>
			<a href="dogCartAdd.dog?id=<%=dogVO.getDogId()%>">장바구니담기</a>
		</h1>
	</footer>
</section>
</body>
</html>