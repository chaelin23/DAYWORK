<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/collabo.css">
</head>
<body>
	<div class="main-king">
	<%@ include file="../common/mainLeft.jsp"%>

	<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div class="collabo-workBox">
				<div class="collabo-workBox-top">
					<div class="collabo-workBox-top-text">WORKBOX</div>
					<div class="collabo-workBox-top-search"><input type="text" id="workBox-search" placeholder="검색"></div>
					<div class="collabo-workBox-top-new"><button id="new"> + </button></div>
				</div>
				<hr style="margin-top:20px; margin-bottom: 20px;">
				<div class="collabo-workBox-content">
					<div class="collabo-workBox-btns">
						<div class="collabo-workBox-btn"><button id="call">요청</button></div>
						<div class="collabo-workBox-btn"><button id="progress">진행중</button></div>
						<div class="collabo-workBox-btn"><button id="finish">완료</button></div>
						<div class="collabo-workBox-btn"><button id="feedback">피드백</button></div>
						<div class="collabo-workBox-btn"><button id="postpone">보류</button></div>
					</div>
					<div class="collabo-workBox-boxes" >
						<!-- 요청 -->
						<div class="collabo-workBox-box-column">
							<div class="collabo-workBox-box">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
						</div>
						<!-- 진행중 -->
						<div class="collabo-workBox-box-column">
							<div class="collabo-workBox-box">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
						</div>
						<!-- 완료 -->
						<div class="collabo-workBox-box-column">
							<div class="collabo-workBox-box">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
						</div>
						<!-- 피드백 -->
						<div class="collabo-workBox-box-column">
							<div class="collabo-workBox-box">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
						</div>
						<!-- 완료 -->
						<div class="collabo-workBox-box-column">
							<div class="collabo-workBox-box">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr>
			<div class="collabo-create">
				<div class="collabo-create-box">
					<div class="collabo-crate-box-top">
						<div class="create-box-top-margin">업무요청하기</div>
					</div>
					<div class="collabo-crate-box-content">
						<div class="create-content-title">
							<input type="text" placeholder="제목을 작성하세요" style="border:none;">
						</div>
						<div class="create-content-add">
							<label>시작일자  :  <input id="create-add-date-a" type="date"> </label>
							<label>마감일자  :  <input id="create-add-date-b" type="date"> </label>
							<label> & <input id="create-add-people" type="text" placeholder="참여자를 선택하세요"></label>
						</div>
						<div class="create-content-content">
							<textarea id="create-content-style" rows="10" cols="96" placeholder="글을 작성하세요"></textarea>
						</div>
					</div>
					<div class="collabo-crate-box-bottom">
						<div class="create-box-bottom-margin">
							<div class="box-bottom-btn-status">
								<button id="b_call">요청</button>
								<button id="b_progress">진행중</button>
								<button id="b_finish">완료</button>
								<button id="b_feedback">피드백</button>
								<button id="b_postpone">보류</button>
							</div>
							<div class="box-bottom-btn-ab">
								<button id="box-bottom-btn-a">임시저장</button>
								<button id="box-bottom-btn-b">작성하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>

</body>
</html>