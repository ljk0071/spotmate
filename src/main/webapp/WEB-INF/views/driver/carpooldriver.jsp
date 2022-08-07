<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
<title>Insert title here</title>
<script src="/assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<script src="/assets/jqueryUi/jquery-ui.js"></script>
<!-- <script src="/assets/MultiDatesPicker/jquery-ui.multidatespicker.js"></script> -->
<link rel="stylesheet" href="/assets/jqueryUi/jquery-ui.min.css">
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div class="inner">
	<div class="top">
		<div><span>SPOT CARPOOL</span>
		<p>이동 경로 등록하기</p>
		</div>
		<p>드라이버님이 이동하시는 경로를 등록해주시면<br>
		같이 이동을 원하는 유저가 카풀을 신청 할 예정입니다.</p>
		
		<span>*필수 입력사항</span>
	</div>
	<div class="mid">
		<form action="" method="get">
			<p>등록하신 날짜와 출발시간입니다.</p>
			<div class="f-sec">
				<input type="text" id="datepicker" class="s-date" placeholder="2022.07.20 - 2022.08.20" autocomplete="off">
				<input type="text" class="s-time" placeholder="아침 8:00">
			</div>
			<div class="s-sec">
				<p>드라이버님의 이동 경로를 입력해주세요*</p>
				
				<div id="input-div">
				<img src="assets/images/map_line_02.png">
				<table>
					<tr>
						<td><input type="text" value="" id="s-addr" class="s-addr" placeholder="출발지를 입력하세요" onclick="ssp()"><img class="ae-btn" src="assets/images/arrows_exchange.png"></td>
						<td><input type="hidden" value="" class="s-lat"></td>
						<td><input type="hidden" value="" class="s-lng"></td>
					</tr>
					<tr>
					 	<td><input type="text" value="" id="e-addr" class="e-addr" placeholder="도착지를 입력하세요" onclick="sep()"><img class="ic-btn" src="assets/images/ico_close.png"></td>
						<td><input type="hidden" value="" class="e-lat"></td>
						<td><input type="hidden" value="" class="e-lng"></td>
				</table>
				</div>
			<span id="finish" onclick="setMap()">설정완료</span>
			</div>
			<div id="map"></div>
			<div class="t-sec">
				<p>탑승 가능한 인원 수*</p>
				<input type="number" min=1 placeholder="1명"> 
				<p>차량 상세조건</p>
				<table class="deepsel">
					<tr>
						<td><input type="checkbox" id="smoke" name="smoke" value="nosmoke"><label for="smoke"></label>비흡연자</td>
						<td><input class="td2" type="checkbox" id="phonecharge" name="phonecharge" value="phonecharge"><label for="phonecharge"></label>핸드폰 충전기 이용 가능</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="wifi" id="wifi" value="wifi"><label for="wifi"></label>차량 와이파이 이용 가능</td>
						<td><input class="td2" type="checkbox" id="silence" name="silence" value="silence"><label for="silence"></label>조용하게 가는 것을 선호</td>
					</tr>
					<tr>
						<td><input type="checkbox" id="drivergender" name="drivergender" value="female"><label for="drivergender"></label>여성 드라이버</td>
						<td><input class="td2" type="checkbox" id="pet" name="pet" value="pet"><label for="pet"></label>반려동물 탑승 가능</td>
					</tr>
				</table>
				<p>드라이버님을 소개해주세요*</p>
				<textarea class="driverintroduce" name="introduce" placeholder="하고싶은 말을 적어주세요!"></textarea>
			</div>
		<button type="submit">등록하기</button>
		</form>
		
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("input:checkbox").on('click', function() {
	      if ( $(this).prop('checked') ) {
	        $(this).parent().addClass("selected");
	      } else {
	        $(this).parent().removeClass("selected");
	      }
	    });
	});

function setMap() {
	if($(".s-lat").val() == "" || $(".s-lng").val() == "" || $(".e-lat").val() == "" || $(".e-lng").val() == "") {
		alert("검색 후에 시도해주세요");
		return;
	}
	$("#map").attr("style","width:720px; height: 500px; margin:0px 0px 80px 0px;");
	var latlng = "";
	var slat = $(".s-lat").val();
	var slng = $(".s-lng").val();
	var elat = $(".e-lat").val();
	var elng = $(".e-lng").val();
	$.ajax({
		
		url : "${pageContext.request.contextPath}/setPath",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify({slat: slat,
			slng: slng,
			elat: elat,
			elng: elng}),

		dataType : "json",
		success : function(result){
			console.log(result)
			$(".fare").remove();
			document.getElementById("input-div").innerHTML += "<div class='fare'>1인당 적립 포인트:"+result.totalFare+"</div>";
			var bounds = new kakao.maps.LatLngBounds();
			bounds.extend(new kakao.maps.LatLng(slat, slng));
			bounds.extend(new kakao.maps.LatLng(elat, elng));
			latlng = result.latlng;
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = { 
			    center: new kakao.maps.LatLng(slat, slng), // 지도의 중심좌표
			    level: 5 // 지도의 확대 레벨
			};  
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			map.setBounds(bounds);
			var marker = new kakao.maps.Marker({
				position: new kakao.maps.LatLng(slat, slng),
				map: map
			})
			
			//선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
			//테스트 결과 json 파싱해서 for문 반복으로 넣어주면 될듯
			var linePath = [
				new kakao.maps.LatLng(slat, slng),
				];
			for (var i=0; i<latlng.length; i++) {
					if (i == latlng.length) {
						linePath.push(new kakao.maps.LatLng(elat,elng));
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
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
}
$(".ae-btn").on("click", function() {
	var saddr = $(".s-addr").val();
	var slat = $(".s-lat").val();
	var slng = $(".s-lng").val();
	var eaddr = $(".e-addr").val();
	var elat = $(".e-lat").val();
	var elng = $(".e-lng").val();
	
	$(".s-addr").val(eaddr);
	$(".s-lat").val(elat);
	$(".s-lng").val(elng);
	$(".e-addr").val(saddr);
	$(".e-lat").val(slat);
	$(".e-lng").val(slng);
})
$(".ic-btn").on("click", function() {
	$(".s-addr").val("");
	$(".e-addr").val("");
})
function ssp() {
	window.open("ssp", "child", "width=1350, height=820, left=300, top=100");
}
function sep() {
	window.open("sep", "child", "width=1350, height=820, left=300, top=100");
}
</script>
</html>