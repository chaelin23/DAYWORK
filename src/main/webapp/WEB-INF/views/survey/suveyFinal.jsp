<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/index.css">
<style>
	input, textarea {
		border: 1px solid lightgray;
	}
	
	table {
		font-size: 12px;
	}
	
	.Question-Btn{
		font-size: 12px;
	}
</style>
</head>
<body>

<div class="main-king">

<%@ include file = "/index.jsp" %>

<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div style="font-size: 20px;">설문 결과</div>

			<br>
			
			<div style="display: flex; justify-content: space-between;">
				<div style="font-size: 20px; font-weight: bold;">회사 만족도 설문 조사</div>
				<div style="font-size: 20px; font-weight: bold; margin: 0px 10px;">응답자 수 : 5명</div>			
			</div>
			
			<br>
			
			<div style="border: 1px solid lightgray; border-radius: 3px; padding: 10px;">
				사원들의 회사 만족도에 대하여 설문조사를 실시하고 있습니다. 사원들의 불만과 만족하는 점을 파악하여
				회사의 복지를 높이는데 쓰일 설문조사이므로 솔직한 설문조사 바랍니다. 감사합니다.
			</div>
			
			<br>
			
			<div style="border: 1px solid lightgray; border-radius: 3px; padding: 12px;">
				<div>회사 생활의 만족도는 어떻습니까?</div>
				<hr style="width: 99%">
				<table>
					<tr>
						<td style="width: 100px;">아주 좋아요</td>
						<td style="width: 200px;"><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>
					<tr>
						<td>좋아요</td>
						<td><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>
					<tr>
						<td>보통이에요</td>
						<td><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>
					<tr>
						<td>나빠요</td>
						<td><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>
					<tr>
						<td>아주 나빠요</td>
						<td><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>	
				</table>
			</div>
			
			<br>

			<div style="border: 1px solid lightgray; border-radius: 3px; padding: 12px;">
				<div>팀 분위기는 어떻습니까?</div>
				<hr style="width: 99%">
				<table>
					<tr>
						<td style="width: 100px;">아주 좋아요</td>
						<td style="width: 200px;"><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>
					<tr>
						<td>좋아요</td>
						<td><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>
					<tr>
						<td>보통이에요</td>
						<td><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>
					<tr>
						<td>나빠요</td>
						<td><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>
					<tr>
						<td>아주 나빠요</td>
						<td><progress value="22" max="100" style="width: 200px; height: 20px;"></progress></td>
						<td>n명 22%</td>
					</tr>	
				</table>
			</div>
			
			<br>
			
			<div style="border: 1px solid lightgray; border-radius: 3px; padding: 12px;">
				<div>회사에 바라는 점이 있다면?</div>
				<hr style="width: 99%">
				<ul>
				<li>칼퇴했으면 좋겠습니다.</li>
				<li>월급을 더 올려주었으면 좋겠습니다.</li>
				<li>사원을 더 뽑았으면 좋겠습니다.</li>
				</ul>
			</div>
			
			<br>
			
			<div style="display: flex; justify-content: flex-end;">
				<div><button type="button" style="width: 80px; height: 30px; border-radius: 5px; margin: 0px 15px; border: none; cursor: pointer;">목록</button></div>
			</div>
			
		</div>
</div>
</body>
</html>