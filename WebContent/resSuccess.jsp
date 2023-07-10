<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="container">
	<table >
		<tr>
			<td><h2>${name } 예약이 완료 되었습니다.</h2></td>
		</tr>
		<tr>
			<td align="center"><h3><a class="resPageHomeBtn" href="home.jsp" style="margin:0;">홈으로</a></h3></td>
		</tr>
	</table>
</div>
<%@ include file="footer.jsp" %>
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
</script>

</html>