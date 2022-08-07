<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

<title>스팟 카풀 상세</title>

</head>


<body>

<!-- 	<div id="wrap"> -->

		<!-- header-->
		<c:import url="../includes/header.jsp"></c:import>
		<!-- //header-->



		<div class="content-head">
		<div class="clear" style="width:1920px; margin:0px auto;">
			<div class="mate-deep-banner-l-sec">
			<span>같이 타고 가요</span><p>FIND YOUR MATE</p>
		</div> <span class="carpool-MainText2"> 이동하는 경로가 비슷한 드라이버를 찾아 <br> 출발지부터 목적지까지 편하게 이동해보세요.
			</span>
		</div>
		</div>


		<div class="carpoolDeep-aside">
			<div class="aside">
				<form class="confirmForm">
					출발지<br> <input class="confirm" type="text" name="departure" value="대방역 1호선 2번 출구"> 목적지<br> <input class="confirm" type="text" name="destination" value="NAVER 본사"> 탑승 인원
					수<br> <input class="confirm" type="text" name="number" value="1명"> 탑승 시간<br> <input class="confirm" type="text" name="startTime" value="오전 08:00"> 처음 탑승일<br> <input
						class="confirm" type="text" name="startDay" value="2022.07.25.월요일"> 마지막 탑승일<br> <input class="confirm" type="text" name="endDay" value="2022.08.25.화요일">

				</form>

				<div class="point">
					총 결제 포인트<br> <input class="pointConfirm" type="text" name="point" value="3,000 포인트"><br> <br> <span class="pointText">*포인트는 선결제되며,<br>도착시 드라이버에게 지급됩니다.
					</span>

				</div>

				<button class="rideButton">탑승하기</button>
			</div>
		</div>


		<div id="carpoolcontent" class="inner clear">

			<div class="carpool-top">

				<div class="carpooltop-text1">
					<p class="carpooltop-text2">이동 경로 안내</p>

					<span class="pathConfirm">출발지 &nbsp;&nbsp;
					<input class="path-confirm" type="text" name="departure" value="대방역 1호선 2번 출구">
					 </span>
					 <span class="pathConfirm">도착지 &nbsp;&nbsp; 
					 <input class="path-confirm" type="text" name="destination" value="NAVER 본사">
					 </span>
				

				</div>



				<img class="pathPicto" src="/assets/images/map_line_02.png"> 
				<span class="pathTime">도착지까지 예상 소요 시간 23분, 21km</span>


			</div>




			<div class="carpool-top2">
				<p class="authDriverInfo">
					SPOTMATE12 드라이버님의 차량 정보
					<button class="qnaButton">
						<img class="qnaPicto" src="/assets/images/ico_talk.png"> 문의하기
					</button>
				</p>

		
			
				<div class="carpool-picture">
					<div class="carpool-picture-image">
						<a href=""> <img src="/assets/images/car_tesla.png" alt="hover">
							<h3>
								<span> TESLA Model 3</span>
							</h3>
						</a>
					</div>
				</div>





				<div class="driverIntoduce">
					<button class="self-Check">
						<img class="self-checkPicto" src="/assets/images/ico_save.png"> &nbsp본인인증 완료
					</button>
					드라이버 소개
				</div>

				<div class="introduceText">
					안녕하세요. 저는 조용하고 안전하게 가는 걸 선호합니다.<br> 
					약속 장소에는 출발 5분 전에 나와주시면 좋겠습니다.<br> 
					차량에 탑승하신 후에는 비치되어 있는 손 소독제를 꼭 사용 부탁드립니다:)
				

				</div>


				<div>
					<p class="driverInfo">드라이버 차량 정보</p>


					<table>
						<tr>
							<td><img class="infoPicto" src="/assets/images/danger.png"> 비흡연자</td>

							<td><img class="infoPicto" src="/assets/images/boy.png"> 여성 드라이버</td>
						</tr>
						<tr>
							<td><img class="infoPicto" src="/assets/images/paws01.png"> 반려동물</td>

							<td><img class="infoPicto" src="/assets/images/ico_plug.png"> 충전기 사용 가능</td>
						</tr>
						<tr>
							<td><img class="infoPicto" src="/assets/images/ico_toolbox.png"> 트렁크 사용 가능</td>

							<td></td>
						</tr>
					</table>


				</div>
			</div>

		</div>

			<!-- 리뷰배너 -->
			<p class="review">Reviews ★ 4.5</p>
			
					
			<div class="review_banner_wrapper">
				<div class="inner">
					<div class="review_banner swiper-container">
						<ul class="swiper-wrapper">
							<li class="swiper-slide"><a href="#">
									<dl class="review_box">
										<dt class="review_top">
											<p class="writer_img">
												<img src="">
											</p>
											<p class="writer_info">
												<strong class="name">John Doberman</strong> <em class="date">July 31 2022</em>
											</p>
										</dt>
										<dd class="review_dec">
											Lorem ipsum dolor sit amet, consectetur <br /> adipiseing elit, sed do eiusmod tempor incididunt <br /> ut labore et dolore magna aliqua.
										</dd>
									</dl>
							</a></li>
							<li class="swiper-slide"><a href="#">
									<dl class="review_box">
										<dt class="review_top">
											<p class="writer_img">
												<img src="">
											</p>
											<p class="writer_info">
												<strong class="name">John Doberman</strong> <em class="date">July 31 2022</em>
											</p>
										</dt>
										<dd class="review_dec">
											Lorem ipsum dolor sit amet, consectetur <br /> adipiseing elit, sed do eiusmod tempor incididunt <br /> ut labore et dolore magna aliqua.
										</dd>
									</dl>
							</a></li>
							<li class="swiper-slide"><a href="#">
									<dl class="review_box">
										<dt class="review_top">
											<p class="writer_img">
												<img src="">
											</p>
											<p class="writer_info">
												<strong class="name">John Doberman</strong> <em class="date">July 31 2022</em>
											</p>
										</dt>
										<dd class="review_dec">
											Lorem ipsum dolor sit amet, consectetur <br /> adipiseing elit, sed do eiusmod tempor incididunt <br /> ut labore et dolore magna aliqua.
										</dd>
									</dl>
							</a></li>
							<li class="swiper-slide"><a href="#">
									<dl class="review_box">
										<dt class="review_top">
											<p class="writer_img">
												<img src="">
											</p>
											<p class="writer_info">
												<!-- 마크업뜻 : strong 강조(dt 대신) -->
												<strong class="name">John Doberman</strong>
												<!-- 마크업뜻 : em 서브강조(dd 대신) -->
												<em class="date">July 31 2022</em>
											</p>
										</dt>
										<dd class="review_dec">
											Lorem ipsum dolor sit amet, consectetur <br /> adipiseing elit, sed do eiusmod tempor incididunt <br /> ut labore et dolore magna aliqua.
										</dd>
									</dl>
							</a></li>
						</ul>
					</div>
					<div class="review_banner_btns">
						<a href="javascript:void(0);" ><img class="swiper-button-prev" src="/assets/images/common/ico_arrow_lft.png"></a>
						 <a href="javascript:void(0);"><img class="swiper-button-next" src="/assets/images/common/ico_arrow_rit.png"></a>
					</div>
				</div>
			</div>
			<!-- //리뷰배너 -->


 
			<div class="carpool-section4">

				<h6 class="recommend">차량 추천 리스트</h6>

				<div class="recommendList">
					<ol>
						<li>
							<p class="recommend-Driver-list">드라이버 : spotmate1234</p>
						</li>
						<li>
							<p class="recommend-start-list">출발일시:2022-07-20</p>
						</li>
						<li>
							<p class="recommend-point-list">소요 포인트 3,000P</p>
							<button>
							<img class="recommend-List-Picto" src="/assets/images/external.png">
							<span class="choose-text">선택</span></button>
						</li>
					</ol>
					
					<ol>
						<li>
							<p class="recommend-Driver-list">드라이버 : spotmate1234</p>
						</li>
						<li>
							<p class="recommend-start-list">출발일시:2022-07-20</p>
						</li>
						<li>
							<p class="recommend-point-list">소요 포인트 3,000P</p>
							<button>
							<img class="recommend-List-Picto" src="/assets/images/external.png">
							<span class="choose-text">선택</span></button>
						</li>
					</ol>
					
					<ol>
						<li>
							<p class="recommend-Driver-list">드라이버 : spotmate1234</p>
						</li>
						<li>
							<p class="recommend-start-list">출발일시:2022-07-20</p>
						</li>
						<li>
							<p class="recommend-point-list">소요 포인트 3,000P</p>
							<button>
							<img class="recommend-List-Picto" src="/assets/images/external.png">
							<span class="choose-text">선택</span></button>
						</li>
					</ol>
					
					<ol>
						<li>
							<p class="recommend-Driver-list">드라이버 : spotmate1234</p>
						</li>
						<li>
							<p class="recommend-start-list">출발일시:2022-07-20</p>
						</li>
						<li>
							<p class="recommend-point-list">소요 포인트 3,000P</p>
							<button>
							<img class="recommend-List-Picto" src="/assets/images/external.png">
							<span class="choose-text">선택</span></button>
						</li>
					</ol>
				</div>

				
					<button class="recommend-button">추천 리스트 더보기 ></button>
					
			</div>
 



		
<!-- 	</div>	 -->

	
	<!-- footer-->
	<c:import url="../includes/footer.jsp"></c:import>
	<!-- //footer-->

</body>
<script>
	var swiperReview = new Swiper('.review_banner', {
		slidesPerView : 4,
		effect : 'slide',
		autoplay : {
			delay : 2000
		},
		spaceBetween : 20,
		loop : true,
		speed : 1000,
		navigation : {
			prevEl : '.review_banner_btns .swiper-button-prev',
			nextEl : '.review_banner_btns .swiper-button-next'
		}
	});
</script>


</html>