<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<link href="css/login.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="container">
<form action="LoginCheck" method="post">
	<h3><i>로그인</i></h3>
	<table>
		<tr>
			<th id ="id">
			<label>아이디</label>
			</th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th>
			<label>비밀번호</label>
			</th>
			<td>
				<input type="password" name="pw">
			</td>
		</tr>
		<tr>
			<td colspan=2 align=center><i><input id="sumbit" type="submit" value="로그인"></i></td>
		</tr>
		<tr>
			<td colspan=2 align=center><a id="move_to_signUp" href="signUp.jsp">회원가입</a></td>
		</tr>
	</table>
</form>
</div>
<%@ include file="footer.jsp" %>
</body>
<script>
	const id = document.getElementsByName('id')[0];
	const pw = document.getElementsByName('pw')[0];
	const signUp = document.querySelector('input[type=button]');
	const form = document.querySelector('form');
	const loginMenu = document.querySelector('#login');
	const signUpMenu = document.querySelector('#signUp');
	const logoutMenu = document.querySelector('#logout');
	if ("${sessionScope.login}"=="loginComplete") {
		loginMenu.parentNode.removeChild(loginMenu);
		signUpMenu.parentNode.removeChild(signUpMenu);
		logoutMenu.style.display="inline";
	}
	
	form.addEventListener('submit',function(e){
		e.preventDefault();
		if(id.value.length == 0){
			alert("아이디를 입력 해주세요.");
			id.focus();
			return;
		}
		if(pw.value.length == 0){
			alert("비밀번호를 입력 해주세요.");
			pw.focus();
			return;
		}
		form.submit();
	});
</script>
</html>