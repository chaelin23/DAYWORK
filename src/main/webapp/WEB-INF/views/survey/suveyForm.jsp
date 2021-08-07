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
			<div style="font-size: 20px;">설문 작성</div>
			<br>
			<div style="border: 1px solid lightgray; border-radius: 3px;">
			<table style="line-height: 35px;">
				<tr>
					<td style="width: 150px;">설문 제목</td>
					<td style="width: 500px;"><input type="text" style="width: 500px;"></td>
				</tr>
				<tr>
					<td style="width: 150px;">설문 내용</td>
					<td style="width: 500px;"><textarea rows="5" cols="65" style="resize: none"></textarea></td>
				</tr>
				<tr>
					<td style="width: 150px;">설문 기간</td>
					<td style="width: 500px;"><input type="date">&nbsp;~&nbsp;<input type="date"></td>
				</tr>
			</table>
			</div>
			
			<br>
			
			<div style="border: 1px solid lightgray; border-radius: 3px;">
				<table style="line-height: 25px;">
					<tr>
						<td style="width: 150px;">질문</td>
						<td style="width: 500px;"><input type="text" style="width: 400px;"></td>
					</tr>
					<tr>
						<td style="width: 150px;">보기</td>
						<td style="width: 500px;"><input type="radio" name="sample"><input type="text" style="width: 350px;">&nbsp;X</td>
					</tr>
					<tr>
						<td style="width: 150px;"></td>
						<td style="width: 500px;"><input type="radio" name="sample"><input type="text" style="width: 350px;">&nbsp;X</td>
					</tr>
					<tr>
						<td style="width: 150px;"></td>
						<td style="width: 500px;"><input type="radio" name="sample"><input type="text" style="width: 350px;">&nbsp;X</td>
					</tr>				
				</table>	
				<div class="Question-Btn" style="display: flex; justify-content: space-between;  margin-bottom: 7px;">
					<div></div>
					<div style="margin-right: 20px;">보기 추가</div>
					<div style="margin: 0px 20px;">삭제</div>
				</div>
			</div>

			<br>

			<div style="border: 1px solid lightgray; border-radius: 3px;">
				<table style="line-height: 25px;">
					<tr>
						<td style="width: 150px;">질문</td>
						<td style="width: 500px;"><input type="text" style="width: 400px;"></td>
					</tr>
					<tr>
						<td style="width: 150px;">보기</td>
						<td style="width: 500px;"><input type="radio" name="sample"><input type="text" style="width: 350px;">&nbsp;X</td>
					</tr>
					<tr>
						<td style="width: 150px;"></td>
						<td style="width: 500px;"><input type="radio" name="sample"><input type="text" style="width: 350px;">&nbsp;X</td>
					</tr>	
				</table>
				<div class="Question-Btn" style="display: flex; justify-content: space-between; margin-bottom: 7px;">
					<div></div>
					<div style="margin-right: 20px;">보기 추가</div>
					<div style="margin: 0px 20px;">삭제</div>
				</div>	
			</div>
			
			<br>
			
			<div style="border: 1px solid lightgray; border-radius: 3px;">
				<table style="line-height: 25px;">
					<tr>
						<td style="width: 150px;">질문</td>
						<td style="width: 500px;"><input type="text" style="width: 400px;"></td>
					</tr>
				</table>
				
				<div class="Question-Btn" style="display: flex; justify-content: flex-end; margin-bottom: 7px;">
					<div style="margin: 0px 20px;">삭제</div>
				</div>	
			</div>
			
			<br>
			
			<div style="display: flex; justify-content: center;">
			<div><button style="width: 150px; height: 30px; border-radius: 5px; margin: 0px 15px; border: none; cursor: pointer">질문 추가하기</button></div>
			</div>
			
			<br><br>
			
			<div style="display: flex; justify-content: center;">
				<div><button type="submit" style="width: 80px; height: 30px; border-radius: 5px; background: skyblue; margin: 0px 15px; border: none; cursor: pointer">작성 완료</button></div>
				<div><button type="button" style="width: 80px; height: 30px; border-radius: 5px; margin: 0px 15px; border: none; cursor: pointer">취소</button></div>
			</div>
			
		</div>
</div>
</body>
</html>