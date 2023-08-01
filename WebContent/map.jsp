<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
img{
	box-shadow: none;
}
</style>
<body>
<div id="map" style="width:50%;height:350px;"></div>
    
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7b92fef41ec2682ec915d7b9fbd8ab64"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(35.369352, 129.3008461), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(35.369352, 129.3008461); 
	
	//마커를 생성합니다
	var marker = new kakao.maps.Marker({
	position: markerPosition
	});

	//마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
</script>
</body>
</html>