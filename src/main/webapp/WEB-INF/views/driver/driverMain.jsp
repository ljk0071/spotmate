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
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
	<div id="wrap">
		<div class="header">header</div>
		<div class="contents clearfix">
			<!-- 	<div> -->
			<!-- 	hi hello -->
			<!-- 	</div> -->
			<div class="swiper">
				<div class="swiper-wrapper">
					<div class="first swiper-slide clearfix">
						<img src="/assets/images/bluelogo.png"> <span class="ffd">드라이버<br>
							이동 경로 등록하기
						</span>
						<div class="f2">
							<span class="fsd">드라이버님이 이동하시는 경로를 등록해주시면<br> 같이 이동을
								원하는 유저가 카풀을 신청 할 예정입니다.
							</span>
						</div>
					</div>
					<div class="second swiper-slide clearfix">
						<div class="s1">
							<p class="sfd">SPOT CARPOOL</p>
							<span class="ssd">스팟 카풀 서비스는 '스팟'에서 '스팟'으로 이동하는<br>
								드라이버와 유저를 매칭해주는 카풀 서비스로<br> 원하는 장소와 기간을 설정하여 등록할 수 있습니다.
							</span> <br> <a href="./carpoolWrite"><button>등록하기→</button></a>
						</div>
						<img src="/assets/images/road1.jpg">
					</div>
					<div class="third swiper-slide clearfix">
						<img src="/assets/images/road2.jpg">
						<div class="t1">
							<p class="tfd">SPOT HITCHHIKE</p>
							<span class="tsd">스팟 카풀 서비스는 '스팟'에서 '스팟'으로 이동하는<br>
								드라이버와 유저를 매칭해주는 카풀 서비스로<br> 원하는 장소와 기간을 설정하여 등록할 수 있습니다.
							</span> <br> <a href="./hitchWrite"><button>등록하기→</button></a>
						</div>
					</div>
					<div class="fourth swiper-slide clearfix">
						<img src="/assets/images/road1.jpg">
						<div class="f1">
							<p class="ffd">MATE PRODUCT</p>
							<span class="fsd">메이트 서비스는 드라이버가 이동하는 경로를<br> 등록하여
								출발지에서 도착지까지 모든 일정을<br> 함께하는 이동 메이트 서비스입니다.
							</span> <br> <a href="./mateWrite"><button>등록하기→</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="footer">footer</div>
	</div>
</body>
<script>
	var swiper = new Swiper('.swiper', {
		direction : 'vertical',
		effect : 'fade',
		fadeEffect : {
			crossFade : true
		},
		// 		effect : 'cube',
		// 		cubeEffect : {
		// 			slideShadows : false,
		// 			shadowScale : 0.5,
		// 		},
		slidesPerView : 1,
		spaceBetween : 10,
		mousewheel : true,
		loop : true,
	});
</script>
</html>
