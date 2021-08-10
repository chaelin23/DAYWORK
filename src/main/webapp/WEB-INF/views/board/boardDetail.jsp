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
<body>

<div class="main-king">

<%@ include file="../common/mainLeft.jsp"%>

<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div class="board-header"> <!-- 제목 -->
				<div class="board-cate-btn"><button id="board-cate-btn">개발1팀</button></div>
				<div class="board-title">점심 같이 가실 분 계신가요?</div>
					<div class="board-title-wrap">
						<div class="board-itsme">
							<div class="board-itsme-photo"></div>
							<div class="board-itsme-name">강건강</div>
							<div class="board-itsme-position">팀원</div>
						</div>
						<div class="board-num">
							<div class="board-num-date">7.15</div>
							<div class="board-num-count">조회수 12</div>
						</div>
					</div>
			</div>
			<hr style="margin-bottom:50px; border:1px color= silver;">
			<div class="board-body"> <!-- 내용 -->
				<div class="board-content">
					안녕하세요!<br>
					저희 회사에서 도보 5분거리에 새로운 식당이 생겼습니다.<br>
					<br>
					<br>
					지난주부터 오픈 준비에 정신 없어보이던데 어제 오픈을 해 행사를 하더군요.<br>
					이미 다들 알고계시죠? :)<br>
					<br>
					<br>
					제가 오늘 출근 길에 오픈행사 쿠폰 4장을 받아왔으니, 같이 가실 분 계시면 댓글 부탁드립니다.<br>
					메뉴는 오늘 더위를 날려줄 냉면입니다.<br>
				</div>
			</div>
			<div class="board-footer"> <!-- 댓글 -->
				<div class="board-comment-title">댓글 2</div>
				<hr style="margin-bottom:30px; border:1px color= silver;">
				<div class="board-comment-new">
					<div class="board-comment-new-photo"></div>
					<div class="board-comment-new-text"><input type="text" id="new-text"></div>
					<div class="board-comment-new-btn"><button id="new-btn">등록</button></div>
				</div>
				<div class="board-comment-old">
					<div class="board-comment-old-itsme">
						<div class="board-comment-old-itsme-photo" id="nam"></div>
						<div class="board-comment-old-itsme-name">남나눔</div>
						<div class="board-comment-old-itsme-position">팀장</div>
						<div class="board-comment-old-itsme-date">7.15</div>
					</div>
					<div class="board-comment-old-text">같이 갑시다.</div>더어
					<div class="board-comment-old-itsme">
						<div class="board-comment-old-itsme-photo" id="do"></div>
						<div class="board-comment-old-itsme-name">도대담</div>
						<div class="board-comment-old-itsme-position">대리</div>
						<div class="board-comment-old-itsme-date">7.15</div>
					</div>
					<div class="board-comment-old-text">저도 갈래요. 너무 덥네요.</div>
				</div>
			</div>
		</div>
	</div>
		
</body>
</html>