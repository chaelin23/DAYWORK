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

		<%@ include file="../common/mainLeft.jsp"%>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">

			<div class="address-title">주소록</div>

			<br> <br> <br>

			<table id="address-detail" class="table-form">
				<tr>
					<td class="address-table-margin">사진</td>
					<td><div class="photo">
							<div class="basic-photo"></div>
						</div></td>
				</tr>
				<tr>
					<td>이름</td>
					<td>홍길동</td>
				</tr>
				<tr>
					<td>회사</td>
					<td>신우상사</td>
				</tr>
				<tr>
					<td>부서</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td>직위</td>
					<td>대리</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>asdf@asdf.com</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>010-1111-2222</td>
				</tr>
				<tr>
					<td>회사전화번호</td>
					<td>02-123-1234</td>
				</tr>
				<tr>
					<td>회사 주소</td>
					<td>서울 강남구 역삼동</td>
				</tr>
				<tr>
					<td>메모</td>
					<td><textarea cols="50" rows="7" readonly>안녕하세요~!</textarea></td>
				</tr>
			</table>

			<br>

			<div>
				<button type="submit" class="button point button-margin">수정하기</button>
				<button type="button" class="button" onclick="history.back();">뒤로가기</button>
			</div>
		</div>
	</div>

</body>
</html>