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
<%@ include file="menu.jsp"%>
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
<div class="about_container">
	<table class="table2">
		<tr>
			<td>
				<img class="item_img" src="https://vsemart.com/wp-content/uploads/2015/09/Afghan-girl.jpg">
				<h4>Iconic portrait of Afghan girl</h4>
			</td>
		</tr>
		<tr>
			<td>
				<img class="item_img" src="https://vsemart.com/wp-content/uploads/2015/09/Albert-Einstein.jpg">
				<h4>Albert Einstein</h4>
			</td>
		</tr>
		<tr>
			<td>
				<img class="item_img" src="https://vsemart.com/wp-content/uploads/2015/09/Usain-Bolt-the-Jamaican-athlete.jpg">
				<h4>Usain Bolt, the Jamaican athlete</h4>
			</td>
		</tr>
		<tr>
			<td>
			<img class="item_img" src="https://vsemart.com/wp-content/uploads/2015/09/Winston-Churchill.jpg">
			<h4>Winston Churchill</h4>
			</td>
		</tr>
		<tr>
			<td>
			<img class="item_img" src="https://vsemart.com/wp-content/uploads/2015/09/Angel-after-John-Melluish-Strudwick.jpg">
			<h4>Angel, after John Melluish Strudwick</h4>
			</td>
		</tr>
		<tr>
			<td>
			<img class="item_img" src="https://vsemart.com/wp-content/uploads/2015/09/Father-Christmas-made-in-2010.jpeg">
			<h4>Father Christmas, made in 2010</h4>
			</td>
		</tr>
		<tr>
			<td>
			<img class="item_img" src="https://vsemart.com/wp-content/uploads/2015/09/Kate-Middleton-Duchess-of-Cambridge.jpg">
			<h4>Kate Middleton, Duchess of Cambridge</h4>
			</td>
		</tr>
		
	</table>
</div>
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