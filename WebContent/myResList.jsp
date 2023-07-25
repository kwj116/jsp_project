<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="res_box">
	<table border=1>
		<tr>
			<td>연락처</td>
			<td>${tel }</td>
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