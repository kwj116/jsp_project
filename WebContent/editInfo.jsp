<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<link href="css/info.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %><!-- header -->
<%@ include file="menu.jsp" %><!-- 메뉴  -->
<div class="container"><!-- 메인 컨텐츠 삽입 공간 -->
	<form action="EditServlet" method="post">
	<table class="info_table">
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" placeholder="${ilist.name }"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pw" placeholder=""></td>
		</tr>
		<tr>
			<th>연락처</th> 
			<td><input type="text" name="tel" placeholder="${ilist.tel }"></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="email" name="email" placeholder="${ilist.email }"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" class="edit_button" value="수정"></td>
		</tr>
		<tr><td id="demo"></td></tr>
	</table>
</form>
</div>
<%@ include file="footer.jsp" %><!-- footer  -->
</body>
<script>
	const loginMenu = document.querySelector('#login');
	const signUpMenu = document.querySelector('#signUp');
	const logoutMenu = document.querySelector('#logout');
	const form = document.querySelector('form');
	const name = document.getElementsByName('name')[0];
	const pw = document.getElementsByName('pw')[0];
	const tel = document.getElementsByName('tel')[0];
	const email = document.getElementsByName('email')[0];
	
	
	if ("${sessionScope.login}"=="loginComplete") {
		loginMenu.parentNode.removeChild(loginMenu);
		signUpMenu.parentNode.removeChild(signUpMenu);
		logoutMenu.style.display="inline";
	}
	
	
	form.addEventListener('submit',function(e){
		e.preventDefault();
		if (name.value.length == 0) {
			alert("이름을 입력해주세요.");
			name.focus();
			return;
		}
		if (pw.value.length == 0) {
			alert("비밀번호를 입력해주세요.");
			pw.focus();
			return;
		}
		if (tel.value.length == 0) {
			alert("연락처를 입력해주세요.");
			tel.focus();
			return;
		}
		if (email.value.length == 0) {
			alert("이메일을 입력해주세요.");
			email.focus();
			return;
		}
		alert("수정되었습니다.");
		form.submit();
	})
	

</script>