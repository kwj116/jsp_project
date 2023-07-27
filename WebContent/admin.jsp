<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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
		<li onclick="pickResStatus('survey')">설문조사 통계</li>
		<li onclick="pickResStatus('logout')">관리자 모드 종료</li>
	</ul>
	</div>
	<div class="container" id="demo">
		 <div class="row" style="margin:auto;">
        <div id="curve_chart"><!-- 차트가 입력되는 부분 --></div>
	</div>
	</div>
	</div>
</body>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<script>
	const li = document.querySelectorAll('li');
	function pickResStatus(option) {
		if (option == "") {
			return;
		}
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
		else if (option == "survey") {
			console.log(option);
			xhttp.open("GET", "adminCategory/chart.jsp", true);
			 google.charts.load('current', {'packages':['corechart']});

			    function drawChart() {
			        var data = new google.visualization.DataTable();
			        data.addColumn('string', '소스');    // x축
			        data.addColumn('number', '결과');    // y축

			        <%-- 데이터 추가 --%>
			        data.addRow(['Instagram', ${slist.instaResult}]);
			        data.addRow(['Facebook', ${slist.facebookResult}]);
			        data.addRow(['Friend', ${slist.friendResult}]);
			        data.addRow(['Other', ${slist.otherResult}]);

			        var options = {
			            title: 'Junk Art Gallery를 알게 된 경로',
			            legend: { position: 'none' },
			            bars: 'vertical',   
			        };

			        var chart = new google.visualization.BarChart(document.getElementById('curve_chart'));
			        chart.draw(data, options);
			    }
			    google.charts.setOnLoadCallback(drawChart);
		}
		else if (option == "logout") {
			alert("관리자 모드를 종료 합니다.");
			location.href="Logout";
		}
		xhttp.send();
	}
	
	
</script>
</html>