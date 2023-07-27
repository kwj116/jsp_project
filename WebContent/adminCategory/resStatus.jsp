<%@page import="dao.UserDAO"%>
<%@page import="dao.SurveyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="memHeadCount" value="${UserDAO.getMemberCnt()}"/>
<c:set var="nonMemHeadCount" value="${UserDAO.getNonMemCtn()}"/>
<c:set var="totalHeadCount" value="${memHeadCount + nonMemHeadCount}"/>
<c:set var="totalPay" value="${UserDAO.getPrice()}"/>
<table border="1">
<caption>예약 현황 및 수입</caption>
	<tr>
		<th>총 누적 수입</th><th>누적 예약 인원</th>
	</tr>
	<tr>
		<td><c:out value="${totalPay }₩"/></td>
		<td><c:out value="${totalHeadCount }명"/></td>
	</tr>
</table><!-- 누적 현황 테이블 -->