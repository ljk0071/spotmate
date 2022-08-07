<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mateInfo</title>

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

</head>
<body>
<!-- mateInfo_wrap -->
<div class="mateInfo_wrap">

	<!-- header -->
	<header>
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	</header>	
	<!-- //header -->
	
	<!-- banner1 -->
	<div class="mateInfo_banner1">
	<div class="clear" style="width:1920px; margin:0px auto;">
		<div class="pictogrem01">
		</div>
		<h2>어떻게 가야할까?<br>나의 이동 메이트 찾아보기</h2>
		<h3>출발지에서 도착지까지 모든 장소의 이동을 함께하고<br>스팟에 도착하면 각자의 일정을 자유롭게 즐기실 수 있는 서비스입니다.</h3>
	</div>
	</div>
	<!-- //mateInfo_banner1 -->
	
	<div class="gap">
	</div>

	<!-- mateInfo_content -->
	<div class="mateInfo_content clearfix">
		<div class="picture1">
		</div>
		
		<div class="mateInfo_page1">
			<h2>01</h2>
			<h3>장거리 이동도 쉽게</h3>			
			<p>
			운전에 대한 고민없이, 거리에 대한 걱정없이<br>
			출발의 부담없이 어디든지 자유롭게 이동할 수 있다면?<br><br>
			드라이버님들의 일정을 확인하고 함께 떠나보세요.
			</p>
		</div>
		
		<div class="picture2"></div>
		
		<div class="mateInfo_page2">
			<h2>02</h2>
			<h3>이동이 자유로운 여행</h3>
			
			<p>
			여행을 떠나고는 싶은데<br>
			이동하는 장소마다 택시를 타기에는 부담스럽다면?<br><br>
			드라이버님들의 일정을 확인하고 함께 떠나보세요.
			</p>
		</div>
	</div>
	<!-- //mateInfo_content -->
	
	<div class="gap">
	</div>
	
	<!-- mateInfo_banner2 -->
	<div class="mateInfo_banner2">
		<div class="mateInfo_page3">
			<h2>03</h2>
			<h3>누구나 자유롭게 이동</h3>
			<p>
			내 차가 없어도, 렌트에 대한 부담없이<br>
			나와 일정이 맞는 드라이버 메이트만 있다면<br><br>
			언제든지 자유롭게 이동할 수 있는 메이트 서비스입니다.
			</p>
			<button type="button" class="mateMainGo" onclick="location.href='${pageContext.request.contextPath}/mateMain'">			
				<span class="pictogrem02"></span>	
				<h2>보러가기</h2>
			</button>
		</div>
	</div>
	<!-- //mateInfo_banner2 -->
	
	<!-- mateInfo_content2 -->
	<div class="mateInfo_content2">
		<p class="mateInfo_page4">
		택시를 부르기 어려운 곳이여도,<br>
		운전을 오래 하지 않아 렌트가 부담스러울 때<br><br>
		같이 이동할 수 있는 메이트만 있다면,<br>
		누구나 언제 어디서든 자유롭게 이동할 수 있습니다.
		</p>
	</div>
	<!-- //mateInfo_content2 -->
	

	
	
	<!-- footer -->
	<footer>
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</footer>	
	<!-- //footer -->
	
</div>
<!-- //mateInfo_wrap -->
</body>
</html>