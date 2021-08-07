<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/workManagement.css">
<link rel="stylesheet" href="https://uicdn.toast.com/chart/latest/toastui-chart.min.css" />
<script src="https://uicdn.toast.com/chart/latest/toastui-chart.min.js"></script>
<link rel="stylesheet" href="https://uicdn.toast.com/chart/latest/toastui-chart.min.css" />
</head>
<body><div class="main-king">
<%@ include file = "/index.jsp" %>
	<!-- 오른쪽 내용 박스 -->
	<div class="main-right">
	<h3>근태 현황</h3>
	<div class="week-workTime-title">이번 주 잔여 근무 시간 
		<div class="week-workTime">08h 00m 00s</div>
	</div>
	
<!-- 일주일치 근무 테이블 -->
	<table class="workTime-table">
		<tr>
			<th>날짜</th>
			<th>출근</th>
			<th>퇴근</th>
			<th>근무시간</th>
			<th>초과근무</th>
			<th>비고</th>
		</tr>
		
		<tr>
			<td>7.19</td>
			<td>9:00</td>
			<td>19:00</td>
			<td>10h 00m</td>
			<td>2h 00m</td>
			<td></td>
		</tr>
		
		<tr>
			<td>7.20</td>
			<td>-</td>
			<td>-</td>
			<td>8h 00m</td>
			<td>00h 00m</td>
			<td>연차</td>
		</tr>
		
		<tr>
			<td>7.21</td>
			<td>8:00</td>
			<td>15:00</td>
			<td>7h 00m</td>
			<td>00h 00m</td>
			<td></td>
		</tr>
		
		<tr>
			<td>7.22</td>
			<td>8:00</td>
			<td>15:00</td>
			<td>7h 00m</td>
			<td>00h 00m</td>
			<td></td>
		</tr>
		
		<tr>
			<td>7.23</td>
			<td>-</td>
			<td>-</td>
			<td>00h 00m</td>
			<td>00h 00m</td>
			<td></td>
		</tr>
		
		<tr>
			<td>7.24</td>
			<td>-</td>
			<td>-</td>
			<td>00h 00m</td>
			<td>00h 00m</td>
			<td></td>
		</tr>
		
		<tr>
			<td>7.25</td>
			<td>-</td>
			<td>-</td>
			<td>00h 00m</td>
			<td>00h 00m</td>
			<td></td>
		</tr>	
	</table>
	<div id="chart"></div>		
	</div>
</div>

<script>

	var chart = toastui.Chart;
	var el = document.getElementById('chart');
	var data = {
		categories: ['7.19', '7.20', '7.21', '7.22', '7.23', '7.24', '7.25'],
		series: [
		{
			name: '근무 시간',
			data: [10, 0, 7, 7, 0, 0, 0],
			// visible: false => 차트에 데이터 표시하지 않음
		},
					    
		{
			name: '초과 근무 시간',
			data: [2, 0, 0, 0, 0, 0, 0]
		},
					    
		{
			name: '휴가',
			data: [0, 8, 0, 0, 0, 0, 0]
		}
					    
		]
	};

	var options = {
		series: {
		stack: {
			type: 'normal'
			}
		},
		chart: {width:850, height:400}
	};
	
	var chart = chart.columnChart({el, data, options});	

</script>
</body>
</html>