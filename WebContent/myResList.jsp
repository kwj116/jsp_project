<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="res_box">
	<table class="res_list">
		<tr>
			<th>연락처</th>
			<td>${tel }</td>
		</tr>
		<tr>
			<th>전시회 예약 날짜</th>
			<td>${rlist.resDate }</td>	
		</tr>
		<tr>
			<th>관람 시간</th>
			<td>${rlist.resTime }</td>	
		</tr>
		<tr>
			<th>결제일</th>
			<td>${rlist.payDate }</td>	
		</tr>
		<tr>
			<th>결제가격</th>
			<td>${rlist.pay }</td>	
		</tr>
		<tr>
			<th>예약 인원</th>
			<td>${rlist.headCount }명</td>	
		</tr>
	</table>
</div>