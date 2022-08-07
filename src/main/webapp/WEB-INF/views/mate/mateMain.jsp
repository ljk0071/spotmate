<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mateMain</title>

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

</head>
<body>
<!-- mateMain_wrap -->
<div class="mateMain_wrap">

	<!-- header -->
	<header>
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	</header>	
	<!-- //header -->
	
	<!-- mateMain_content -->
	<div class="mateMain-banner">
	<div class="mateMain_content">
	<div class="seachBox">
			<h2>FIND YOUR MATE</h2>
			<div class="inputBox">
				<div class="selBox">
					<div class="sel1">
						<label for="Location" class="LocationLabel">Location</label><br>
						<input type="text" id="Location" placeholder="목적지를 입력해주세요">
					</div>
					
					<div class="sel2">
						<label for="CheckIn" class="CheckInLabel">Check In</label><br>
						<input type="text" id="CheckIn" placeholder="Add Dates">
					</div>
					
					<div class="sel3">
						<label for="CheckOut" class="CheckOutLabel">Check Out</label><br>
						<input type="text" id="CheckOut" placeholder="Add Dates">
					</div>
					
					<div class="sel4">
						<label for="People" class="PeopleLabel">People</label><br>
						<input type="text" id="People" placeholder="Add Guests">
					</div>
				</div>
				
				<div class="searchPictogrem"></div>
			</div>
		</div>
	</div>
	</div>
	<!-- mateMain_content -->
	
	<!-- mateMain_content2 -->
	<div class="mateMain_content2">
		<div class="DetaileBox">
			<img class="DetaileBoxImg" src="/assets/images/ico_filter_white.png"> 
			<span class="DetaileBoxFont">상세조건</span>
		</div>
		<div class="checkBox">
				<span class="nonSmoke"><input type="checkbox" name="mateContactList" value="nonSmoke">비흡연자</span>
				<span class="femaleDriver"><input type="checkbox" name="mateContactList" value="femaleDriver">여성드라이버</span>
				<span class="pet"><input type="checkbox" name="mateContactList" value="pet">반려동물</span>
				<span class="phoneCharger"><input type="checkbox" name="mateContactList" value="phoneCharger">충전기 사용 가능</span>
				<span class="useTrunk"><input type="checkbox" name="mateContactList" value="useTrunk">트렁크 사용 가능</span>									
		</div>
		
		<div class="mateListAll clear">
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			<div class=mateList>
				<div class="matePicture" onclick="location.href='/mateDeep'">		
				</div><br>
				<span class="driverName">Driver Joyunju</span>
				<span class="schedule">일정 07.25 - 07.26</span><br>
				<span class="startEnd">서울역 → 강릉</span>
				<img src="/assets/images/car icon.png">
				<span class="seatNo">2</span>
				<img src="/assets/images/pet icon.png">
				<span class="petYN">가능</span>
			</div>
			
			
			<button class="mateListBtn">
				<h2>더보기</h2>
			</button>
						
		</div>
			
				
	</div>
	<!-- //mateMain_content2 -->
	
	
	<!-- footer -->
	<footer>
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</footer>	
	<!-- //footer -->
</div>
<!-- //mateMain_wrap -->
</body>
</html>