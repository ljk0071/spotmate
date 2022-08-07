<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>


<title>myCouponBuy</title>

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
				<p><a href="./myPointCarge">포인트 충전 ></a></p>
				<span>1,0000P </span> <img src="/assets/images/ico_point.png">
			</div>
			<div class="box3">
				<p><a href="./myCouponMain">쿠폰 사용 ></a></p>
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
					<h3>쿠폰</h3>
					<p>원하시는 금액의 쿠폰을 선택해주세요.</p>
					<ul>
						<li>쿠폰</li>
						<li>유저 포인트 내역은 다른 드라이버의 차량을 이용 후 사용한 포인트입니다.</li>
						<li>그 외에도 이용수칙을 위반한 경우 차감 또는 추가 지급 될 수 있습니다.</li>
					</ul>
				</header>

				<!-- //section-article -->
				<article class="myPage_article">

					<div class="inputBox">
						<form>
							<input type="text" value="" placeholder="금액설정"> <span> - </span> <input type="text" value="" placeholder="금액설정">

							<!-- <label for="lecture">유형</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>유형</option>
								<option value="1">주유권</option>

							</select>

							<!-- <label for="lecture">참여주체</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>브랜드</option>
								<option value="1">S-OIL</option>
								<option value="2">GS-칼텍스</option>
							</select>
							<div class="btns">
								<button type="button" class="myPage_btnB">조회하기</button>
								<a href="./myPointCarge"><button type="button" class="myPage_btnY">포인트 충전하기</button></a>
							</div>
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>모바일 주유권</h4>
					<div class="myCoupon">

						<a href="./myCouponUse"><img src="/assets/images/soil_3.png"></a> <a href="./myCouponUse"><img src="/assets/images/soil_5.png"></a> <a href="./myCouponUse"><img
							src="/assets/images/soil_10.png"></a> <a href="./myCouponUse"><img src="/assets/images/soil_30.png"></a> <a href="./myCouponUse"><img src="/assets/images/soil_50.png"></a> <a
							href="./myCouponUse"><img src="/assets/images/soil_100.png"></a> <a href="./myCouponUse"><img src="/assets/images/gs_3.png"></a> <a href="./myCouponUse"><img
							src="/assets/images/gs_5.png"></a> <a href="./myCouponUse"><img src="/assets/images/gs_10.png"></a> <a href="./myCouponUse"><img src="/assets/images/gs_30.png"></a> <a
							href="./myCouponUse"><img src="/assets/images/gs_50.png"></a> <a href="./myCouponUse"><img src="/assets/images/gs_100.png"></a>
					</div>
				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>


</html>

