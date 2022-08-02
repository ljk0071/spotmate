<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="/assets/css/spotMateMain.css">
<link rel="stylesheet" href="/assets/css/driverWriteForm.css">
</head>
<body>
<div id="wrap"  class="clearfix">
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div id="contents" class="clearfix">
	<div class="f1 clearfix">
		<img src="/assets/images/bluelogo.png">
		<span>SPOT CARPOOL 등록시<br>
		예상 적립 포인트는 5,000P입니다.</span>
		<ul>
			<li>도착지까지 예상 소요시간 23분, 21km</li>
			<li>입력해주신 SPOT CARPOOL 내용이 맞으시면 등록을 눌러주세요.</li>
		</ul>
	</div>
	<div class="s2 clearfix">
		<form>
			<p>등록하신 날짜와 출발시간입니다.</p>
			<div class="fset">
				<input type="text" class="sdate" placeholder="2022.07.20 - 2022.08.20">
				<input type="text" class="stime" placeholder="아침 8:00">
			</div>
			<div class="sset">
				<p>드라이버님의 이동 경로입니다.</p>
				<img src="assets/images/bluelogo.png">
				<input type="text" class="splace" placeholder="출발지를 입력하세요">
				<input type="text" placeholder="도착지를 입력하세요">
				<button><img src="assets/images/bluelogo.png"></button>
			</div>
			<div class="tset">
				<img src="/assets/images/topbanner.jpg">
				<p>탑승 가능한 인원 수</p>
				<input type="text" placeholder="1명"> 
				<p>차량 상세조건</p>
				<div class="deepsel">
					<table>
						<tr>
							<td><input type="checkbox" name="" value="nosmoke">비흡연자</td>
							<td><input class="td2" type="checkbox" name="" value="nosmoke">손소독제 보유</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="" value="nosmoke">차량 와이파이 이용 가능</td>
							<td><input class="td2" type="checkbox" name="" value="nosmoke">조용하게 가는 것을 선호</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="" value="nosmoke">여성 드라이버</td>
							<td><input class="td2" type="checkbox" name="" value="nosmoke">반려동물 탑승 가능</td>
						</tr>
						<tr>
							<td ><input type="checkbox" name="" value="nosmoke">핸드폰 충전기 이용 가능</td>
						</tr>
					</table>
				</div>
				<p>드라이버님을 소개해주세요</p>
				<textarea class="driverintroduce" placeholder="하고싶은 말을 적어주세요!"></textarea>
			</div>
		</form>
		<button>등록하기</button>
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>
</body>
</html>