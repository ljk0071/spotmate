<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>


<title>myDriverMain2</title>

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
				<p>Ryeo-kyoung,kim님</p>
				<span>Reviews</span><span><img src="/assets/images/ico_star.png">4.3</span>
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
					<h3>드라이버 정보</h3>
					<span style="font-weight: bold">드라이버님이 등록해주신 차량 정보와 상세 조건입니다.</span>
					<ul>
						<li>현재 등록되어 있는 드라이버님과 차량의 정보입니다.</li>
						<li>수정사항이 있으시면 아래의 내용을 수정하실 수 있습니다.</li>
					</ul>
				</header>


				<article class="myPage_article2">
					<h4>드라이버/차량정보</h4>
					<form>
						<table>
							<div class="DriverEdit0">
								<h5 width="700px">차량정보</h5>
								<a class="smallbtn" type="button" href="#">사진변경</a> <br> <img align="left" class="car_pic" alt="차량사진"
									src="https://images.unsplash.com/photo-1537984822441-cff330075342?ixlib=rb-1.2.1&amp;ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&amp;auto=format&amp;fit=crop&amp;w=774&amp;q=80"
									width="782px" height="272px">
							</div>
						</table>

						<br> <br>

						<div class="DL_info">

							<br>
							<!-- Driver License -->
							<table>
								<tr align="left">
									<td><label for="username">차량등록번호*</label></td>
									<td><input id="username" placeholder="486161684" type="text"></td>

								</tr>

								<tr align="left">
									<td><label for="usernum">차량모델명*</label></td>
									<td><input id="usernum" placeholder="테슬라 모델 3" type="text"></td>
								</tr>
								<tr align="left">
									<td><label for="dl">차량번호*</label></td>
									<td><input id="dl" placeholder="777가7777" type="text"></td>
								</tr>
								<tr align="left">
									<td><label for="dl_Type">차량색상*</label></td>
									<td><input id="dl_Type" placeholder="화이트" type="text" value=""></td>
								</tr>
								<tr align="left">
									<td><label for="dl_Type">차량색상*</label></td>
									<td><input id="dl_Type" placeholder="3" type="text" value=""></td>
								</tr>

							</table>
						</div>
						<br> <br>

						<div class="DL_info">

							<h5>면허증 정보 입력*</h5>
							<!-- Driver License -->
							<table>
								<tr align="left">
									<td><label for="username">이름*</label></td>
									<td><input id="username" placeholder="홍길동" type="text"></td>

								</tr>

								<tr align="left">
									<td><label for="usernum">생년월일*</label></td>
									<td><input id="usernum" placeholder="19900805" type="text"></td>

								</tr>
								<tr align="left">
									<td><label for="dl">면허등록번호*</label></td>
									<td><input id="dl" placeholder="면허등록번호입력" type="text"></td>
								</tr>
								<tr align="left">
									<td><label for="dl_Type">종류*</label></td>
									<td><input id="dl_Type" placeholder="대형 1종" type="text" value=""></td>
								</tr>

							</table>
						</div>


						<br> <br>

						<div class="DC_etc">
							<h5>차량 상세조건</h5>
							<table>
								<!-- input type="radio" name="gender" id="male" value="남자"  -->
								<tr align="left">
									<td><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type"> <label for="nonsmoker"> 비흡연자</label></td>
									<td><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type" checked="checked"> <label for="WD"> 여성드라이버</label></td>
								</tr>
								<tr align="left">
									<td><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type"> <label for="pet"> 반려동물 탑승가능</label></td>
									<td><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type"> <label for="cell_charger">핸드폰 충전기 보유</label></td>
								</tr>
								<tr align="left">
									<td><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type"><label for="pet"> 트렁크 사용 가능여부</label></td>
								</tr>

								<!-- 시간되면 드라이버가 체크박스 추가하는 방향으로 만들어보기  -->
							</table>

						</div>

						<br> <br>

						<table>

							<h5>드라이버님을 소개해주세요*</h5>

							<div class="memo">
								<textarea placeholder="  ex)약속 장소에는 출발 5분전에 나와주시면 좋겠습니다."></textarea>

								<a type="button" href="./myDriverMain" target="self" alt="등록하기" class="DForm_enrollbtn0"> <span>등록하기</span></a>

							</div>
						</table>
	</div>

	</form>
	</div>


	</div>
	</article>


	</section>

	</main>



	<!-- //banner & footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>


</html>