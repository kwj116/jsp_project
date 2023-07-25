<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/fixedContents.css" rel="stylesheet" type="text/css">
    <link href="css/reservation.css" rel="stylesheet" type="text/css">
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %><!-- header -->
<%@ include file="menu.jsp" %><!-- 메뉴  -->
<div class="container">
    <div class="box" id="demo"><!-- css 파일로 옮기기 -->
        <h4>회원인 경우, 로그인 → 본인 아이디 메뉴에 들어가면 예약정보를 확인 할 수 있습니다.</h4>
	    <div class="box2"><!-- css 파일로 옮기기 -->
			<span>
			연락처 <input type="text" name="tel" id="telInput" placeholder="ex)010-0000-0000">
			</span>
			<input type="submit" onclick="loadDoc()" value="조회">
	    </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
<script>
    const loginMenu = document.querySelector('#login');
    const signUpMenu = document.querySelector('#signUp');
    const logoutMenu = document.querySelector('#logout');
    const inputTel = document.querySelector('#telInput');
    const h4 = document.querySelector('h4');
    const telRegex = /^\d{3}-\d{4}-\d{4}$/; 
    
    if ("${sessionScope.login}" == "loginComplete") {
        loginMenu.parentNode.removeChild(loginMenu);
        console.log(loginMenu);
        signUpMenu.parentNode.removeChild(signUpMenu);
        logoutMenu.style.display = "inline";
        console.log("${sessionScope.login}");
    }
    function loadDoc() {
    	if (!telRegex.test(inputTel.value)) { //JavaScript의 정규 표현식 객체의 메서드
            alert("올바른 형식의 연락처를 입력해주세요."); 
            inputTel.focus();
            return;
        }
    	const xhttp = new XMLHttpRequest();
    	xhttp.onload = function() {
    	    document.getElementById("demo").innerHTML = this.responseText;
    	}
	   		xhttp.open("GET", "CheckResServlet?tel="+inputTel.value, true);
    		xhttp.send();
    	  	h4.parentNode.removeChild(h4);
    }
</script>
</html>
