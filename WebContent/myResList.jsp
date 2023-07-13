<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.res_box{
		display: flex;
		height : auto;
		width : auto;
		justify-content: center;
		align-items: center;
		/*background: url("https://cdn.pixabay.com/photo/2016/11/08/12/52/mandala-1808238_1280.png");*/
		background-size : cover;
	}
</style>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="container">
	<div class="res_box">
		<table border=1>
			<tr>
				<td>연락처</td>
				<td>${param.tel }</td>
			</tr>
			<tr>
				<td>전시회 예약 날짜</td>
				<td>${rlist.resDate }</td>	
			</tr>
			<tr>
				<td>관람 시간</td>
				<td>${rlist.resTime }</td>	
			</tr>
			<tr>
				<td>결제일</td>
				<td>${rlist.payDate }</td>	
			</tr>
			<tr>
				<td>결제가격</td>
				<td>${rlist.pay }</td>	
			</tr>
			<tr>
				<td>예약 인원</td>
				<td>${rlist.headCount }명</td>	
			</tr>
		</table>
	</div>
	
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
