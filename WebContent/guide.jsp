<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Gallery내 겸비시설</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="container">
<div class="section sec2">
	<i class="manner"><u>Manner at exhibition</u></i>
	<!--  include file="map.jsp" -->
</div>
<div class="section sec3">
	<img class="icon"src="img/camera-video-off-fill.svg"><br>
	<h1><i><u>전시된 작품들의 사진을 찍으시면 안됩니다.</u></i></h1>
</div>
<div class="section sec4">
	<img class="icon" src="img/volume-mute-fill.svg"><br>
	<h1><i><u>큰 소리를 내지 말아 주세요.</u></i></h1>
</div>
<div class="section sec5">
	<img class="icon" src="https://cdn.vectorstock.com/i/preview-1x/59/19/do-not-touch-sign-vector-26155919.jpg"><br>
	<h1><i><u>작품을 손으로 만지지 말아 주세요.</u></i></h1>
</div>

</div>

<%@ include file="footer.jsp" %>
</body>
<script>
	const loginMenu = document.querySelector('#login');
	const signUpMenu = document.querySelector('#signUp');
	const logoutMenu = document.querySelector('#logout');
	if ("${sessionScope.login}"=="loginComplete") {
		loginMenu.parentNode.removeChild(loginMenu);
		signUpMenu.parentNode.removeChild(signUpMenu);
		logoutMenu.style.display="inline";
		console.log("${sessionScope.login}");
	}
</script>
</html>