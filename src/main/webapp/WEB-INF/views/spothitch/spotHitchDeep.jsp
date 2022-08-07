<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스팟 히치하이크 상세</title>
<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<div class="driver-top-banner clear">
		<div class="driver-top-banner-inside">
		<div class="more-box">
			<p class="more">실시간 탑승 가능</p>
			<p class="more3">SPOT HITCHHIKE</p>
		</div>
			<span class="more2">현재 나의 위치에서 가까운 드라이버를 찾아<br> 출발지부터
				목적지까지 편하게 이동해보세요.
			</span>
		</div>
	</div>
	<div class="inner clear">
		<div class="hitch-deep-infoTop clear">
			<div class="markImg"></div>
			<span>드라이버 spotmate 12 님</span> <a href="#">탑승 요청</a>
		</div>
		<div class="data">
			<table>
				<tr>
					<td class="waypoint">경유지</td>
					<td class="tname">강남역 2번 출구</td>
					<td class="destination">목적지</td>
					<td class="tname">대방역 1호선 2번 출구</td>
				</tr>
				<tr>
					<td class="waypoint">상세조건</td>
					<td colspan="3" class="tname">여성드라이버, 반려동물 탑승가능, 차량 와이파이 이용 가능</td>
				</tr>
				<tr>
					<td class="waypoint">탑승후기</td>
					<td class="tname">4.5</td>
					<td class="destination">탑승 시 사용 포인트</td>
					<td class="tname">3,000Point</td>
				</tr>
				<tr>
					<td class="waypoint">요청사항</td>
					<td colspan="3" class="tname">경유지에서만 탑승 가능합니다</td>
				</tr>
			</table>
		</div>
		<div id="hitch-deep-map"></div>
		<a class="back" href="/spotHitchhike">목록보기</a>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
<script>
	var mapContainer = document.getElementById('hitch-deep-map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // 지도의 중심좌표
		level : 2
	// 지도의 확대 레벨 
	};
	var map = new kakao.maps.Map(mapContainer, mapOption);
	var lat, lon = 0;
	var temp = {};
	var options = {
		enableHighAccuracy : true,
		timeout : 5000,
		maximumAge : 0
	};
	function success(position) {
		lat = position.coords.latitude, // 위도
		lon = position.coords.longitude; // 경도
		var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		var mVo = {};
		mVo.lat = lat;
		mVo.lon = lon;
		if (mVo != temp) {
			temp = mVo;
			$.ajax({
				url : "${pageContext.request.contextPath}/now",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(temp),
				dataType : "json",
				success : function(result) {
					console.log("good")
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
		displayMarker(locPosition);
	};
	function error(err) {
		console.log(err);
	};

	if (navigator.geolocation) {
		var na = navigator.geolocation.watchPosition(success, error, options);
	}
	var marker;
	var flag = false;
	function displayMarker(locPosition) {
		if (flag) {
			marker.setMap(null);
		}
		var imageSrc = './assets/images/common/android-icon-36x36.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(36, 36), // 마커이미지의 크기입니다
		imageOption = {
			offset : new kakao.maps.Point(27, 69)
		};
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
				imageOption)
		// 마커를 생성합니다
		marker = new kakao.maps.Marker({
			position : locPosition,
			image : markerImage
		});
		marker.setMap(map);
		flag = true;
		map.setCenter(locPosition);
	}
</script>
</html>