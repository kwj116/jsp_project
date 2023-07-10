<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
	<table class="info_table" border=1>
		<tr>
			<th>이름</th>
			<td class="info">${ilist.name }</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td class="info">${ilist.id}</td>
		</tr>
		<tr>
			<th>연락처</th>
			<td class="info">${ilist.tel }</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td class="info">${ilist.email }</td>
		</tr>
		<tr>
			<th>결제 날짜</th>
			<td class="info">${rlist.payDate}</td>
		</tr>
		<tr>
			<th>전시회 예약</th>
			<td class="info">${rlist.resDate}</td>
		</tr>
		<tr>
			<th>예약 인원</th>
			<td class="info">${rlist.headCount}</td>
		</tr>
		<tr>
			<td colspan="2"><a href="editInfo.jsp"><input class="edit_button" type="button" value="수정하기"></a></td>
		</tr>
	</table>
</div>
<%@ include file="footer.jsp" %><!-- footer  -->
</body>
<script>
	const loginMenu = document.querySelector('#login');
	const signUpMenu = document.querySelector('#signUp');
	const logoutMenu = document.querySelector('#logout');
	if ("${sessionScope.login}"=="loginComplete") {
		loginMenu.parentNode.removeChild(loginMenu);
		signUpMenu.parentNode.removeChild(signUpMenu);
		logoutMenu.style.display="inline";
	}
	
	/*edit_button.addEventListener('click',loadDoc);
	
	function loadDoc() {
		  const xhttp = new XMLHttpRequest();
		  xhttp.onload = function() {
		    document.querySelector("table").innerHTML = this.responseText;
		    }
		  xhttp.open("POST","editInfo.jsp",true);
		  xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		  xhttp.send();
		}*/
</script>
</html>