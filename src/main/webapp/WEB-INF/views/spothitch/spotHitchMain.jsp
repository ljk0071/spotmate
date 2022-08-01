<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<link rel="stylesheet" href="/assets/css/spotHitchMain.css">
</head>
<body>
<div id="wrap">
<div class="header">header</div>
<div class="contents clearfix">
<!-- 	<div> -->
<!-- 	hi hello -->
<!-- 	</div> -->
	<div class="top">
		<span class="more">실시간 탑승 가능<br>
		SPOT HITCHHIKE</span>
		<span class="more2">현재 나의 위치에서 가까운 드라이버를 찾아<br>
		출발지부터 목적지까지 편하게 이동해보세요.</span>
	</div>
	<div class="mid">
		<div id="map"></div>
		<div class="info">
			<ul class="infoTop">
				<li><span>탑승 가능 차량리스트</span></li>
			</ul>
			<div class="searchbox">
				<input class="place" type="text" name="start" value="" placeholder="출발지">
				<input class="place" type="text" name="start" value="" placeholder="도착지">
				<input class="person "type="text" name="start" value="" placeholder="인원수">
				<button>검색</button>
			</div>
			<div class="searchboxDeep">
				<input type="checkbox" value="femaleDriver">여성 드라이버
				<input type="checkbox" checked="checked" value="pet">반려동물 탑승 가능
				<button>deep</button>
			</div>
			<div class="driverList">
				<div class="start">
					<p>현재위치</p>
					<p>대방역 1호선 2번 출구</p>
				</div>
				<div class="end">
					<p>목적지</p>
					<p>NAVER 본사</p>
				</div>
				<div class="num">
					<span>탑승 인원수</span><span>1명</span>
				</div>
				<div class="usePoint">
					<span>총 결제 포인트</span><span>3,000포인트</span>
				</div>
				<button class="carPos">
					차 위치
				</button>
				<a href="./hitchdeep">
					<button class="detail">
						상세 조건
					</button>
				</a>
				<button class="rideReq">
					탑승 요청
				</button>
			</div>
		</div>
	</div>
	<div class="banner">
	</div>

</div>
<div class="footer">footer</div>
</div>
</body>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // 지도의 중심좌표
    level: 2 // 지도의 확대 레벨 
};
var map = new kakao.maps.Map(mapContainer, mapOption);
var lat, lon = 0;
var temp = {};
var options = {
	enableHighAccuracy: true,
	timeout: 5000,
	maximumAge: 0
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
		$.ajax ({
		url : "${pageContext.request.contextPath}/now",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(temp),
			dataType : "json",
			success : function(result){
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

if(navigator.geolocation) {
		var na = navigator.geolocation.watchPosition(success,error,options);
	}
var marker;
var flag=false;
function displayMarker(locPosition) {
	if (flag) {
		marker.setMap(null);
	}
	var imageSrc = './assets/images/logo.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(48, 62), // 마커이미지의 크기입니다
		imageOption = {offset: new kakao.maps.Point(27, 69)};
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
	// 마커를 생성합니다
	marker = new kakao.maps.Marker({  
		position: locPosition,
	    image: markerImage
	});
	marker.setMap(map);
	
	//마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
	var iwContent = '<div class="iw" style="width:250px; padding:5px;">목적지</div> <div style="padding:5px;">NAVER 본사</div> <div style="padding:5px;">드라이버 &nbsp; spotmate12 님</div> <div style="padding:5px;">현재탑승 가능 인원 수 1명</div> <a href="./hitchdeep"><button style="width: 120px; height: 40px; margin: 25px 0px 25px 60px;">상세 보기</button></a>',
	iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    content : iwContent,
	    removable : iwRemoveable
	});

	// 마커에 클릭이벤트를 등록합니다
	kakao.maps.event.addListener(marker, 'click', function() {
	      // 마커 위에 인포윈도우를 표시합니다
	      infowindow.open(map, marker); 
	      $.ajax ({
	  		url : "${pageContext.request.contextPath}/now",		
	  		type : "post",
	  		contentType : "application/json",
	  		data : JSON.stringify(temp),
	  			dataType : "json",
	  			success : function(result){
	  			console.log("good")
	  			},
	  			error : function(XHR, status, error) {
	  				console.error(status + " : " + error);
	  			}
	  		});
	});
	
	flag=true;
	map.setCenter(locPosition);
}

</script>
</html>