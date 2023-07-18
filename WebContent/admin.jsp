<%@page import="dao.UserDAO"%>
<%@page import="dao.SurveyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/admin.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:set var="memHeadCount" value="${UserDAO.getMemberCnt()}"/>
<c:set var="nonMemHeadCount" value="${UserDAO.getNonMemCtn()}"/>
<c:set var="totalHeadCount" value="${memHeadCount + nonMemHeadCount}"/>
<c:set var="totalPay" value="${UserDAO.getPrice()}"/>
<c:set var="slist" value="${SurveyDAO.surveyResult()}"/>
	<br>
	<header><h2><i>Manager mode</i></h2></header>
	<button>change display</button>
	<nav>
		<a class="exitBtn" href="Logout">관리자 모드 종료</a>&ensp;&ensp;&ensp; 
		<a href="chart.jsp">설문조사 통계</a>
	</nav>
	<div class="container">
		<table border="1">
		<caption>1.예약 현황 및 수입</caption>
			<tr>
				<td><h3><i>총 누적 수입</i></h3></td>
				<td><h3><i><c:out value="${totalPay }₩"/></i></h3></td>
			</tr>
			<tr>
				<td><h3><i>누적 예약 인원</i></h3></td>
				<td><h3><i><c:out value="${totalHeadCount }명"/></i></h3></td>
			</tr>
		</table>
	</div>
</body>
<script>
	const toggleBtn = document.querySelector('button');
	const exitBtn = document.querySelector('.exitBtn');
	toggleBtn.addEventListener('click',function(){
		document.body.classList.toggle('light_mode');
	});
	
	exitBtn.addEventListener('click',function(){
		alert("관리자 모드를 종료 합니다.");
	})
	
	
</script>
</html>