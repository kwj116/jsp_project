<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<link href="css/modal.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8"> 
<title>Junk Art Gallery</title>
</head>
<body>
<%@ include file="header.jsp" %><!-- header -->
<%@ include file="menu.jsp" %><!-- 메뉴  -->
<div class="container"><!-- 메인 컨텐츠 삽입 공간 -->
	<table>
		<tr align="center">
			<td>
				<button id="openModalBtn">
  					<span>click</span>
				</button>
				<%@ include file="modal.jsp" %><br>
			</td>
		</tr>
		<tr align="center"><td><i>- 요하네스 베르메르 "진주 귀걸이를 한 소녀" -</i></td></tr>
		<tr>
			<td>
			<img class="mainImg" src="https://vsemart.com/wp-content/uploads/2015/09/Girl-with-a-Pearl-Earring-Jan-Vermeer.jpg"/>
			</td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td align="center"><i>"쓰레기를 뜻하는 정크(Junk)와 예술을 뜻하는 (Art),</i></td>
		</tr>
		<tr> 
			<td><i>일상생활에서 나온 부산물인 폐품 등 잡동사니를 소재로 제작한 미술 작품"</i></td>
		</tr>
	
	</table>
</div>
<%@ include file="footer.jsp" %>
</body>
<script>
	const loginMenu = document.querySelector('#login');
	const signUpMenu = document.querySelector('#signUp');
	const logoutMenu = document.querySelector('#logout');
	const adminMenu = document.querySelector('#adminMenu');
	const userid = document.querySelector('#user_id')
	const modal = document.getElementById("myModal");
	const btn = document.getElementById("openModalBtn");
	const closeBtn = document.querySelector(".close");
	
	if ("${sessionScope.login}"=="loginComplete") {
		console.log("${sessionScope.login}");
		loginMenu.parentNode.removeChild(loginMenu);
		signUpMenu.parentNode.removeChild(signUpMenu);
		logoutMenu.style.display="inline";
	}
	else if("${sessionScope.login}" == "refuse"){
		console.log("${sessionScope.login}");
		
	}

	btn.onclick = function() {
	        modal.style.display = "block";
	}

	closeBtn.onclick = function() {
	        modal.style.display = "none";
	}

	window.onclick = function(event) {
		if (event.target === modal) {
	    	modal.style.display = "none";
        }
    }	
</script>
</html>