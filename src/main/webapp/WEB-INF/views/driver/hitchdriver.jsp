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
		<form>
			<p>등록하신 날짜와 출발시간입니다.</p>
			<div class="fset">
				<input type="text" id="datepicker" class="sdate" placeholder="2022.07.20 - 2022.08.20">
				<input type="text" class="stime" placeholder="아침 8:00">
			</div>
			<div class="sset">
				<p>드라이버님의 이동 경로를 입력해주세요*</p>
				<img src="assets/images/bluelogo.png">
				<input type="text" class="splace" placeholder="출발지를 입력하세요">
				<input type="text" placeholder="도착지를 입력하세요">
				<button><img src="assets/images/bluelogo.png"></button>
			</div>
			<div class="tset">
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
				<p>드라이버님을 소개해주세요*</p>
				<textarea class="driverintroduce" placeholder="하고싶은 말을 적어주세요!"></textarea>
			</div>
		<button>등록하기</button>
		</form>
		
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>
</body>
<script type="text/javascript">
$(function() {
    //input을 datepicker로 선언
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd' //달력 날짜 형태
//         ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
        ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
        ,changeYear: true //option값 년 선택 가능
        ,changeMonth: true //option값  월 선택 가능                
        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
//         ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
//         ,buttonText: "선택" //버튼 호버 텍스트              
        ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
        ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
        ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
        ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
    });                    
    
    //초기값을 오늘 날짜로 설정해줘야 합니다.
    $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
});
</script>
</html>