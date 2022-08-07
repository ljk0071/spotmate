<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<div class="driver-top-banner"></div>
	<div class="inner">
		<div class="first clear" data-aos="fade-right">
			<img src="/assets/images/common/login_image_100_01.png"> <span>드라이버<br>이동 경로 등록하기</span>
				<p>드라이버님이 이동하시는 경로를 등록해주시면<br> 같이 이동을 원하는
					유저가 카풀을 신청 할 예정입니다.
				</p>
		</div>
		<div class="second clear" data-aos="fade-left">
			<div class="s1">
				<p class="sfd">SPOT CARPOOL</p>
				<span class="ssd">스팟 카풀 서비스는 '스팟'에서 '스팟'으로 이동하는<br>
					드라이버와 유저를 매칭해주는 카풀 서비스로<br> 원하는 장소와 기간을 설정하여 등록할 수 있습니다.
				<a href="./carpoolWrite">등록하기&nbsp; →</a></span>
			</div>
			<img src="/assets/images/road1.jpg">
		</div>
		<div class="third clear" data-aos="fade-right">
			<img src="/assets/images/road2.jpg">
			<div class="t1">
				<p class="tfd">SPOT HITCHHIKE</p>
				<span class="tsd">스팟 카풀 서비스는 '스팟'에서 '스팟'으로 이동하는<br>
					드라이버와 유저를 매칭해주는 카풀 서비스로<br> 원하는 장소와 기간을 설정하여 등록할 수 있습니다.
				<a href="./hitchWrite">등록하기&nbsp; →</a></span>
			</div>
		</div>
		<div class="fourth clear" data-aos="fade-left">
			<img src="/assets/images/road1.jpg">
			<div class="f1">
				<p class="ffd">MATE PRODUCT</p>
				<span class="fsd">메이트 서비스는 드라이버가 이동하는 경로를<br> 등록하여 출발지에서
					도착지까지 모든 일정을<br> 함께하는 이동 메이트 서비스입니다.
				<a href="./mateWrite" class="btn_a2">등록하기&nbsp; →</a></span>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
<script>
	AOS.init();
</script>
</html>
