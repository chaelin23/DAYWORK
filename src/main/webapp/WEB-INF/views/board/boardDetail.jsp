<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@page import="org.springframework.ui.Model, java.util.ArrayList, com.kh.DAYWORK.common.BMsgFile"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/index.css">
<script src ="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<div class="main-king">

<%@ include file="../common/mainLeft.jsp"%>

<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div class="board-detail-header"> <!-- 제목 -->
				<div class="board-cate-btn">
					<button id="board-cate-btn">${ b.bType }</button>
					<button id="board-cate-btn">${ b.bDept }</button>
					<c:url var="boardUpdate" value="goBoardUpdate.bo">
						<c:param name="bNo" value="${ b.bNo }" />
						<c:param name="currentPage" value="${ currentPage }" />
					</c:url>
					<c:url var="boardDelete" value="bDelete.bo">
						<c:param name="bNo" value="${ b.bNo }" />
					</c:url>
					<button class="board-update" onclick="'${ boardDelete }'">삭제</button>					
					<button class="board-update" onclick="location.href='${ boardUpdate }'">수정</button>
				</div>
				<div class="board-detail-title">${ b.bTitle }</div>
					<div class="board-detail-title-wrap">
						<div class="board-itsme">
							<div class="board-itsme-photo"></div>
							<div class="board-itsme-name">${ b.mName }</div>
							<div class="board-itsme-position">팀원</div>
						</div>
						<div class="board-detail-num">
							<div class="board-num-date">${ b.bModifyDate }</div>
							<div class="board-detail-num-count">조회수 ${ b.bCount }</div>
						</div>
					</div>
			</div>
			<hr style="border:1px color= silver;">
			<div class="board-detail-file-box">
				<c:if test="${ !empty files }">
					<c:forEach var="f" items="${ files }">
						<a href="${ contextPath }/resources/buploadFiles/${ f.fRename }" download="${ f.fOrigin }" class="board-detail-file-text">${ f.fOrigin }</a><br>
					</c:forEach>
				</c:if>
			</div>
			<div class="board-detail-body"> <!-- 내용 -->
				<div class="board-detail-content">
					${ b.bContent }
<!-- 					안녕하세요!<br> -->
<!-- 					저희 회사에서 도보 5분거리에 새로운 식당이 생겼습니다.<br> -->
<!-- 					<br> -->
<!-- 					<br> -->
<!-- 					지난주부터 오픈 준비에 정신 없어보이던데 어제 오픈을 해 행사를 하더군요.<br> -->
<!-- 					이미 다들 알고계시죠? :)<br> -->
<!-- 					<br> -->
<!-- 					<br> -->
<!-- 					제가 오늘 출근 길에 오픈행사 쿠폰 4장을 받아왔으니, 같이 가실 분 계시면 댓글 부탁드립니다.<br> -->
<!-- 					메뉴는 오늘 더위를 날려줄 냉면입니다.<br> -->
				</div>
			</div>
			<div class="board-detail-footer"> <!-- 댓글 -->
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
					<div class="board-comment-old-text">같이 갑시다.</div>
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
	<script>
		var date = $('.board-num-date').text().substring(5, 10);
		$('.board-num-date').text(date);
	</script>
		
</body>
</html>