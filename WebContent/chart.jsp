<%@ page import="vo.SurveyVO" %>
<%@ page import="dao.SurveyDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통계</title>
</head>
    <div class="row">
        <h3>설문조사 통계</h3>
        <div class="row" style="margin:auto;">
            <div id="curve_chart"><!-- 차트가 입력되는 부분 --></div>
        </div>
    </div>

    <script src="https://www.gstatic.com/charts/loader.js"></script>
   <script>
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = new google.visualization.DataTable(
        		 ['Element', 'Density', { role: 'style' }],
                 ['Copper', 8.94, '#b87333'],            // RGB value
                 ['Silver', 10.49, 'silver'],            // English color name
                 ['Gold', 19.30, 'gold'],
                 ['Platinum', 21.45, 'color: #e5e4e2' 
		]); // CSS-style declaration;
        data.addColumn('string', '소스');    // x축
        data.addColumn('number', '결과');    // y축

        <%-- 각 소스에 대한 카운트 값 설정 --%>
        <% SurveyVO slist = SurveyDAO.surveyResult(); %>
        <% slist.setInstaResult(slist.getInstaResult()); %>
        <% slist.setFacebookResult(slist.getFacebookResult()); %>
        <% slist.setFriendResult(slist.getFriendResult()); %>
        <% slist.setOtherResult(slist.getOtherResult()); %>

        <%-- 데이터 추가 --%>
        data.addRow(['Instagram', <%= slist.getInstaResult() %>]);
        data.addRow(['Facebook', <%= slist.getFacebookResult() %>]);
        data.addRow(['Friend', <%= slist.getFriendResult() %>]);
        data.addRow(['Other', <%= slist.getOtherResult() %>]);

        var options = {
            title: 'Junk Art Gallery를 알게 된 경로',
            legend: { position: 'none' },
            bars: 'vertical',   
        };

        var chart = new google.visualization.BarChart(document.getElementById('curve_chart'));
        chart.draw(data, options);
    }
</script>
</html>
