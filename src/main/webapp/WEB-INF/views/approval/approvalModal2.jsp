<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재리스트</title>
<link rel="stylesheet" href="resources/css/approval.css">
<link rel="stylesheet" href="resources/css/index.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
</head>
<body>

	<div class="ap-king">
<!-- 모달창뜨면  뒷배경까맣게	<div class="overlay"></div> -->
			
		<div class="go_popup layer_normal" id="gpopupLayer" style="width: 700px; height: 370px; top: 106px; position: fixed; left: 27.5px; z-index: 99;">
			<header>
				<h1>결재자 선택</h1>
<!-- 				모달창닫기버튼 -->
<!-- 				<a id="go_popup_close_icon" class="btn_layer_x"  title="닫기"> -->
<!-- 					<span class="ic"></span> -->
<!-- 					<span class="txt"></span> -->
<!-- 					</a> -->
			</header>
			<div class="ap_pop_content">
				<!-- 결재자 선택 -->
				<hr style="border:1px color= silver;">
				<div class="ap-search-wrap">
						<input type="text" class="ap-search" placeholder="이름을 입력하세요">
						<button type="submit" class="ap-btn">검색</button>
						<span class="tit_type" >결재자선택</span>
				</div>
				<!-- 조직도트리 -->
				<div class="set_wrap">
					<div class="set_nav" id="appr_form_searchTree">
						<div class="content_tab_wrap">
							<div id="apTree"class="jstree">
								<ul>
									<li title="경영지원팀" class="jstree-open">
										<a>경영지원팀</a>
										<ul>
											<li class="jstree-leaf">
												<a>류라라 차장</a>
											</li>
											<li class="jstree-leaf">
												<a>도대담 과장</a>
											</li>
											<li class="jstree-leaf">
												<a>남나눔 대리</a>
											</li>
											<li class="jstree-leaf">
												<a>강건강 팀원</a>
											</li>
										</ul>
									</li>
									
									<li title="연구개발팀" class="jstree-open">
										<a>연구개발팀</a>
										<ul>
											<li class="jstree-leaf">
												<a>류라라 차장</a>
											</li>
											<li class="jstree-leaf">
												<a>도대담 과장</a>
											</li>
											<li class="jstree-leaf">
												<a>남나눔 대리</a>
											</li>
											<li class="jstree-leaf">
												<a>강건강 팀원</a>
											</li>
										</ul>
									</li>
									<li class="jstree-open">
										<a>개발1팀</a>
										<ul>
											<li class="jstree-leaf">
												<a>류라라 차장</a>
											</li>
											<li class="jstree-leaf">
												<a>도대담 과장</a>
											</li>
											<li class="jstree-leaf">
												<a>남나눔 대리</a>
											</li>
											<li class="jstree-leaf">
												<a>강건강 팀원</a>
											</li>
										</ul>
									</li>
									<li class="jstree-open">
										<a>개발1팀</a>
										<ul>
											<li class="jstree-leaf">
												<a>류라라 차장</a>
											</li>
											<li class="jstree-leaf">
												<a>도대담 과장</a>
											</li>
											<li class="jstree-leaf">
												<a>남나눔 대리</a>
											</li>
											<li class="jstree-leaf">
												<a>강건강 팀원</a>
											</li>
										</ul>
									</li>
									<li class="jstree-open">
										<a>개발2팀</a>
										<ul>
											<li class="jstree-leaf">
												<a>류라라 차장</a>
											</li>
											<li class="jstree-leaf">
												<a>도대담 과장</a>
											</li>
											<li class="jstree-leaf">
												<a>남나눔 대리</a>
											</li>
											<li class="jstree-leaf">
												<a>강건강 팀원</a>
											</li>
										</ul>
									</li>
									<li class="jstree-open">
										<a>영업팀</a>
										<ul>
											<li class="jstree-leaf">
												<a>류라라 차장</a>
											</li>
											<li class="jstree-leaf">
												<a>도대담 과장</a>
											</li>
											<li class="jstree-leaf">
												<a>남나눔 대리</a>
											</li>
											<li class="jstree-leaf">
												<a>강건강 팀원</a>
											</li>
										</ul>
									</li>
									<li class="jstree-open">
										<a>마케팅팀</a>
										<ul>
											<li class="jstree-leaf">
												<a>류라라 차장</a>
											</li>
											<li class="jstree-leaf">
												<a>도대담 과장</a>
											</li>
											<li class="jstree-leaf">
												<a>남나눔 대리</a>
											</li>
											<li class="jstree-leaf">
												<a>강건강 팀원</a>
											</li>
										</ul>
									</li>
									<li class="jstree-open">
										<a>인사팀</a>
										<ul>
											<li class="jstree-leaf">
												<a>류라라 차장</a>
											</li>
											<li class="jstree-leaf">
												<a>도대담 과장</a>
											</li>
											<li class="jstree-leaf">
												<a>남나눔 대리</a>
											</li>
											<li class="jstree-leaf">
												<a>강건강 팀원</a>
											</li>
										</ul>
									</li>
								
									
								
								</ul>
							</div>
						</div>
					</div>
					
					<!-- 결재자선택칸 -->
				<div class="doc_info">
						<form>
							<div class="doc-detail">
								<div class="ap-person-table">
								<table>
									<tr class="ap-select-bar">
										<th class="th1">번호</th>
										<th class="th1">분류</th>
										<th class="th1">이름</th>
										<th class="th1">부서</th>
									</tr>
									<tr>
									<th colspan="4" class="th1">승인</th>
									</tr>
									<tr class="ap-select1">
										<th class="th1">1</th>
										<th class="th1">기안</th>
										<th class="th1">강건강</th>
										<th class="th1">영업팀</th>
									</tr>
									<tr>
									<th colspan="4" class="th1">결재</th>
									</tr>
									<tr class="ap-select2">
										<th class="th1">1</th>
										<th class="th1">결재</th>
										<th class="th1">남나눔</th>
										<th class="th1">영업팀</th>
									</tr>
									<tr class="ap-select3">
										<th class="th1">2</th>
										<th class="th1">결재</th>
										<th class="th1">도대담</th>
										<th class="th1">영업팀</th>
									</tr>
									<tr class="ap-select4">
										<th class="th1">3</th>
										<th class="th1">결재</th>
										<th class="th1">류라라</th>
										<th class="th1">영업팀</th>
									</tr>
									
<!-- 										<div class="ap-select1">기안 강건강 사원</div> -->
<!-- 										<div class="ap-select">승인자</div> -->
<!-- 										<div class="ap-select2">1 결재 남나눔 과장</div> -->
<!-- 										<div class="ap-select3">2 결재 도대담 차장</div> -->
<!-- 										<div class="ap-select3">3 결재 류라라 부장</div> -->
									</table>
								</div>
							</div>
						</form>
				</div>
			</div>
		</div>
			
			<footer class="btn_layer_wrap">
				<div class="go-ap-btn">
					<span><button class="ap-btn">확인</button></span>
					<span><button class="cancel-btn">취소</button></span>
				</div>				
			</footer>
		</div>
	</div>
</body>
</html>