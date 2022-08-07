<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>


<title>myPointRefundMain</title>

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
					<h3>환불내역</h3>
					<p>포인트 환불 내역입니다.</p>
					<ul>
						<li>드라이버 포인트 내역은 주행 완료 후 지급된 포인트입니다.</li>
						<li>유저 포인트 내역은 다른 드라이버의 차량을 이용 후 사용한 포인트입니다.</li>
						<li>그 외에도 이용수칙을 위반한 경우 차감 또는 추가 지급 될 수 있습니다.</li>
					</ul>
				</header>

				<!-- //section-article -->
				<article class="myPage_article">

					<div class="inputBox">
						<form>
							<input type="date" value="2022-08-02"> <span> - </span> <input type="date" value="2022-08-02">

							<!-- <label for="lecture">유형</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>유형</option>
								<option value="1">카풀정기권</option>
								<option value="2">히치하이크</option>
								<option value="3">메이트</option>
								<option value="4">카풀1회성</option>
							</select>

							<!-- <label for="lecture">참여주체</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>처리상태</option>
								<option value="1">환불대기</option>
								<option value="2">환불완료</option>
							</select>
							<div class="btns">
								<button type="button" class="myPage_btnB">조회하기</button>
								<a href="./myPointRefundForm"><button type="button" class="myPage_btnY">환불 신청하기</button></a>
							</div>
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>환불 내역</h4>
					<table class="RefundAsk">
						<thead>
							<tr>
								<th>번호</th>
								<th>유형</th>
								<th>날짜</th>
								<th>입금받으실 계좌번호</th>
								<th>처리상태</th>
								<th>포인트</th>
								<th>문의</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불완료</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
							<tr>
								<td>2</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불대기</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
							<tr>
								<td>3</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불완료</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
							<tr>
								<td>4</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불대기</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
							<tr>
								<td>5</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불대기</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
							<tr>
								<td>6</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불대기</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
							<tr>
								<td>7</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불대기</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
							<tr>
								<td>8</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불대기</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
							<tr>
								<td>9</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불대기</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
							<tr>
								<td>10</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>카카오뱅크 1002-***-222256</td>
								<td>환불대기</td>
								<td>3,000P</td>
								<td><a class="myPage_RefundAsk"><span>문의</span></a></td>
							</tr>
						</tbody>
					</table>
					<div class="paging">
						<ul>
							<li><a href=""> <img class="myPage_PagePicto" src="/assets/images/chevron-double-left.png">
							</a></li>

							<li><a href=""> <img class="myPage_PagePicto" src="/assets/images/chevron-left.png">
							</a></li>

							<li><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">4</a></li>
							<li class="active"><a href="">5</a></li>
							<li><a href="">6</a></li>
							<li><a href="">7</a></li>
							<li><a href="">8</a></li>
							<li><a href="">9</a></li>
							<li><a href="">10</a></li>

							<li><a href=""> <img class="myPage_PagePicto" src="/assets/images/chevron-right.png">
							</a></li>

							<li><a href=""> <img class="myPage_PagePicto" src="/assets/images/chevron-double-right.png">
							</a></li>
						</ul>
					</div>
				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>


</html>

