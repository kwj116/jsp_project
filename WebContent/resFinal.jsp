<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<link href="css/resFinal.css" rel="stylesheet" type="text/css">
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="container">
<form action="reservation" method="get">
<input type="hidden" name="year" value="${param.year}">
<input type="hidden" name="month" value="${param.month}">
<input type="hidden" name="day" value="${param.day}">
<input type="hidden" name="time" value="${param.time}">
<input type="hidden" name="revenue">
<table>
	<tr>
		<td colspan=3>${param.year}년 ${param.month}월 ${param.day}일 &ensp; [&nbsp;${param.time}&nbsp;] </td>
	</tr>
	<tr>
		<td>예약 가능 인원</td>
		<td>인원(DB)</td>
	</tr>
	<tr>
		<td>인원 선택</td>
		<td >
			<select name="headCount">
				<option value="" selected="selected" disabled="disabled">최대 5명</option>
				<option value="1">1명</option>
				<option value="2">2명</option>
				<option value="3">3명</option>
				<option value="4">4명</option>
				<option value="5">5명</option>
			</select>
		</td>
	</tr>
	<tr>
		<th colspan="2">
  			<div id="demo" style="display : none;">숨겨진 공간</div>
		</th>
	</tr>
	<tr>
		<th colspan="2">
			<div id="nonMemTel">
				연락처 <input type="text" name="nonMemTel">	
			</div>
		</th>
	</tr>
	<tr>
		<td colspan=2>
    		<input type="submit" value="예약" class="resBtn">
		</td>
	</tr>
</table>
</form>
</div>
<%@ include file="footer.jsp" %>
</body>
<script>
    const loginMenu = document.querySelector('#login');
    const signUpMenu = document.querySelector('#signUp');
    const logoutMenu = document.querySelector('#logout');
    const checkRes = document.querySelector('#checkRes');
    const selectOption = document.querySelector('select');
    const demo = document.querySelector('#demo');
    const revenue = document.getElementsByName('revenue')[0];
    const nonMemTel = document.querySelector('#nonMemTel');
    const form = document.querySelector('form');
    selectOption.addEventListener('change', function () {
    	const optionValue = selectOption.value;
    	if (optionValue == "") {
     	 	demo.textContent = "";
    	} 
    	else {
      		const totalPrice = optionValue * 30000;
      		demo.style.display = "block";
      		demo.textContent = "총 금액 : " + totalPrice + "원";
      		revenue.value = totalPrice;
    	}
  	});

  	form.addEventListener('submit', function (e) {
    	e.preventDefault();
    	const selectedOption = document.querySelector('select').value;
    	if (selectedOption == "") {
      		alert("인원을 선택해주세요.");
      		return;
    	}

    	if ("${sessionScope.login}" !== "loginComplete") {
      		const nonMemTelValue = document.querySelector('input[name="nonMemTel"]').value;
      		if (nonMemTelValue === "") {
        	alert("연락처를 입력해주세요.");
        	return;
      		}
    	}

    	form.submit();
  	});

  	if ("${sessionScope.login}" == "loginComplete") {
    	loginMenu.parentNode.removeChild(loginMenu);
    	signUpMenu.parentNode.removeChild(signUpMenu);
    	checkRes.parentNode.removeChild(checkRes);
    	logoutMenu.style.display = "inline";
    	nonMemTel.style.display = "none";
  	}
</script>

</html>
