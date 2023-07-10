<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/fixedContents.css" rel="stylesheet" type="text/css">
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %><!-- header -->
<%@ include file="menu.jsp" %><!-- 메뉴  -->
<div class="container">
    <div style="display:flex; flex-direction: column; align-items: center; height: 90%;  justify-content: space-around;"><!-- css 파일로 옮기기 -->
        <h4>회원인 경우 로그인 → 본인 아이디 메뉴에 들어가면 예약정보를 확인 할 수 있습니다.</h4>
	    <div style="height: 40%"><!-- css 파일로 옮기기 -->
			<form action="CheckResServlet" method="get">
				<span>
				연락처 <input type="text" name="tel">
				</span>
				<input type="submit" value="조회">
			</form>
	    </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
<script>
    const loginMenu = document.querySelector('#login');
    const signUpMenu = document.querySelector('#signUp');
    const logoutMenu = document.querySelector('#logout');
    const inputTel = document.querySelector('input');
    const form = document.querySelector('form');
    if ("${sessionScope.login}"=="loginComplete") {
        loginMenu.parentNode.removeChild(loginMenu);
        signUpMenu.parentNode.removeChild(signUpMenu);
        logoutMenu.style.display="inline";
        console.log("${sessionScope.login}");
    }
    
    form.addEventListener('submit',function(e){
    	e.preventDefault();
    	if (inputTel.value.length == 0) {
    		alert("연락처를 입력해주세요.");
    		inputTel.focus();
    		return;
    	}
    	form.submit();
    });
    
    
</script>
</html>
