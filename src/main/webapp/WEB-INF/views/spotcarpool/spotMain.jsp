<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

<title>스팟 카풀 메인</title>

</head>

<body>

<!-- 	<div id="wrap"> -->

		<!-- header-->
		<c:import url="../includes/header.jsp"></c:import>
		<!-- //header-->
		


		<!-- CONTENT -->

		<div id="spotContent" class="clear">
			<div class="spot-content-head">

				<span class="mainText1">
					누구나 쉽게, <br> 원하는 목적지로 이동
				</span>

				<span class="mainText2">
					이동하는 경로가 비슷한 드라이버를 찾아 <br> 출발지부터 목적지까지 편하게 이동해보세요.
				</span>

			</div>
			
			
			
			<div class="service1">
				<div class="service1_image">
					<a href="/spotCarpool""> <img src="/assets/images/picture1.png" alt="hover">
						<h3>
							<span> SPOT CARPOOL<br> 서비스란?
							</span>
						</h3>
					</a>
				</div>
			</div>
			
			<p class="carpooltext">
					‘스팟'에서 ‘스팟’으로 이동하는 <br> 드라이버와 유저를 매칭 해주는 카풀 서비스로 <br> 
					원하는 장소와 기간을 설정하여 등록할 수 있습니다.
				</p>
				
				<a href="/spotCarpool">
					<button class="usebutton1">
					<img class="usebuttonPicto" src="/assets/images/common/arrow-right.png">
					<p>이용하기</p>
					</button>
				</a>

					
			

			<div class="service2">
				<div class="service2_image">
					<a href="/spotHitchhike"> <img src="/assets/images/picture2.png" alt="hover">
						<h3>
							<span> SPOT HITCHHIKE <br>서비스란?
							</span>
						</h3>
					</a>
				</div>
			</div>

			<p class="hitchhiketext">
					드라이버가 이동 경로를 설정 후, 운행을 시작하면<br> 
					유저의 현재 위치 5Km 반경내에 있는 차량이 공유되어<br> 실시간으로 탑승을 요청 할 수 있는 서비스입니다.
				</p>

				<a href="/spotHitchhike">
					<button class="usebutton2">
					<img class="usebuttonPicto" src="/assets/images/common/arrow-right.png">
					<p>이용하기</p>
					</button>
				</a>

			
		</div>


		<!-- footer-->
		<c:import url="../includes/footer.jsp"></c:import>
		<!-- //footer-->

<!-- 	</div> -->



</body>
</html>