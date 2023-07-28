<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@500&display=swap" rel="stylesheet">
<link href="css/admin.css" rel="stylesheet" type="text/css">
</head>
<body>
	<!-- <a class="exitBtn" href="Logout">관리자 모드 종료</a> -->
	<div class="grid_box">
	<div class="side_bar">
	<ul>
		<li onclick="pickResStatus('resStatus')">예약 현황 및 수입</li>
		<li onclick="pickResStatus('resMemStatus')">회원 예약 현황</li>
		<li onclick="pickResStatus('resNonMemStatus')">비회원 예약 현황</li>
		<li onclick="pickResStatus('survey')">설문조사 통계</li>
		<li onclick="pickResStatus('logout')">관리자 모드 종료</li>
	</ul>
	</div>
	<div class="container" id="demo">
	</div>
	</div>
</body>
<script>
	const li = document.querySelectorAll('li');
	function pickResStatus(option) {
		const xhttp = new XMLHttpRequest();
		xhttp.onload = function() {
		  document.getElementById("demo").innerHTML = this.responseText;
		}
		if (option == "resStatus") {
			xhttp.open("GET", "adminCategory/resStatus.jsp", true);
		}
		else if (option == "resMemStatus") {
			xhttp.open("GET", "adminCategory/resMemStatus.jsp", true);
		}
		else if (option == "resNonMemStatus") {
			xhttp.open("GET", "adminCategory/resNonMemStatus.jsp", true);
		}
		else if (option == "survey") {
			xhttp.open("GET", "adminCategory/chart.jsp", true);
		}
		else if (option == "logout") {
			alert("관리자 모드를 종료 합니다.");
			location.href="Logout";
		}
		xhttp.send();
	}
	
	
</script>
</html>