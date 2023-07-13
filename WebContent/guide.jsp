<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/guide.css" rel="stylesheet" type="text/css">
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Gallery내 겸비시설</title>
</head>
<body class="g_body">
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="container">
<div class="sec">
	<img class="icon"src="https://cdn.pixabay.com/photo/2016/08/07/15/34/do-not-take-photos-1576438_1280.png"><br>
	<h1><i><u>전시된 작품의 사진을 찍지 말아 주세요.</u></i></h1>
</div>
<div class="sec">
	<img class="icon" src="https://cdn.pixabay.com/photo/2021/11/06/05/26/signage-6772470_1280.png"><br>
	<h1><i><u>큰 소리를 내지 말아 주세요.</u></i></h1>
</div>
<div class="sec">
	<img class="icon" src="https://cdn.pixabay.com/photo/2021/11/06/05/26/signage-6772471_1280.png"><br>
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