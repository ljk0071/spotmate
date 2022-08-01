<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="/assets/css/spotMateMain.css">
<link rel="stylesheet" href="/assets/css/driverMain.css">
</head>
<body>
<div id="wrap"  class="clearfix">
<c:import url="/WEB-INF/views/includes/nav.jsp"></c:import>
<div id="contents" class="clearfix">
	<div id="first" class="clearfix">
		<div class="f1">
			<img src="/assets/images/bluelogo.png">
			<span class="ffd">드라이버<br>
			이동 경로 등록하기</span>
		</div>
		<div class="f2">
			<span class="fsd">드라이버님이 이동하시는 경로를 등록해주시면<br>
			같이 이동을 원하는 유저가 카풀을 신청 할 예정입니다.</span>
		</div>
	</div>
	<div id="second" class="clearfix">
		<div class="s1">
			<p class="sfd">SPOT CARPOOL</p>
			<span class="ssd">스팟 카풀 서비스는 '스팟'에서 '스팟'으로 이동하는<br>
			드라이버와 유저를 매칭해주는 카풀 서비스로<br>
			원하는 장소와 기간을 설정하여 등록할 수 있습니다.</span>
			<br>
			<button>등록하기→</button>
		</div>
		<img src="/assets/images/road1.jpg">
	</div>
	<div id="third" class="clearfix">
		<img src="/assets/images/road2.jpg">
		<div class="t1">
			<p class="tfd">SPOT HITCHHIKE</p>
			<span class="tsd">스팟 카풀 서비스는 '스팟'에서 '스팟'으로 이동하는<br>
			드라이버와 유저를 매칭해주는 카풀 서비스로<br>
			원하는 장소와 기간을 설정하여 등록할 수 있습니다.</span>
			<br>
			<button>등록하기→</button>
		</div>
	</div>
	<div id="fourth" class="clearfix">
		<div class="f1">
			<p class="ffd">MATE PRODUCT</p>
			<span class="fsd">메이트 서비스는 드라이버가 이동하는 경로를<br>
			등록하여 출발지에서 도착지까지 모든 일정을<br>
			함께하는 이동 메이트 서비스입니다.</span>
			<br>
			<button>등록하기→</button>
		</div>
		<img src="/assets/images/road1.jpg">
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>
</body>
</html>