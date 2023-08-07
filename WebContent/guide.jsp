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
	<div class="section"></div>
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
	<div class="section"></div>
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
	<div class="section" ></div>
		<table class="map">
		<caption><h2>오시는 길</h2></caption>
			<tr>
				<th align="center">
					<div class="map_wrap">
					    <div id="mapWrapper">
					        <div id="map" style="width:100%;height:100%"></div> <!-- 지도를 표시할 div 입니다 -->
					    </div>
					    
					</div>
				</th>
			</tr>
			<tr>
				<th align="center">
					<div id="rvWrapper">
					        <div id="roadview" style="width:100%;height:100%"></div> <!-- 로드뷰를 표시할 div 입니다 -->
					</div>
				</th>
			</tr>
			<tr><th>울산광역시 울주군 서생면 용연길 160</th></tr>
		</table>
		
	<div class="section"></div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7b92fef41ec2682ec915d7b9fbd8ab64"></script>
</body>
<script>
	const header = document.querySelector(".header_box");
	const a = document.querySelector("a");
	const sec1 = document.querySelector(".sec1");
	const sec2 = document.querySelector(".sec2");
	const table = document.querySelector(".map");
		
	
	window.addEventListener("scroll", function(){
		console.log(window.scrollY);
		if (window.scrollY >= 100) {
			a.style.background = 'linear-gradient(to right, #026f7f,#a59057)';
			a.style.color = 'transparent';
			a.style.webkitBackgroundClip ='text';
			header.style.height="80px";
			header.style.transition="0.3s linear";
		}
		else{
			a.style.color="black";
			header.style.background="none";
			header.style.height="100px";
			header.style.transition="0.3s linear";
		}
		if (window.scrollY >= 700) {
			sec1.style.opacity="1";
			sec1.style.transition="opacity 1.5s linear";
		}
		if (window.scrollY >= 3000){
			sec2.style.opacity="1";
			sec2.style.transition="opacity 1.5s linear";
		}
		if (window.scrollY >= 5000) {
			table.style.opacity="1";
			table.style.transition="opacity 1.5s linear";
		}
	});
	
	function MapWalker(position){

	    //커스텀 오버레이에 사용할 map walker 엘리먼트
	    var content = document.createElement('div');
	    var figure = document.createElement('div');
	    var angleBack = document.createElement('div');

	    //map walker를 구성하는 각 노드들의 class명을 지정 - style셋팅을 위해 필요
	    content.className = 'MapWalker';
	    figure.className = 'figure';
	    angleBack.className = 'angleBack';

	    content.appendChild(angleBack);
	    content.appendChild(figure);

	    //커스텀 오버레이 객체를 사용하여, map walker 아이콘을 생성
	    var walker = new kakao.maps.CustomOverlay({
	        position: position,
	        content: content,
	        yAnchor: 1
	    });

	    this.walker = walker;
	    this.content = content;
	}

	//로드뷰의 pan(좌우 각도)값에 따라 map walker의 백그라운드 이미지를 변경 시키는 함수
	//background로 사용할 sprite 이미지에 따라 계산 식은 달라 질 수 있음
	MapWalker.prototype.setAngle = function(angle){

	    var threshold = 22.5; //이미지가 변화되어야 되는(각도가 변해야되는) 임계 값
	    for(var i=0; i<16; i++){ //각도에 따라 변화되는 앵글 이미지의 수가 16개
	        if(angle > (threshold * i) && angle < (threshold * (i + 1))){
	            //각도(pan)에 따라 아이콘의 class명을 변경
	            var className = 'm' + i;
	            this.content.className = this.content.className.split(' ')[0];
	            this.content.className += (' ' + className);
	            break;
	        }
	    }
	};

	//map walker의 위치를 변경시키는 함수
	MapWalker.prototype.setPosition = function(position){
	    this.walker.setPosition(position);
	};

	//map walker를 지도위에 올리는 함수
	MapWalker.prototype.setMap = function(map){
	    this.walker.setMap(map);
	};

	/*
	 * 아래부터 실제 지도와 로드뷰 map walker를 생성 및 제어하는 로직
	 */
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapCenter = new kakao.maps.LatLng(35.3574895, 129.3078722), // 지도의 가운데 좌표
	    mapOption = {
	        center: mapCenter, // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 로드뷰 도로를 지도위에 올린다.
	map.addOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

	var roadviewContainer = document.getElementById('roadview'); // 로드뷰를 표시할 div
	var roadview = new kakao.maps.Roadview(roadviewContainer); // 로드뷰 객체
	var roadviewClient = new kakao.maps.RoadviewClient(); // 좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

	// 지도의 중심좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
	roadviewClient.getNearestPanoId(mapCenter, 50, function(panoId) {
	    roadview.setPanoId(panoId, mapCenter); // panoId와 중심좌표를 통해 로드뷰 실행
	});

	var mapWalker = null;

	// 로드뷰의 초기화 되었을때 map walker를 생성한다.
	kakao.maps.event.addListener(roadview, 'init', function() {

	    // map walker를 생성한다. 생성시 지도의 중심좌표를 넘긴다.
	    mapWalker = new MapWalker(mapCenter);
	    mapWalker.setMap(map); // map walker를 지도에 설정한다.

	    // 로드뷰가 초기화 된 후, 추가 이벤트를 등록한다.
	    // 로드뷰를 상,하,좌,우,줌인,줌아웃을 할 경우 발생한다.
	    // 로드뷰를 조작할때 발생하는 값을 받아 map walker의 상태를 변경해 준다.
	    kakao.maps.event.addListener(roadview, 'viewpoint_changed', function(){

	        // 이벤트가 발생할 때마다 로드뷰의 viewpoint값을 읽어, map walker에 반영
	        var viewpoint = roadview.getViewpoint();
	        mapWalker.setAngle(viewpoint.pan);

	    });

	    // 로드뷰내의 화살표나 점프를 하였을 경우 발생한다.
	    // position값이 바뀔 때마다 map walker의 상태를 변경해 준다.
	    kakao.maps.event.addListener(roadview, 'position_changed', function(){

	        // 이벤트가 발생할 때마다 로드뷰의 position값을 읽어, map walker에 반영 
	        var position = roadview.getPosition();
	        mapWalker.setPosition(position);
	        map.setCenter(position);

	    });
	});

	
	
</script>
</html>