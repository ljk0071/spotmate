<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

<title>스팟 카풀 리스트</title>



</head>


<body>


<!-- 	<div id="wrap"> -->
	
		<!-- header-->
		<c:import url="../includes/header.jsp"></c:import>
		<!-- //header-->
		
					
		
		<!-- CONTENT -->

		
		<div class="content-head">
		<div class="clear" style="width:1920px; margin:0px auto;">
			<div class="mate-deep-banner-l-sec">
			<span>같이 타고 가요</span><p>FIND YOUR MATE</p>
		</div> <span class="carpool-MainText2"> 이동하는 경로가 비슷한 드라이버를 찾아 <br> 출발지부터 목적지까지 편하게 이동해보세요.
			</span>
		</div>
		</div>
		
		<div id="content" class="clear">
			<div class="searchForm">
				
				<button class="search">
					<img class="carpoolSearchPicto" src="/assets/images/round-search.png">
					<p>검색하기</p>
				</button>


				<form class="carpoolInput">
					<input class="input1" type="text" name="departure" value="" placeholder="출발지를 입력하세요">
					<button>
						<img class="carpoolInput1Picto" src="/assets/images/arrows_exchange02.png">
					</button>
				</form>

				<input class="input2" type="text" name="destination" value="" placeholder="도착지를 입력하세요">
				
				<input class="input3" type="text" name="startTime" value="" placeholder="출발시간">
				
				<form class="carpoolInput">
					<input class="input4" type="text" name="number" value="" placeholder="인원수">
					<button>
						<img class="carpoolInput4Picto" src="/assets/images/ico_updown.png">
					</button>
				</form>
				
				<form class="carpoolInput"> 
					<input  class="input5" type="text" name="startDay" value="" placeholder="이용 출발 날짜">
					<button>
						<img class="carpoolInput5Picto" src="/assets/images/regularcalendar.png">
					
					</button>
				</form>
				
				<form class="carpoolInput">
					<input class="input6" type="text" name="endDay" value="" placeholder="이용 도착 날짜"> 
					<button>
						<img class="carpoolInput6Picto" src="/assets/images/regularcalendar.png">
					</button>
				</form>

		

				<div class="detail">
					<label>
					<span class="detailtext"><input type="checkbox" name="detailCondition" value="nonSmoke">&nbsp;&nbsp;비흡연자</span>
					</label>
					
					<label>
					<span class="detailtext"><input type="checkbox" name="detailCondition" value="femaleDriver">&nbsp;&nbsp;여성드라이버</span>
					</label>
					
					<label>
					<span class="detailtext"><input type="checkbox" name="detailCondition" value="pet">&nbsp;&nbsp;반려동물</span> 
					</label>
					
					<label>
					<span class="detailtext"><input type="checkbox" name="detailCondition" value="phoneCharger">&nbsp;&nbsp;충전기 사용 가능</span>
					</label>
					
					<label>
					<span class="detailtext"><input type="checkbox" name="detailCondition" value="handWash">&nbsp;&nbsp;트렁크 사용 가능</span>
					</label>
				
				</div>
			</div>


			<div class="carList">
				<span class="listText">탑승 가능 차량 리스트</span>
			</div>


			<div class="list">
		
				<table>
					<thead>
						<tr>
							<th>번호</th>		
							<th>유형</th>
							<th>출발지</th>
							<th>도착지</th>
							<th>지급 포인트</th>
							<th>드라이버</th>
							<th>상태</th>			
						</tr>
					</thead>
			
					<tbody>				
						<tr>
							<td>1</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
						<tr>
							<td>2</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
						<tr>
							<td>3</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
						<tr>
							<td>4</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
						<tr>
							<td>5</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
						<tr>
							<td>6</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
						<tr>
							<td>7</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
						<tr>
							<td>8</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
						<tr>
							<td>9</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
						<tr>
							<td>10</td>
							<td>카풀 정기권</td>
							<td>출발지</td>
							<td>도착지</td>
							<td>+ 3,000P</td>
							<td>spotmate123</td>
							<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
						</tr>
					</tbody>
					
				</table>
				
				</div>
				
				<div class="paging">
							<ul>
								<li>
									<a href="">
									<img class="carpoolPagePicto" src="/assets/images/chevron-double-left.png">
									</a>
								
								</li>
								
								<li>
									<a href="">
									<img class="carpoolPagePicto" src="/assets/images/chevron-left.png">
									</a>
								
								</li>
								
								<li><a href="">1</a></li>
								<li><a href="">2</a></li>
								<li><a href="">3</a></li>
								<li><a href="">4</a></li>
								<li class="active"><a href="">5</a></li>
								<li><a href="">6</a></li>
								<li><a href="">7</a></li>
								<li><a href="">8</a></li>
								<li><a href="">9</a></li>
								<li><a href="">10</a></li>
								
								<li>
									<a href="">
									<img class="carpoolPagePicto" src="/assets/images/chevron-right.png">
									</a>
								</li>
								
								<li>
									<a href="">
									<img class="carpoolPagePicto" src="/assets/images/chevron-double-right.png">
									</a>
								</li>
							</ul>
				</div>				
			</div>		
		
		
		
		
		<!-- footer-->
		<c:import url="../includes/footer.jsp"></c:import>
		<!-- //footer-->
	
	
<!-- 	</div> -->

	
</body>


</html>