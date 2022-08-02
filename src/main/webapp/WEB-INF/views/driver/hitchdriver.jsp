<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
<title>Insert title here</title>
<script type="text/javascript" src="/assets/js/jquery-1.12.4.js"></script>
<script src="/assets/jqueryUi/jquery-ui.js"></script>
<link rel="stylesheet" href="/assets/jqueryUi/jquery-ui.min.css">
<link rel="stylesheet" href="/assets/css/spotMateMain.css">
<link rel="stylesheet" href="/assets/css/carpooldriver.css">
</head>
<body>
<div id="wrap"  class="clearfix">
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div class="contents">
	<div class="top">
		<div><span>SPOT HITCHHIKE<br>
		이동 경로 등록하기</span>
		</div>
		<div><p>드라이버님이 이동하시는 경로를 등록해주시면<br>
		같이 이동을 원하는 유저가 카풀을 신청 할 예정입니다.</p>
		</div>
		<span>*필수 입력사항</span>
	</div>
	<div class="s2">
		<form action="../" method="get">
			<p>등록하신 날짜와 출발시간입니다.</p>
			<div class="fset">
				<input type="text" class="sdate" name="sdate" placeholder="2022.07.20 - 2022.08.20" readonly>
				<input type="text" class="stime" name="stime" placeholder="아침 8:00">
			</div>
			<div class="sset">
				<p>드라이버님의 이동 경로를 입력해주세요*</p>
				<img src="assets/images/bluelogo.png">
				<input type="text" class="splace" name="splace" placeholder="출발지를 입력하세요">
				<input type="text" name="eplace" placeholder="도착지를 입력하세요">
				<button><img src="assets/images/bluelogo.png"></button>
			</div>
			<div class="tset">
				<p>탑승 가능한 인원 수</p>
				<input type="number" placeholder="1명"> 
				<p>차량 상세조건</p>
				<div class="deepsel">
					<table>
						<tr>
							<td><input type="checkbox" name="smoke" value="nosmoke">비흡연자</td>
							<td ><input class="td2" type="checkbox" name="phonecharge" value="phonecharge">핸드폰 충전기 이용 가능</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="wifi" value="wifi">차량 와이파이 이용 가능</td>
							<td><input class="td2" type="checkbox" name="silence" value="silence">조용하게 가는 것을 선호</td>
						</tr>
						<tr>
							<td><input type="checkbox"  name="drivergender" value="female">여성 드라이버</td>
							<td><input class="td2" type="checkbox" name="pet" value="pet">반려동물 탑승 가능</td>
						</tr>
					</table>
				</div>
				<p>드라이버님을 소개해주세요*</p>
				<textarea class="driverintroduce" name="introduce" placeholder="하고싶은 말을 적어주세요!"></textarea>
			</div>
		<button>등록하기</button>
		</form>
		
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>
</body>
<script type="text/javascript">
var today = new Date();
var year = today.getFullYear();
var month = today.getMonth() + 1;
var date = today.getDate();
$(".sdate").val(year+'/'+month+'/'+date);
</script>
</html>