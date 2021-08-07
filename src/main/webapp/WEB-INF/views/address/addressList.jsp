<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/index.css">
</head>
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
<body>

	<div class="main-king">

		<%@ include file="/index.jsp"%>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">

			<br>

			<form>
				<div style="display: flex; justify-content: space-between; flex-direction: row; align-items: baseline;">
					<div>
						<input type="text" style="height: 20px;" placeholder="이름 검색">
						<button type="submit"
							style="width: 80px; height: 30px; border-radius: 5px; border: none; cursor: pointer">검색</button>
					</div>
					<div>
					<select style="width: 100px; height: 25px; border-radius: 3px; margin: 0px 10px;">
						<option>-부서-</option>
						<option>영업팀</option>
						<option>기술팀</option>
						<option>인사팀</option>
					</select>
					</div>
					<div>
					<select style="width: 100px; height: 25px; border-radius: 3px;">
						<option>-직급-</option>
						<option>부장</option>
						<option>차장</option>
						<option>과장</option>
						<option>대리</option>
						<option>사원</option>
					</select>
					</div>
					<div style="flex: 1"></div>
					<div>
						<button type="button"
							style="width: 80px; height: 30px; border-radius: 5px; margin: 0px 10px; border: none; cursor: pointer">삭제하기</button>
					</div>
					<div>
						<button type="button"
							style="width: 80px; height: 30px; border-radius: 5px; border: none; cursor: pointer">추가하기</button>
					</div>
				</div>
			</form>

			<br> <br> <br>

			<table class="addressList" style="">
				<tr class="test" style="font-size: 14px; border-bottom: 1px solid black;">
					<th style="width: 50px;"><input type="checkbox"
						style="size: 20px;"></th>
					<th style="width: 150px;">이름</th>
					<th style="width: 150px;">직급</th>
					<th style="width: 250px;">이메일</th>
					<th style="width: 150px;">전화번호</th>
					<th style="width: 150px;">회사</th>					
					<th style="width: 150px;">부서</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>현대</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>스타벅스</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>KT</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
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