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
 <link href="css/login.css" rel="stylesheet" type="text/css">
<title>회원 가입</title>
</head>
<body>
<%@ include file="header.jsp" %><!-- header -->
<%@ include file="menu.jsp" %><!-- 메뉴  -->
<div class="container"><!-- 메인 컨텐츠 삽입 공간 -->
<form action="SignUp" method="post">
	<h3><i>회원 가입</i></h3>
	<table>
		<tr>
			<th><label>아이디</label></th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th><label>비밀번호</label></th>
			<td>
				<input type="password" name="pw">
			</td>
		</tr>
		<tr>
			<th><label>전화번호</label></th>
			<td>
				<input type="text" name="tel">
			</td>
		</tr>
		<tr>
			<th><label>이름</label></th>
			<td>
				<input type="text" name="name">
			</td>
		</tr>
		<tr>
		<tr>
			<th><label>이메일</label></th>
			<td>
				<input type="email" name="email">
			</td>
		</tr>
		<tr>
			<td colspan=2 align=center><input id="sumbit" type="submit" value="회원가입"></td>
		</tr>
	</table>
</form>
</div>
<%@ include file="footer.jsp" %><!-- footer -->
</body>
<script>
	const id = document.getElementsByName('id')[0];
	const pw = document.getElementsByName('pw')[0];
	const tel = document.getElementsByName('tel')[0];
	const name = document.getElementsByName('name')[0];
	const email = document.getElementsByName('email')[0];
	const form = document.querySelector('form');

	form.addEventListener('submit',function(e){
		e.preventDefault();
		
		if (id.value.length == 0) {
			alert("아이디를 입력 해주세요.");
			id.focus();
			return;
		}
		if (pw.value.length == 0) {
			alert("비밀번호를 입력 해주세요.");
			pw.focus();
			return;
		}
		if (tel.value.length == 0) {
			alert("연락처를 입력 해주세요.");
			tel.focus();
			return;
		}
		if (name.value.length == 0) {
			alert("이름을 입력 해주세요.");
			tel.focus();
			return;
		}
		if (email.value.length == 0) {
			alert("이메일을 입력 해주세요.");
			tel.focus();
			return;
		}
		form.submit();
	})
</script>
</html>