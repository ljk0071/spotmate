<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>


<title>myPointCarge</title>

</head>

<body>

	<div id="wrap">

		<!-- //header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


		<!-- //topNav -->
		<nav class="myPage_topNav">
			<div class="box1">
				<div class="box1_box">
					<img src="/assets/images/box_user.png">
				</div>
				<p>yujieun님</p>
				<span>Reviews</span><span><img src="/assets/images/ico_star.png">4.5</span>
			</div>
			<div class="box2">
				<p>
					<a href="./myPointCarge">포인트 충전 ></a>
				</p>
				<span>1,0000P </span> <img src="/assets/images/ico_point.png">
			</div>
			<div class="box3">
				<p>
					<a href="./myCouponMain">쿠폰 사용 ></a>
				</p>
				<span>2개 </span> <img src="/assets/images/ico_coupon.png">
			</div>
		</nav>

		<!-- //myPage main contents -->
		<main class="contents">

			<!-- //sideNav  -->
			<nav class="myPage_sideNav">
				<h2>마이페이지</h2>
				<!-- h2? -->
				<ul class="myPage_list">
					<li><a href="./myDriverForm">드라이버 신청/정보<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myUsageDriverMain">이용 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myReservationDriverMain">예약 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myQnaMain">문의 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myPointMain">포인트<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myCouponMain">쿠폰<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myPointRefundMain">환불 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li class="myPage_list_last"><a href="./myInfoChk">개인정보 수정<img src="/assets/images/chevron-right-blue.png"></a></li>
				</ul>
			</nav>


			<!-- //section -->
			<section class="myPage_selection">
				<!-- //section-header -->
				<header class="myPage_header">
					<h3>포인트</h3>
					<p>나의 포인트 사용과 적립 내역입니다.</p>
					<ul>
						<li>드라이버 포인트 내역은 주행 완료 후 지급된 포인트입니다.</li>
						<li>유저 포인트 내역은 다른 드라이버의 차량을 이용 후 사용한 포인트입니다.</li>
						<li>그 외에도 이용수칙을 위반한 경우 차감 또는 추가 지급 될 수 있습니다.</li>
					</ul>
				</header>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>포인트 내역</h4>
					<div class="myPage_pointCarge">
						<p class="cargeMoney">충전금액*</p>
						<input type="text">
						<div class="cargeEx">
							<p>1원 = 1Point입니다.</p>
							<p>포인트는 5,000P부터 1,000P 단위로 충전이 가능합니다.</p>
						</div>
						<p>무통장입금 계좌번호</p>
						<input type="text" placeholder="우리은행:1002-234-000087">
						<p>입금자명</p>
						<input type="text" placeholder="ex)입금자분의 성함을 적어주세요">
						<button class="myPage_btnB">포인트 충전하기</button>
					</div>
				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>


</html>

