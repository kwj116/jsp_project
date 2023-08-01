<%@ page import="dao.AdminDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="rmlist" value="${AdminDAO.resMemStatus()}"></c:set>
<c:set var="rnlist" value="${AdminDAO.resNonMemStatus()}"></c:set>
<title>수익 추세선</title>
<body>
<div class="row">
    <h3>수익 추세선</h3>
    <div class="row" style="margin:auto; background:#ebebeb">
        <div id="curve_chart"><!-- 차트가 입력되는 부분 --></div>
    </div>
   
    
</div>

</body>

<script src="https://www.gstatic.com/charts/loader.js"></script>
<script>
    google.charts.load('current', {'packages':['corechart']});
    function drawChart() {
        var data = new google.visualization.DataTable();
        var dlist = [];
        var date;
        var pay;
        data.addColumn('string', '날짜'); // x축
        data.addColumn('number', '수익'); // y축
        
        
        <c:forEach var="list" items="${rmlist }" varStatus="status">
	       	date = '${list.getPayDate()}'; // 날짜 문자열 가져오기
	        pay = ${list.getPay()}; // pay 값 가져오기
			
	        if (dlist.includes(date)) {
	            // 이미 존재하는 날짜인 경우, 해당 날짜의 pay 값을 누적
	            for (var i = 0; i < dlist.length; i++) {
	                if (data.getValue(i, 0) === date) {
	                    data.setValue(i, 1, data.getValue(i, 1) + pay);
	                    break;
	                    //data.getValue(0,1) y축 첫번째, 즉 첫번째 수익을 뜻함
	                }
	            }
	        } 
	        else {
	            // 새로운 날짜인 경우, 날짜를 dlist에 추가하고, DataTable에 새로운 행 추가
	            dlist.push(date);
	            data.addRow([date, pay]);
	        }
    	</c:forEach>
    	
    	
    	<c:forEach var="list" items="${rnlist }" varStatus="status">
	       	date = '${list.getPayDate()}'; // 날짜 문자열 가져오기
	        pay = ${list.getPay()}; // pay 값 가져오기
			
	        if (dlist.includes(date)) {
	            // 이미 존재하는 날짜인 경우, 해당 날짜의 pay 값을 누적
	            for (var i = 0; i < dlist.length; i++) {
	                if (data.getValue(i, 0) === date) {
	                    data.setValue(i, 1, data.getValue(i, 1) + pay);
	                    break;
	                    //data.getValue(0,1) y축 첫번째, 즉 첫번째 수익을 뜻함
	                }
	            }
	        } 
	        else {
	            // 새로운 날짜인 경우, 날짜를 dlist에 추가하고, DataTable에 새로운 행 추가
	            dlist.push(date);
	            data.addRow([date, pay]);
	        }
		</c:forEach>
    	
		 data.sort([{column: 0}]);
		
        var options = {
            title: '날짜 별 수익',
            width: null,
            height: 600,
            lineWidth: 5,
            curveType : 'function',
            series: {
                0: { color: 'violet' },
            }
        };
		
        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
        chart.draw(data, options);
    }
    google.charts.setOnLoadCallback(drawChart);
</script>
