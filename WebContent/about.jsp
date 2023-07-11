<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/about.css" rel="stylesheet" type="text/css">
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>정크아트 소개</title>
</head>
<body class="about_body">
<%@ include file="header.jsp"%>
<div class="table_box">
	<table class="table1">
		<tr>
			<td class="face_box" align="center"><img class="face" src="http://www.eknews.net/xe/files/attach/images/30343/930/515/cd0a4ea15bf0a067f08ff11c5024ba8a.jpg"></td>
			<td align="center">
				<ul>
					<li><i><b>"쓰레기를 활용한 예술"</b></i></li><br>
					<li><i>쿠르트 슈비터스(Kurt Schwitters)는 1910년대부터 자신의 쓰레기통에서</i></li>
					<li><i>작품의 재료를 발견하기 시작합니다.</i></li>
					<li><i>물질적인 문명이 발전할수록 쓰레기가 늘어나는 문제를 알리기 위함과 동시에,</i></li>
					<li><i>쓰레기통에 버려진 잡동사니가 시대를 반영한다고 생각했기 때문입니다.</i></li>
				</ul>
			</td>
		</tr>
	</table>
</div>	
<div class="section sec1"></div>
<div class="section sec2"></div>
<div class="section sec3"></div>
<div class="section sec4"></div>
<div class="section sec5"></div>
<div class="section sec6"></div>
<div class="section sec7"></div>
<%@ include file="footer.jsp"%>
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