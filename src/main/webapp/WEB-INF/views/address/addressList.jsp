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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>

	<div class="main-king">

		<%@ include file="../common/mainLeft.jsp"%>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">

			<br>

			<form action="search" id="addressForm" onsubmit="return search();">
				<div id="top-menu">
					<div class="search">
						<input type="text" id="search-input" placeholder="이름 검색">
						<button type="submit" class="button">검색</button>
					</div>
					<div>
						<select id="dept">
							<option>-부서-</option>
							<option>영업팀</option>
							<option>기술팀</option>
							<option>인사팀</option>
						</select>
					</div>

					<div>
						<select id="job">
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
						<button type="button" class="button button-margin" onclick="deleteAddress();">삭제하기</button>
					</div>
					<div>
						<button type="button" class="button" onclick="addAddress();">추가하기</button>
					</div>
				</div>
			</form>

			<br> <br> <br>

			<table class="addressList">
				<tr>
					<th style="width: 50px;"><input type="checkbox" id="all" onclick="selectAll();" style="size: 20px;"></th>
					<th style="width: 150px;">이름</th>
					<th style="width: 150px;">직급</th>
					<th style="width: 250px;">이메일</th>
					<th style="width: 150px;">전화번호</th>
					<th style="width: 150px;">회사</th>
					<th style="width: 150px;">부서</th>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check" onclick="selectOne();"></td>
					<td>홍길동</td>
					<td>팀원</td>
					<td>asdf@asdf.com</td>
					<td>010-1111-2222</td>
					<td>삼성</td>
					<td>영업부</td>
				</tr>
			</table>

			<!-- 테이블과 페이징 버튼 사이 공간  -->
			<div style="height: 70px">&nbsp;</div>

			<div style="text-align: center;">&lt;&lt; &nbsp;&nbsp; &lt;
				&nbsp;&nbsp; 1 &nbsp;&nbsp; 2 &nbsp;&nbsp; 3 &nbsp;&nbsp; 4
				&nbsp;&nbsp; 5 &nbsp;&nbsp; &gt; &nbsp;&nbsp; &gt;&gt;</div>

		</div>

	</div>

	<script>
		/* 체크박스 전체 선택 */
		function selectAll() {
			var check = document.getElementsByName("check");
			var all = document.getElementById("all");

			if (document.getElementById("all").checked) {
				for (var i = 0; i < check.length; i++) {
					check[i].checked = true;
				}
			} else {
				for (var i = 0; i < check.length; i++) {
					check[i].checked = false;
				}
			}
		}

		/* 체크박스 한개 선택 */
		function selectOne() {
			var check = document.getElementsByName("check");
			var all = document.getElementById("all");

			var count = 0;

			for (var i = 1; i < check.length; i++) {
				if (check[i].checked) {
					count++;
				}
			}

			if (count == 9) {
				all.checked = true;
			} else {
				all.checked = false;
			}
		}

		/* 검색 버튼 */
		function search() {
			var value = document.getElementById("search-input").value;

			if (value == "" || value.length == 0) {
				alert("검색할 이름을 입력해주세요.");
				return false;
			} else {
				$('#addressForm').submit();
			}
		}

		/* 삭제 버튼 */
		function deleteAddress() {
			var result = window.confirm("정말 삭제하시겠습니까?");

			if (reslut == false) {
				return false;
			} else {

			}
		}
	</script>
</body>
</html>