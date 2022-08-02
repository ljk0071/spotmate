<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="/assets/css/spotMateMain.css">
<link rel="stylesheet" href="/assets/css/spothitchdeep.css">
</head>
<body>
<div id="wrap">
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<div class="v88_9918"></div>
<div class="v88_9917">
		<span class="v88_9919">실시간 탑승 가능 SPOT HITCHIKE</span><span
			class="v88_9920">현재 나의 위치에서 가까운 드라이버를 찾아 출발지부터 목적지까지 편하게
			이동해보세요.</span>
		<div class="v88_10050"></div>
		<div class="name"></div>
		<span class="v88_10053">드라이버 spotmate 12 님</span>
		<div class="name"></div>
		<div class="v240_12366">
<!-- 			<div class="v88_10055"></div> -->
<!-- 			<div class="v240_12364"></div> -->
			<button class="v88_10056">탑승요청</button><button class="v240_12365">목록보기</button>
		</div>
		<div class="v88_10010"></div>
		<div class="v88_9990">
			<div class="v88_9991"></div>
			<div class="v88_9992"></div>
		</div>
		<table class="data" border=1>
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
<!-- 		<div class="v88_10057"></div> -->
<!-- 		<div class="v88_10063"></div> -->
<!-- 		<div class="v88_10060"></div> -->
<!-- 		<div class="v88_10061"></div> -->
<!-- 		<div class="v88_10064"></div> -->
<!-- 		<div class="v88_10062"></div> -->
<!-- 		<span class="v88_10065">강남역 2번출구</span><span class="v88_10067">대방역 -->
<!-- 			1호선 2번 출구</span><span class="v88_10072">3,000 Point</span><span -->
<!-- 			class="v88_10066">경유지</span><span class="v88_10069">상세조건</span><span -->
<!-- 			class="v88_10074">여성드라이버, 반려동물 탑승 가능, 차량 와이파이 이용 가능 </span><span -->
<!-- 			class="v88_10075">4.5</span><span class="v88_10070">탑승 후기</span><span -->
<!-- 			class="v88_10071">요청사항</span><span class="v88_10076">경유지에서만 탑승 -->
<!-- 			가능합니다.</span><span class="v88_10068">목적지</span><span class="v88_10073">탑승시 -->
<!-- 			사용 포인트</span> -->
		<div class="v240_12400">
			<div class="v240_12401">
				<div class="v240_12402"></div>
				<div class="v240_12403">
					<div class="v240_12404"></div>
				</div>
				<span class="v240_12405">BANNER</span>
			</div>
		</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>
</body>

<script>
	$(".v88_10056").on("click", function() {
		console.log("hi");
	}) 
		

</script>
</html>