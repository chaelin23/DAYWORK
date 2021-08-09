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
			<div class="title">설문 작성</div>

			<br>
			<form action="" onsubmit="return checkQuestion();">
				<div class="border">
					<table class="table">
						<tr>
							<td class="td-margin">설문 제목</td>
							<td><input type="text" class="suvey-question"></td>
						</tr>
						<tr>
							<td>설문 내용</td>
							<td><textarea rows="5" cols="69"></textarea></td>
						</tr>
						<tr>
							<td>설문 기간</td>
							<td><input type="date">&nbsp;~&nbsp;<input type="date"></td>
						</tr>
					</table>
				</div>

				<br>

				<div id="question">
					<div class="short border">
						<table class="table">
							<tr>
								<td class="td-margin">질문</td>
								<td><input type="text" class="question-length"></td>
							</tr>
							<tr>
								<td>보기</td>
								<td><input type="text" class="answer"><span	class="deleteObject">삭제</span></td>
							</tr>
							<tr>
								<td>보기</td>
								<td><input type="text" class="answer"><span	class="deleteObject">삭제</span></td>
							</tr>
						</table>
						<div class="add-object">
							<div></div>
							<div>
								<button type="button" class="object button">보기 추가</button>
							</div>
							<div>
								<button type="button" class="delete button">삭제</button>
							</div>
						</div>
					</div>

					<!-- <br> -->
					<div class="br">&nbsp;</div>

					<div class="short border">
						<table class="table">
							<tr>
								<td class="td-margin">질문</td>
								<td><input type="text" class="question-length"></td>
							</tr>
							<tr>
								<td>보기</td>
								<td><input type="text" class="answer"><span class="deleteObject">삭제</span></td>
							</tr>
							<tr>
								<td>보기</td>
								<td><input type="text" class="answer"><span	class="deleteObject">삭제</span></td>
							</tr>
						</table>
						<div class="add-object">
							<div></div>
							<div>
								<button type="button" class="object button">보기 추가</button>
							</div>
							<div>
								<button type="button" class="delete button">삭제</button>
							</div>
						</div>
					</div>

					<!-- <br> -->
					<div class="br">&nbsp;</div>

					<div class="multiple border">
						<table class="table">
							<tr>
								<td class="td-margin">질문</td>
								<td><input type="text" class="question-length"></td>
							</tr>
						</table>

						<div class="short-question">
							<div>
								<button type="button" class="delete button">삭제</button>
							</div>
						</div>
					</div>

					<!-- <br> -->
					<div class="br">&nbsp;</div>

				</div>

				<div class="center-button">
					<div>
						<button type="button" class="long-button">질문 추가하기</button>
					</div>
				</div>

				<br> <br>

				<div class="center-button">
					<div>
						<button type="submit" class="button point button-margin">작성 완료</button>
					</div>
					<div>
						<button type="button" class="button button-margin" onclick="history.back();">취소</button>
					</div>
				</div>
			</form>
		</div>
	</div>


	<script>
	
		// 객관식 보기 삭제
		$(document).on('click', '.deleteObject', function() {

			$(this).parent().parent().remove();
		});

		// 객관식 보기 추가
		$(document).on('click', '.object', function() {

			$(this).parent().parent().prev().append(getObject());
		});

		// 질문 삭제
		$(document).on('click', '.delete', function() {
			
			$(this).parent().parent().parent().next().remove();
			$(this).parent().parent().parent().remove();
		});

		// 질문 추가
		$('.long-button').click(function() {
			var type = window.confirm("예를 누르면 객관식 아니요 누르면 주관식");

			if (type == true) {
				$('#question').append(getShort());
			} else {
				$('#question').append(getMultiple());
			}
		});

		// 객관식 질문 코드
		function getShort() {

			var result = "";

			result = "<div class='short border'>"
					+ "<table class='table'>"
					+ "<tr>"
					+ "<td class='td-margin'>질문</td>"
					+ "<td><input type='text' class='question-length'></td>"
					+ "</tr>"
					+ "<tr>"
					+ "<td>보기</td>"
					+ "<td><input type='text' class='answer'><span class='deleteObject'>삭제</span></td>"
					+ "</tr>"
					+ "<tr>"
					+ "<td>보기</td>"
					+ "<td><input type='text' class='answer'><span class='deleteObject'>삭제</span></td>"
					+ "</tr>"
					+ "</table>"
					+ "<div class='add-object'>"
					+ "<div></div>"
					+ "<div><button type='button' class='object button'>보기 추가</button></div>"
					+ "<div><button type='button' class='delete button'>삭제</button></div>"
					+ "</div>" + "</div>" + "<div class='br'>&nbsp;</div>";

			return result;
		}

		// 주관식 질문 코드
		function getMultiple() {

			var result = "";

			result = "<div class='multiple border'>" + "<table class='table'>"
					+ "<tr>" + "<td class='td-margin'>질문</td>"
					+ "<td><input type='text' class='question-length'></td>"
					+ "</tr>" + "</table>" + "<div class='short-question'>"
					+ "<div>"
					+ "<button type='button' class='delete button'>삭제</button>"
					+ "</div>" + "</div>" + "</div>"
					+ "<div class='br'>&nbsp;</div>";

			return result;
		}

		// 객관식 보기 코드
		function getObject() {

			var result = "";

			result = "<tr>"
					+ "<td>보기</td>"
					+ "<td><input type='text' class='answer'><span class='deleteObject'>삭제</span></td>"
					+ "</tr>"

			return result;
		}
		
		// 질문 개수 확인
		function checkQuestion() {
			
			var num = $('#question').children();
			if(num.length == 0) {
				alert("질문 한개 이상이어야 설문을 등록할 수 있습니다.");
				return false;
			} else {
				return true;
			}
		}
	</script>
</body>
</html>