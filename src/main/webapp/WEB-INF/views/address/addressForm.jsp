<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/address.css">
</head>
<body>

	<div class="main-king">

		<%@ include file="/index.jsp"%>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div class="address-title">주소록 등록</div>

			<br> <br> <br>
			<form>
				<table id="address-enroll" class="table-form">
					<tr>
						<td class="address-table-margin">사진</td>
						<td>
							<div class="photo">
								<div class="basic-photo"></div>
								<button type="button" class="photo-button">등록</button>
							</div>
						</td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>회사</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>부서</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>직위</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>회사전화번호</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>회사 주소</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>메모</td>
						<td><textarea cols="50" rows="7"></textarea></td>
					</tr>
				</table>

				<br>

				<div>
					<button type="submit" class="button point button-margin">등록</button>
					<button type="button" class="button" onclick="history.back();">뒤로가기</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>