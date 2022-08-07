<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mateDeep</title>

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

</head>
<body>
	<!-- mateDeep_wrap -->
	<div class="mateDeep_wrap">

		<!-- header -->
		<header>
			<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		</header>
		<!-- //header -->

		<!-- mateDeep_banner1 -->
		<div class="mateDeep_banner1">
			<div class="mate-deep-banner clear">
				<div class="mate-deep-banner-l-sec">
					<span>같이 타고 가요</span>
					<p>FIND YOUR MATE</p>
				</div>
				<h3>
					출발지에서 도착지까지<br> 모든 일정의 이동을 함께하는 서비스입니다.
				</h3>
			</div>
		</div>

		<div class="inner">
			<!-- //mateDeep_banner1 -->
			<div class="carpoolDeep-aside">
				<div class="aside">
					<form class="confirmForm">
						출발지<br> <input class="confirm" type="text" name="departure"
							value="대방역 1호선 2번 출구"> 목적지<br> <input
							class="confirm" type="text" name="destination" value="NAVER 본사">
						탑승 인원 수<br> <input class="confirm" type="text" name="number"
							value="1명"> 탑승 시간<br> <input class="confirm"
							type="text" name="startTime" value="오전 08:00"> 처음 탑승일<br>
						<input class="confirm" type="text" name="startDay"
							value="2022.07.25.월요일"> 마지막 탑승일<br> <input
							class="confirm" type="text" name="endDay" value="2022.08.25.화요일">

					</form>

					<div class="point">
						총 결제 포인트<br> <input class="pointConfirm" type="text"
							name="point" value="3,000 포인트"><br> <br> <span
							class="pointText">*포인트는 선결제되며,<br>도착시 드라이버에게 지급됩니다.
						</span>

					</div>

					<button class="rideButton">탑승하기</button>
				</div>
			</div>
			<!-- mateDeep_content -->
			<!-- <div class="mateDeep_infoBox">
			<div class="driverInfo">
				<span class="mateDeep_passengers">탑승 인원수</span>
				<span class="mateDeep_CPassengers">1명</span>
				<span class="mateDeep_boardingtime">탑승 시간</span>
				<span class="mateDeep_CBoardingtime">오전 08:00</span>
				<span class="mateDeep_startDay">출발 날짜</span>
				<span class="mateDeep_CStartDay">2022.07.25.월요일</span>
				<span class="mateDeep_endDay">도착 날짜</span>
				<span class="mateDeep_CEndDay">2022.07.27.수요일</span>
			</div>
				<span class="mateDeep_totalPoint">총 결제 포인트</span>
				<span class="mateDeep_payPoint">50,000 포인트</span>
				<p class="p1">*포인트는 선결제되며,<br> 도착시 드라이버에게 지급이됩니다.</p>
				<p class="p2">*출발 예정시간보다 15분이상 늦게 도착시<br> 패널티가 부여될 수 있으며, 자세한 사항은<br> 공지사항에서 확인 부탁드립니다.</p>
				<button class="mateDeep_boardingBtn">
					<p class="p3">탑승하기</p>
				</button>		
			</div> -->
			<div class="mateDeep_content">
				<div class="mateDeep_titleFont1">이동 스케줄</div>

				<div class="mateDeep_today">
					<div class="mateDeep_dayBox">
						<p>1일차</p>
					</div>
					<div class="mateDeep_float">
						<div class="mateDeep_start">START</div>
						<div class="mateDeep_time">08 : 00 AM</div>
						<div class="mateDeep_spot">서울역</div>
					</div>
					<img class="mateDeep_float"
						src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
					<div class="mateDeep_float">
						<div class="mateDeep_start">SPOT 1</div>
						<div class="mateDeep_time">01 : 30 PM</div>
						<div class="mateDeep_spot">강릉 안목해변</div>
					</div>
					<img class="mateDeep_float"
						src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
					<div class="mateDeep_float">
						<div class="mateDeep_start">SPOT 2</div>
						<div class="mateDeep_time">04 : 20 PM</div>
						<div class="mateDeep_spot">테라로사 카페</div>
					</div>
					<img class="mateDeep_float"
						src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
					<div class="mateDeep_float">
						<div class="mateDeep_start">SPOT 3</div>
						<div class="mateDeep_time">07 : 20 PM</div>
						<div class="mateDeep_spot">강릉 주문진</div>
					</div>
				</div>

				<div class="mateDeep_today">
					<div class="mateDeep_dayBox">
						<p>2일차</p>
					</div>
					<div class="mateDeep_float">
						<div class="mateDeep_start">START</div>
						<div class="mateDeep_time">08 : 00 AM</div>
						<div class="mateDeep_spot">서울역</div>
					</div>
					<img class="mateDeep_float"
						src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
					<div class="mateDeep_float">
						<div class="mateDeep_start">SPOT 1</div>
						<div class="mateDeep_time">08 : 00 AM</div>
						<div class="mateDeep_spot">서울역</div>
					</div>
					<img class="mateDeep_float"
						src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
					<div class="mateDeep_float">
						<div class="mateDeep_start">SPOT 2</div>
						<div class="mateDeep_time">08 : 00 AM</div>
						<div class="mateDeep_spot">서울역</div>
					</div>
					<img class="mateDeep_float"
						src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
					<div class="mateDeep_float">
						<div class="mateDeep_start">SPOT 3</div>
						<div class="mateDeep_time">08 : 00 AM</div>
						<div class="mateDeep_spot">서울역</div>
					</div>
				</div>

				<div class="mateDeep_titleFont2">주변 장소 추천</div>
				<div class="mateDeep_map"></div>
				<img class="mateDeep_img1" src="/assets/images/ico_spot.png">
				<span class="mateDeep_placeAround">송정동 주변 4km</span> <span
					class="mateDeep_placeRecommend"> <select
					name="placeRecommend">
						<option value="cafe">카페</option>
						<option value="restaurant">음식점</option>
						<option value="attraction">명소</option>
				</select>
				</span> <img class="mateDeep_img2" src="/assets/images/square-search.png">









			</div>
		</div>
		<!-- //mateDeep_content -->


		<!-- footer -->
		<header>
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</header>
		<!-- //footer -->

	</div>
	<!-- //mateDeep_wrap -->
</body>
</html>