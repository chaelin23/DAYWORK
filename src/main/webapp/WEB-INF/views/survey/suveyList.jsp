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
.addressList {
	/* border-top: 1px solid lightgray; */
	text-align: center;
	line-height: 40px;
	border-collapse: collapse;
}

table tr {
	border-bottom: 1px solid lightgray;
	font-size: 12px;
}
</style>
</head>
<body>

	<div class="main-king">

		<%@ include file="/index.jsp"%>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">

			<br>

			<form>
				<div
					style="display: flex; justify-content: space-between; flex-direction: row;">
					<div>
						<input type="text" style="height: 20px;" placeholder="제목 검색">
						<button type="submit"
							style="width: 80px; height: 30px; border-radius: 5px; border: none; cursor: pointer">검색</button>
					</div>
					<div>
						<button type="button"
							style="width: 80px; height: 30px; border-radius: 5px; border: none; cursor: pointer">추가하기</button>
					</div>
				</div>
			</form>

			<br> <br> <br>

			<table class="addressList" style="font-size: 14px;">
				<tr class="test" style="border-bottom: 1px solid black;">
					<th style="width: 50px;">번호</th>
					<th style="width: 450px;">설문 제목</th>
					<th style="width: 120px;">등록자</th>
					<th style="width: 100px;">작성일</th>
					<th style="width: 100px;">마감일</th>
					<th style="width: 100px;">상태</th>
				</tr>
				<tr>
					<td>10</td>
					<td>점심 메뉴 설문조사</td>
					<td>철수</td>
					<td>2021-7-10</td>
					<td>2021-7-10</td>
					<td>진행중</td>
				</tr>
				<tr>
					<td>9</td>
					<td>회사 만족도 설문조사</td>
					<td>영희</td>
					<td>2021-5-1</td>
					<td>2021-5-10</td>
					<td>마감</td>
				</tr>
				<tr>
					<td>8</td>
					<td>점심 메뉴 설문조사</td>
					<td>철수</td>
					<td>2021-7-10</td>
					<td>2021-7-10</td>
					<td>진행중</td>
				</tr>
				<tr>
					<td>7</td>
					<td>회사 만족도 설문조사</td>
					<td>영희</td>
					<td>2021-5-1</td>
					<td>2021-5-10</td>
					<td>마감</td>
				</tr>
				<tr>
					<td>6</td>
					<td>점심 메뉴 설문조사</td>
					<td>철수</td>
					<td>2021-7-10</td>
					<td>2021-7-10</td>
					<td>진행중</td>
				</tr>
				<tr>
					<td>5</td>
					<td>회사 만족도 설문조사</td>
					<td>영희</td>
					<td>2021-5-1</td>
					<td>2021-5-10</td>
					<td>마감</td>
				</tr>
				<tr>
					<td>4</td>
					<td>점심 메뉴 설문조사</td>
					<td>철수</td>
					<td>2021-7-10</td>
					<td>2021-7-10</td>
					<td>진행중</td>
				</tr>
				<tr>
					<td>3</td>
					<td>회사 만족도 설문조사</td>
					<td>영희</td>
					<td>2021-5-1</td>
					<td>2021-5-10</td>
					<td>마감</td>
				</tr>
				<tr>
					<td>2</td>
					<td>점심 메뉴 설문조사</td>
					<td>철수</td>
					<td>2021-7-10</td>
					<td>2021-7-10</td>
					<td>진행중</td>
				</tr>
				<tr>
					<td>1</td>
					<td>회사 만족도 설문조사</td>
					<td>영희</td>
					<td>2021-5-1</td>
					<td>2021-5-10</td>
					<td>마감</td>
				</tr>
				
			</table>
			<div style="height: 70px">&nbsp;</div>
			<div style="text-align: center;">&lt;&lt; &nbsp;&nbsp; &lt;
				&nbsp;&nbsp; 1 &nbsp;&nbsp; 2 &nbsp;&nbsp; 3 &nbsp;&nbsp; 4
				&nbsp;&nbsp; 5 &nbsp;&nbsp; &gt; &nbsp;&nbsp; &gt;&gt;</div>
		</div>

	</div>

</body>
</html>