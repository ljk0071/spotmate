<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>


<title>myDriverForm</title>

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
					<h3>차량 등록하기</h3>
					<span style="font-weight: bold">유저님의 차량을 등록해 서비스를 이용하실 수 있습니다.</span>
					<ul>
						<li>드라이버 포인트 내역은 주행 완료 후 지급된 포인트입니다.</li>
						<li>유저 포인트 내역은 다른 드라이버의 차량을 이용 후 사용한 포인트입니다.</li>
						<li>그 외에도 이용수칙을 위반한 경우 차감 또는 추가 지급 될 수 있습니다.</li>
					</ul>
				</header>


				<article class="myPage_article2">
					<h4>드라이버 신청 등록하기</h4>
					<br>

					<div>

						<p class="require_info" style="color: blue">*필수 입력사항</p>
					</div>

					<div class="DriverenrollForm">
						<form>
							<div class="DL_info">

								<h5>면허증 정보 입력*</h5>
								<!-- Driver License -->
								<table>
									<tr align="left">
										<th><label for="username">이름*</label></th>
										<th><input id="username" placeholder="홍길동" type="text"></th>

									</tr>

									<tr align="left">
										<th><label for="usernum">생년월일*</label></th>
										<th><input id="usernum" placeholder="19900805" type="text"></th>
										<th><a class="smallbtn" type="button" href="#"><span>본인인증</span></a></th>
									</tr>
									<tr align="left">
										<th><label for="dl">면허등록번호*</label></th>
										<th><input id="dl" placeholder="면허등록번호입력" type="text"></th>
									</tr>
									<tr align="left">
										<th><label for="dl_Type">종류*</label></th>
										<th><input id="dl_Type" placeholder="대형 1종" type="text" value=""></th>
									</tr>

								</table>
							</div>

							<div class="DC_info">
								<h5>차량 정보 입력*</h5>
								<table>
									<tr align="left">
										<th><label for="carnum">차량등록번호*</label></th>
										<td><input id="carnum" placeholder="차량등록번호입력" type="text"></td>
										<td><a class="smallbtn" type="button" href="#"><span style="font-weight: bold">차량인증</span></a></td>
									</tr>
									<tr align="left">
										<th><label for="c_Model">차량모델명*</label>
										<th><input id="c_Model" placeholder="테슬라 모델3" type="text"> <input id="c_file" placeholder="파일명(첨부시 자동입력됨)" type="text"></th>
										<th><a class="smallbtn" type="button" href="#"><span>파일첨부</span></a></th>
									</tr>
									<tr align="left">
										<th><label for="c_num">차량번호*</label></th>
										<th><input id="c_num" placeholder="770가7777" type="text"></th>
									</tr>
									<tr align="left">
										<th><label for="c_color">차량색상*</label></th>
										<th><input id="c_color" placeholder="화이트" type="text"></th>
									</tr>
									<tr align="left">
										<th><label for="num_PA">탑승가능인원*</label></th>
										<th><input id="num_PA" placeholder="2" type="text"></th>
									</tr>
								</table>

							</div>


							<div class="DC_etc">
								<h5>차량 상세조건</h5>
								<table>
									<!-- input type="radio" name="gender" id="male" value="남자"  -->
									<tr align="left">
										<th><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type"> <label for="nonsmoker"> 비흡연자</label></th>
										<th><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type" checked="checked"> <label for="WD"> 여성드라이버</label></th>
									</tr>
									<tr align="left">
										<th><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type"> <label for="pet"> 반려동물 탑승가능</label></th>
										<th><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type"> <label for="cell_charger">핸드폰 충전기 보유</label></th>
									</tr>
									<tr align="left">
										<th><input type="checkbox" name="ch_type" id="Dformcheckbox" value="ch_type"><label for="pet"> 트렁크 사용 가능여부</label></th>
									</tr>

									<!-- 시간되면 드라이버가 체크박스 추가하는 방향으로 만들어보기  -->
								</table>


							</div>

							<br> <br>
							<h5>드라이버님을 소개해주세요*</h5>

							<div class="memo">
								<textarea align="left" placeholder="  ex)약속 장소에는 출발 5분전에 나와주시면 좋겠습니다."></textarea>

								<a type="button" href="./myDriverMain" target="self" alt="등록하기" class="DForm_enrollbtn0"> <span>등록하기</span></a>


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