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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<script src="/assets/jqueryUi/jquery-ui.js"></script>
<script src="/assets/MultiDatesPicker/jquery-ui.multidatespicker.js"></script>
<link rel="stylesheet" href="/assets/jqueryUi/jquery-ui.min.css">
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/datepicker.css">
</head>
<body>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div class="inner">
	<div class="top">
		<div><span>SPOT HITCHHIKE</span>
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
						<td><input type="text" value="" id="s-addr" class="s-addr" placeholder="출발지를 입력하세요"><img class="ae-btn" src="assets/images/arrows_exchange.png"></td>
						<td><input type="hidden" value="" class="s-lat"></td>
						<td><input type="hidden" value="" class="s-lng"></td>
					</tr>
					<tr>
					 	<td><input type="text" value="" id="e-addr" class="e-addr" placeholder="도착지를 입력하세요"><img class="ic-btn" src="assets/images/ico_close.png"></td>
						<td><input type="hidden" value="" class="e-lat"></td>
						<td><input type="hidden" value="" class="e-lng"></td>
				</table>
				</div>
			</div>
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
// $(function() {
//     //input을 datepicker로 선언
//     $("#datepicker").datepicker({
//         dateFormat: 'yy-mm-dd' //달력 날짜 형태
// //         ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
//         ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
//         ,changeYear: true //option값 년 선택 가능
//         ,changeMonth: true //option값  월 선택 가능                
//         ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
//         ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
// //         ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
// //         ,buttonText: "선택" //버튼 호버 텍스트              
//         ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
//         ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
//         ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
//         ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
//         ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
//         ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
//         ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
//     });                    
//     //초기값을 오늘 날짜로 설정해줘야 합니다.
//     $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
// });
// $("#datepicker").multiDatesPicker();
// $("#datepicker").multiDatesPicker('gotDate', new Date());
// $("#datepicker").multiDatesPicker();
// var dates = $('#datepicker').multiDatesPicker('getDates');
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
$("#s-addr").on("click", function() {
	window.open("ssp", "child", "width=1350, height=820, left=300, top=100");
})
$("#e-addr").on("click", function() {
	window.open("sep", "child", "width=1350, height=820, left=300, top=100");
})
</script>
</html>