<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div data-start="${totalInfo.start}" data-end0="${totalInfo.end0}" data-end1="${totalInfo.end1}" data-latlng="${totalInfo.latlng}" id="map" style="width:1440px;height:700px;"></div>
</body>
<script>
//경로 띄워주는 로직
	var latlng = $("#map").data("latlng");
	var start = $("#map").data("start");
	var end0 = $("#map").data("end0");
	var end1 = $("#map").data("end1");
	console.log(latlng);
	console.log(end0);
	console.log(end1);
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(start[1],start[0]), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	
	//선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	//테스트 결과 json 파싱해서 for문 반복으로 넣어주면 될듯
	var linePath = [
		new kakao.maps.LatLng(start[1], start[0]),
		];
	for (var i=0; i<latlng.length; i++) {
			if (i == latlng.length) {
				linePath.push(new kakao.maps.LatLng(end0[1],end0[0]));
				break;
			}
			linePath.push(new kakao.maps.LatLng(latlng[i+1],latlng[i]),);
			i++;
		};
	
	//지도에 표시할 선을 생성합니다
	var polyline = new kakao.maps.Polyline({
		path: linePath, // 선을 구성하는 좌표배열 입니다
		strokeWeight: 5, // 선의 두께 입니다
		strokeColor: '#4454a1', // 선의 색깔입니다
		strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		strokeStyle: 'solid' // 선의 스타일입니다
	});
	
	//지도에 선을 표시합니다 
	polyline.setMap(map);  
</script>
</html>