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
		border-radius: 3px;
	}
</style>
</head>
<body>

<div class="main-king">

<%@ include file = "/index.jsp" %>

<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div style="font-size: 20px;">
				주소록 등록</div>
				
			<br><br><br>
			
			<table style="line-height: 30px; font-size: 12px;">
				<tr>
					<td style="width: 150px;">사진</td>
					<td><div style="display: flex; align-items: baseline;"><div style="width: 120px; height: 120px; background: url('../image/man.png'); background-repeat: no-repeat; background-size: cover;"></div>
					<button type="button" style="width: 50px; height: 20px; border: 1px solid lightgray; background: white; cursor: pointer;">등록</button></div></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" style="width: 200px;" value=""></td>
				</tr>
				<tr>
					<td>회사</td>
					<td><input type="text" style="width: 200px;" value=""></td>
				</tr>
				<tr>
					<td>부서</td>
					<td><input type="text" style="width: 200px;" value=""></td>
				</tr>
				<tr>
					<td>직위</td>
					<td><input type="text" style="width: 200px;" value=""></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" style="width: 200px;" value=""></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" style="width: 200px;" value=""></td>
				</tr>
				<tr>
					<td>회사전화번호</td>
					<td><input type="text" style="width: 200px;" value=""></td>
				</tr>
				<tr>
					<td>회사 주소</td>
					<td><input type="text" style="width: 200px;" value=""></td>
				</tr>
				<tr>
					<td>메모</td>
					<td><textarea cols="50" rows="7" style="resize: none;"></textarea></td>
				</tr>
			</table>
			
			<br>
			<br>
			
			<div>
				<button type="submit" style="width: 80px; height: 30px; border-radius: 5px; background: skyblue; margin: 0px 15px; border: none; cursor: pointer">등록</button>
				<button type="button" style="width: 80px; height: 30px; border-radius: 5px; border: none; cursor: pointer">뒤로가기</button>
			</div>
		</div>
	</div>
</body>
</html>