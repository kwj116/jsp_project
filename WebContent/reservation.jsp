<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<link href="css/table.css" rel="stylesheet" type="text/css">
<link href="css/reservation.css" rel="stylesheet" type="text/css">
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<title>갤러리 예약</title>
</head>
<style>
	.disabled{
		pointer-events: none;
	}
	.disabled-date {
		background-color:#dcdcdc;
    	pointer-events: none;
	}
</style>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="container">
  <table>
    <tr>
      <th><button class="prevBtn">이전</button></th>
      <th colspan="5" class="month"></th>
      <th><button class="nextBtn">다음</button></th>
    </tr>
    <tr>
    	<th colspan="7"><hr style="background-color: gray; height: 1px; "></th>
    </tr>
    <tr>
      <th class="holiday">Sun</th>
      <th>Mon</th>
      <th>Tue</th>
      <th>Wed</th>
      <th>Thu</th>
      <th>Fri</th>
      <th class="holiday">Sat</th>
    </tr>
    <tr>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
    </tr>
    <tr>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
    </tr>
    <tr>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
    </tr>
    <tr>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
    </tr>
    <tr>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
      <td class="date"></td>
    </tr>
  </table>
</div>
<%@ include file="footer.jsp" %>
</body>
<script>	
  	const loginMenu = document.querySelector('#login');
  	const signUpMenu = document.querySelector('#signUp');
  	const logoutMenu = document.querySelector('#logout');
  	const checkRes = document.querySelector('#checkRes');
  	const table = document.querySelector('table');
  	const prevBtn = document.querySelector('.prevBtn');
  	const nextBtn = document.querySelector('.nextBtn');
  	const month = document.querySelector('.month');
  	const dateCells = document.querySelectorAll('.date');
  	const res = document.querySelector("#res");
  	const body = document.querySelector('body');

  	let currentDate = new Date(); 
  	let currentYear = currentDate.getFullYear(); 
  	let currentMonth = currentDate.getMonth() + 1;
  	let currentDay = currentDate.getDate();
  	let comparisonMonth = currentMonth;
  	
  	res.style.color="#FFF064";
  	res.style.fontWeight="bold";
  	
  	if ("${sessionScope.login}"=="loginComplete") {
		loginMenu.parentNode.removeChild(loginMenu);
		signUpMenu.parentNode.removeChild(signUpMenu);
		checkRes.parentNode.removeChild(checkRes);
		logoutMenu.style.display="inline";
	}
  	dateCells.forEach((cell) => {
  	  cell.addEventListener('click', function(e) {
  	    if (e.target.textContent !== '') {
	  	    const clickedYear = currentYear;
  		    const clickedMonth = currentMonth;
  	    	const clickedDay = parseInt(e.target.textContent);
  	      	location.href="reservationDate.jsp?year="+clickedYear+"&month="+clickedMonth+"&day="+clickedDay;
  	    }
  	  });
  	});
  	
  	function updateCalendar() {
  	    let yearAndMonth = "'" + currentYear + "" + "년 " + "'" + "'" + currentMonth + "'" + "월 ";
  	    month.innerText = yearAndMonth.replace(/'/g, '');
  	    let date = 1;
  	    const firstDay = new Date(currentYear, currentMonth - 1, 1).getDay();
  	    const monthValue = currentDate.getMonth()+1;//현재 월
		const calenderMonth = currentMonth;//달력상의 월
  	    const calenderDay = 0;////////////////////////////////////////
  	    console.log("달력날짜:"+calenderMonth);
  	    console.log("현재날짜:"+monthValue);
  	    console.log("현재일:"+currentDay);
  	    dateCells.forEach((cell, index) => {
  	        if (index >= firstDay && date <= getLastDayOfMonth(currentYear, currentMonth)) {
  	            cell.textContent = date;
  	            cell.classList.remove('disabled-date'); 
  	            if (Number(cell.innerText) < Number(currentDay) && monthValue == calenderMonth) {
  	          	    cell.classList.add('disabled-date'); 
  	            }
  	            if (cell.innerText == currentDay && monthValue == calenderMonth) {
					cell.style.background="#BEEFFF";
				}//달력 셀의 날짜와 현재날짜가 같고, 현재 월이랑 달력상의 월이 같을 경우 배경색 지정
  	            	//달력날짜랑 현재날짜보다 작은 경우,현재 월이랑 달력의 월이랑 같을 경우,배경색 지정
				if (monthValue != calenderMonth){
					cell.style.background = "white";
				}
  	          date++;
  	        } 
  	        else {
  	        	cell.textContent = '';
  	        }
  	    });

  	    if (comparisonMonth == currentMonth) {
    		prevBtn.disabled = true;
    	}
      	else{
      		prevBtn.disabled = false;
      	}
    }
  	
    prevBtn.addEventListener('click', () => {
    	if (currentMonth === 1) {
      		currentMonth = 12;
      		currentYear--;
    	} 
    	else {
      		currentMonth--;
    	}
    	updateCalendar();
 	});

    nextBtn.addEventListener('click', () => {
    	if (currentMonth === 12) {
     		currentMonth = 1;
      		currentYear++;
    	} 
    	else currentMonth++;
    	updateCalendar();
    });

    function getLastDayOfMonth(year, month) {
   		return new Date(year, month, 0).getDate();
    }
    updateCalendar();
</script>

</html>