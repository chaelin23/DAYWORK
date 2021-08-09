<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재리스트</title>
<link rel="stylesheet" href="resources/css/approval.css">
<link rel="stylesheet" href="resources/css/index.css">
</head>
<body>

<div class="main-king">

<%@ include file = "/index.jsp" %>

<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div class="ap-main-title"></div>
			<button class= "writeBtn" id="writeBtn">결제</button>
				<hr style="margin-bottom:50px; border:1px color= silver;">
			<div class="board-header"> <!-- 제목 -->
				<div class="ap-box-line">
				<div class="ap-box"><br>
				<div class="af-title">제목 : 업무협조</div>
				<div class="ap-date">기안일: 2021-08-01</div>
				<div class="ap-sender">기안자: 류라라</div>
				</div>
				<div class="ap-box"><br>
				<div class="af-title">제목 : 업무기안</div>
				<div class="ap-date">기안일: 2021-08-02</div>
				<div class="ap-sender">기안자: 남나눔</div>
				</div>
				<div class="ap-box"><br>
				<div class="af-title">제목 : 품의서</div>
				<div class="ap-date">기안일: 2021-08-03</div>
				<div class="ap-sender">기안자: 도대담</div>
				</div>
				<div class="ap-box"><br>
				<div class="af-title">제목 : 사유서</div>
				<div class="ap-date">기안일: 2021-08-04</div>
				<div class="ap-sender">기안자: 류라라</div>
				</div>
				</div>
					<div class="board-title-wrap">
					</div>
			</div>
				<div class="board-content">
			<div class="ap-main-title">진행결재리스트</div>
			<hr style="margin-bottom:50px; border:1px color= silver;">
			<div class="board-body">
			<!-- 결재진행문서 테이블-->
				<table class="ap-table type_nomal">
					<thead>
						 <tr class="title_sort">
							<td class="th2">
								<span>기안일</span>
							</td>
							<td class="th2">
								<span>양식</span>
							</td>
							<td class="th2">
								<span>제목</span>
							</td>
							<td class="th2">
								<span>문서번호</span>
							</td>
							<td class="th2">
								<span>결재상태</span>
							</td>
						</tr>
					</thead>
					<!-- 결재진행문서 내용 -->
					<tbody>
						<tr>
							<td class="th2">
								<span>2021-08-01</span>
							</td>
							<td class="th2">
								<span>기안</span>
							</td>
							<td class="th2">
								<span>업무협조</span>
							</td>
							<td class="th2">
								<span>dw20210801001</span>
							</td>
							<td class="th2">
								<span><button type="submit" class="ap-not-btn" readonly>진행</button></span>
							</td>
						</tr>
							<tr>
							<td class="th2">
								<span>2021-08-02</span>
							</td>
							<td class="th2">
								<span>품의</span>
							</td>
							<td class="th2">
								<span>지출결의서</span>
							</td>
							<td class="th2">
								<span>dw20210802005</span>
							</td>
							<td class="th2">
								<span><button type="submit" class="ap-not-btn" readonly>진행</button></span>
							</td>
						</tr>	<tr>
							<td class="th2">
								<span>2021-08-03</span>
							</td>
							<td class="th2">
								<span>사유서</span>
							</td>
							<td class="th2">
								<span>지각사유서</span>
							</td>
							<td class="th2">
								<span>dw20210803006</span>
							</td>
							<td class="th2">
								<span><button type="submit" class="ap-not-btn" readonly>진행</button></span>
							</td>
						</tr>
					</tbody>
				</table> 
				</div>
			</div>
			<div class="ap-footer">
				<div class="ap-main-title">완료결재리스트</div>
				<hr style="margin-bottom:50px; border:1px color= silver;">
				<div class="board-body">
				<table class="ap-table type_nomal">
					<thead>
						 <tr class="title_sort">
							<td class="th2">
								<span>기안일</span>
							</td>
							<td class="th2">
								<span>양식</span>
							</td>
							<td class="th2">
								<span>제목</span>
							</td>
							<td class="th2">
								<span>문서번호</span>
							</td>
							<td class="th2">
								<span>결재상태</span>
							</td>
						</tr>
					</thead>
					<!-- 결재진행문서 내용 -->
					<tbody>
						<tr>
							<td class="th2">
								<span>2021-08-01</span>
							</td>
							<td class="th2">
								<span>기안</span>
							</td>
							<td class="th2">
								<span>업무협조</span>
							</td>
							<td class="th2">
								<span>dw20210801001</span>
							</td>
							<td class="th2">
								<span>완료</span>
							</td>
						</tr>
						<tr class="title_sort">
							<td class="th2">
								<span>2021-08-02</span>
							</td>
							<td class="th2">
								<span>품의</span>
							</td>
							<td class="th2">
								<span>지출결의서</span>
							</td>
							<td class="th2">
								<span>dw20210802005</span>
							</td>
							<td class="th2">
								<span>완료</span>
							</td>
						</tr>	<tr>
							<td class="th2">
								<span>2021-08-03</span>
							</td>
							<td class="th2">
								<span>사유서</span>
							</td>
							<td class="th2">
								<span>지각사유서</span>
							</td>
							<td class="th2">
								<span>dw20210803006</span>
							</td>
							<td class="th2">
								<span>완료</span>
							</td>
						</tr>
					</tbody>
				</table> 
				</div>
			</div>
		</div>
	</div>
		
</body>
</html>