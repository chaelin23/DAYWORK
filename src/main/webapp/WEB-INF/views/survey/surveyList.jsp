<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/survey.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

	<div class="main-king">

		<%@ include file="/index.jsp"%>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">

			<br>

			<form action="" onsubmit="return search();">
				<div class="top-menu">
					<div>
						<input type="text" id="search-input" placeholder="제목 검색">
						<button type="submit" class="button">검색</button>
					</div>
					<div>
						<select id="status">
							<option>-상태-</option>
							<option>진행중</option>
							<option>마감</option>
							<option>모두</option>
						</select>
					</div>

					<div style="flex: 1"></div>

					<div>
						<button type="button" class="button">설문하기</button>
					</div>

				</div>
			</form>

			<br> <br> <br>

			<table class="suveyList">
				<tr>
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

	<script>
		/* 검색 버튼 */
		function search() {
			var value = document.getElementById("search-input").value;

			if (value == "" || value.length == 0) {
				alert("검색할 설문 제목을 입력해주세요.");
				return false;
			} else {
				$('#suveyForm').submit();
			}
		}
	</script>

</body>
</html>