<%@ page import="vo.SurveyVO" %>
<%@ page import="dao.SurveyDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="slist" value="${SurveyDAO.surveyResult()}"></c:set>
<div class="row">
    <h3>설문조사 통계</h3>
    <div class="row" style="margin:auto;">
        <div id="curve_chart"><!-- 차트가 입력되는 부분 --></div>
    </div>
</div>

<script src="https://www.gstatic.com/charts/loader.js"></script>
<script>
    google.charts.load('current', {'packages':['corechart']});

    function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', '소스');    // x축
        data.addColumn('number', '결과');    // y축
	
        <%-- 데이터 추가 --%>
        data.addRow(['Instagram', ${slist.instaResult}]);
        data.addRow(['Facebook', ${slist.facebookResult}]);
        data.addRow(['Friend', ${slist.friendResult}]);
        data.addRow(['Other', ${slist.otherResult}]);

        var options = {
            title: 'Junk Art Gallery를 알게 된 경로',
            legend: { position: 'none' },
            bars: 'vertical',   
        };

        var chart = new google.visualization.BarChart(document.getElementById('curve_chart'));
        chart.draw(data, options);
    }
    google.charts.setOnLoadCallback(drawChart);
</script>
