<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/guide.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Gallery 관람 가이드</title>
</head>
<body class="g_body">
<div class="header_box">
	<header><i><a class="title" href="home.jsp">Junk Art Gallery</a></i></header><br>
</div>
<div class="container section_box">
	<div class="sec1 section">
		
		<table style="color:black">
			<tr>
				<td colspan="2"><img class="sec1_img" src="https://cdn.pixabay.com/photo/2021/08/20/18/33/british-museum-6561029_1280.jpg"></td>
			</tr>
			<tr><td colspan="2"><hr id="line"></td></tr>
			<tr>
				<td><h2>관람 시간</h2></td>
				<td>
					<ul>
						<li>
							<h4>주중,주말: </h4><h4 style="color:#827a81">10:00 ~ 19:00 (입장 마감: 18:30)</h4>
						</li>
						<br>
						<li>
							<h4>*옥외 전시장(정원)은 오전 7시부터 오후 10시까지 관람하실 수 있습니다.</h4>
						</li>
					</ul>
				</td>
			</tr>
			<tr><td colspan="2"><hr></td></tr>	
			<tr>
				<td><h2>관람료</h2></td>
				<td>
					<ul style="color:#827a81">
						<li>전 연령 30,000원</li><br>
						<li>관람권 구입 하는 곳 : 전시실 앞 매표소</li><br>
						<li>관람권 판매 시간 : 관람 종료 30분 전까지</li>
					</ul>
				</td>
			</tr>
			<tr><td colspan="2"><hr></td></tr>
			<tr>
				<td><h2>입장 제한</h2></td>
				<td>
					<ul style="color:#827a81">
						<li>전시회의 정적인 감상 분위기를 위해,</li><br>
						<li>초등학교 취학 이전의 어린이들은 입장을 제한하고 있습니다.</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
	<div class="sec2 section">
		<h2 class="rule">전시회 관람시 유의 사항</h2>
		<div class="guide">
			<ul class="g_list">
				<li>마스크 착용은 방역지침을 준수해주시기 바랍니다.</li>
				<li>전시회의 모든 공간은 금연구역입니다.</li>
				<li>음식물 반입과 안내견 이외의 반려동물의 출입은 금지되어 있습니다.</li>
				<li>전시회 입장 전에, 휴대전화는 전원을 꺼주시거나 무음으로 전환하여 주십시오.</li>
				<li>전시품 보호 및 안전사고 예방을 위하여 짐은 1층 물품보관함에 넣어 주십시오.</li>
				<li>전시회에서는 정숙해 주시고 뛰어다니는 행위는 삼가해 주십시오.</li>
				<li>전시물에 손을 대거나 손상을 입힐 수 있는 행위는 절대 삼가 주십시오.</li>
				<li>전시회의 모든 작품은 촬영이 금지 되어 있습니다.</li>
				<li>야외 관람로에서는 자전거,킥보드,인라인스케이트, 스케이트보드 등을 이용할 수 없습니다.</li>
				<li>슬리퍼 등 정숙한 관람을 해치는 복장은 자제하여 주시기 바랍니다.</li>
			</ul>
		</div>	
	</div>
	<div class="sec3 section"></div>
		
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7b92fef41ec2682ec915d7b9fbd8ab64"></script>
</body>
<script>
	var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
	var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
	var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

	var position = new kakao.maps.LatLng(35.3574895, 129.3078722);

	// 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
	roadviewClient.getNearestPanoId(position, 50, function(panoId) {
	    roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
	});
</script>
</html>