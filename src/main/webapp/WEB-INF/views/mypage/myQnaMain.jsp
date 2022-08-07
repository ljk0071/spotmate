<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>


<title>myQnaMain</title>

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
					<h3>문의내역</h3>

					<ul>
						<li>서비스에 대한 문의를 남기는 공간입니다.</li>
						<li>해당 게시판의 성격과 다른 글은 사전 동의 없이 담당 게시판으로 이동될 수 있습니다.</li>
						<li>자주하는 질문(FAQ)는 NOTICE 게시판을 확인해주세요.</li>
					</ul>
				</header>

				<!-- //section-article -->
				<article class="myPage_article">

					<div class="inputBox">
						<form>
							<input type="date" value="2022-08-02"> <span> ~ </span> <input type="date" value="2022-08-02">

							<!-- <label for="lecture">유형</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>유형</option>
								<option value="1">카풀정기권</option>
								<option value="2">히치하이크</option>
								<option value="3">메이트</option>
								<option value="4">카풀1회성</option>
								<option value="5"><span style="color: red">패널티</span></option>
							</select>

							<!-- <label for="lecture">참여주체</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>상태</option>
								<option value="1">답변예정</option>
								<option value="2">답변완료</option>
							</select>

							<button type="button" class="myPage_btnB">조회하기</button>
							<a href="./myPointCarge"><button type="button" class="myPage_btnY">1:1문의하기 ></button></a>
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4></h4>
					<table>

						<thead>
							<tr>
								<th>번호</th>
								<th>유형</th>
								<th>날짜</th>
								<th>제목</th>
								<th>답변상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="T_bottomline" colspan=5 rowspan=5>작성된 문의내역이 없습니다.</td>
							</tr>

						</tbody>

					</table>

				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>


</html>