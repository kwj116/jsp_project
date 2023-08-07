<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<link href="css/reservation.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="container">
	<div class="res_box">
	<table class="res_list">
		<tr >
			<td colspan="2"><h2>${name } 예약이 완료 되었습니다.</h2></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td>${param.nonMemTel } ${ilist.tel }</td>
		</tr>
		<tr>
			<th>전시회 예약 날짜</th>
			<td>${param.resDate }</td>	
		</tr>
		<tr>
			<th>관람 시간</th>
			<td>${param.time }</td>	
		</tr>
		<tr>
			<th>결제일</th>
			<td>${param.year }년 ${param.month }월 ${param.day }일</td>	
		</tr>
		<tr>
			<th>결제가격</th>
			<td>${param.pay }원</td>	
		</tr>
		<tr>
			<th>예약 인원</th>
			<td>${param.headCount }명</td>	
		</tr>
		<tr>
			<td align="center" colspan="2"><h3><a class="resPageHomeBtn" href="home.jsp" style="margin:0;">홈으로</a></h3></td>
		</tr>
	</table>
</div>
</div>
<%@ include file="footer.jsp" %>
</body>
<script>
	const loginMenu = document.querySelector('#login');
	const signUpMenu = document.querySelector('#signUp');
	const logoutMenu = document.querySelector('#logout');
    const checkRes = document.querySelector('#checkRes');

	
	if ("${sessionScope.login}"=="loginComplete") {
		loginMenu.parentNode.removeChild(loginMenu);
		signUpMenu.parentNode.removeChild(signUpMenu);
    	checkRes.parentNode.removeChild(checkRes);
		logoutMenu.style.display="inline";	
	}
</script>

</html>