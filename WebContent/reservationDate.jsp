<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<link href="css/reservation.css" rel="stylesheet" type="text/css">
<link href="css/table.css" rel="stylesheet" type="text/css">
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="container">
	<table class="timeTable">
		<tr>
			<th colspan="3">${param.year }년&ensp;${param.month }월 &ensp;${param.day }일</th>
		</tr>
		<tr>
			<th colspan="3"><a class="prev" href="reservation.jsp">뒤로 가기</a></th>
		</tr>
    	<tr>
    		<td class="time">10:00 ~ 11:30</td>
    		<td class="time">11:30 ~ 13:00</td>
    		<td class="time">13:00 ~ 14:30</td>
    	</tr>
    	<tr>
	    	<td class="time">14:30 ~ 16:00</td>
    		<td class="time">16:00 ~ 17:30</td>
    		<td class="time">17:30 ~ 19:00</td>
    	</tr>
	</table>
</div>
<%@ include file="footer.jsp" %>
</body>
<script>
	const loginMenu = document.querySelector('#login');
	const signUpMenu = document.querySelector('#signUp');
	const logoutMenu = document.querySelector('#logout');
    const checkRes = document.querySelector('#checkRes');
	const backBtn = document.querySelector('.backBtn');
	const timeCells = document.querySelectorAll('.time');
	if ("${sessionScope.login}"=="loginComplete") {
	loginMenu.parentNode.removeChild(loginMenu);
	signUpMenu.parentNode.removeChild(signUpMenu);
	checkRes.parentNode.removeChild(checkRes);
	logoutMenu.style.display="inline";	
	}
	timeCells.forEach((cell) =>{
		cell.addEventListener('click',function(e){
			const clickedTime = e.target.textContent;
			location.href="resFinal.jsp?year="+"${param.year}"+"&month="+"${param.month}"+"&day="+"${param.day}"+"&time="+clickedTime;
		});
	});
</script>
</html>