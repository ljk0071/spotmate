<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<!--     <meta http-equiv='refresh' content='1;'> -->

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>

<style>
	#map { 
		margin: 0px auto;
	} 
</style>
    <title>실시간 위치 나타내기</title>
    
</head>
<body>
<div id="map" style="width:1440px;height:700px;"></div>

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
	var locPosition = new kakao.maps.LatLng(lat, lon);
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
	flag=true;
	map.setCenter(locPosition);
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


</script>
</html>