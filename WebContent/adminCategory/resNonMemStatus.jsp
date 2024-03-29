<%@page import="dao.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="mResList" value="${AdminDAO.resNonMemStatus()}"></c:set>
<table border=1>
<% session.setAttribute("userId", "admin"); %>
<caption>비회원 예약 현황</caption>
	<tr>
		<th>회원 번호</th>
		<th>결제 날짜</th>
		<th>관람 날짜</th>
 		<th>인원</th>
		<th>연락처</th>
		<th>결제 금액</th>
		<th>관람 시간</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="mlist" items="${mResList }">
		<tr> 
			<td>${mlist.getResNum() }</td>
			<td>${mlist.getPayDate() }</td>
			<td>${mlist.getResDate() }</td>
			<td>${mlist.getHeadCount() }</td>
			<td>${mlist.getNonMemTel() }</td>
			<td>${mlist.getPay() }</td>
			<td>${mlist.getResTime() }</td>
			<td>
				<form action="AdminDelete" method="get">
					<input type="hidden" name="resNum" value="${mlist.getResNum() }">
					<input type="submit" value="삭제">
				</form>
			</td>
		</tr>
	</c:forEach>
</table><!-- 회원 예약 현황 테이블 -->
<script>
	const form = document.querySelector('form');
	form.addEventListener('submit',function(){
		alert("삭제 되었습니다.");
		form.submit();
	});
</script>
