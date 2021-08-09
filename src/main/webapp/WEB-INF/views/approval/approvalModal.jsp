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
				<h1>결재양식 선택</h1>
<!-- 				모달창닫기버튼 -->
<!-- 				<a id="go_popup_close_icon" class="btn_layer_x"  title="닫기"> -->
<!-- 					<span class="ic"></span> -->
<!-- 					<span class="txt"></span> -->
<!-- 					</a> -->
			</header>
			<div class="ap_pop_content">
				<!-- 결재 양식 선택 -->
				<div class="ap-search-wrap">
						<input type="text" class="ap-search" placeholder="양식제목">
						<button type="submit" class="ap-btn">검색</button>
						<span class="tit_type" >상세정보</span>
				</div>
				<!-- 문서양식 -->
				<div class="set_wrap">
					<div class="set_nav" id="appr_form_searchTree">
						<div class="content_tab_wrap">
							<div id="formTree"class="jstree">
								<ul>
									<li title="일반" class="jstree-open">
										<a>일반</a>
										<ul>
											<li title="업무협조" class="jstree-leaf">
												<a>업무협조</a>
											</li>
											<li title="업무기안" class="jstree-leaf">
												<a>업무기안</a>
											</li>
										</ul>
									</li>
									
									<li title="총무" class="jstree-open">
										<a>총무</a>
										<ul>
											<li title="품의서" class="jstree-leaf">
												<a>품의서</a>
											</li>
											<li title="지출결의서" class="jstree-leaf">
												<a>지출결의서</a>
											</li>
										</ul>
									</li>
									
									<li title="지원" class="jstree-open">
										<a>지원</a>
										<ul>
											<li title="증명서신청" class="jstree-leaf">
												<a>증명서신청</a>
											</li>
										</ul>
									</li>
									
									<li title="인사" class="jstree-open">
										<a>인사</a>
										<ul>
											<li title="사유서" class="jstree-leaf">
												<a>사유서</a>
											</li>
											<li title="경위서" class="jstree-leaf">
												<a>경위서</a>
											</li>
										</ul>
									</li>	
								</ul>
							</div>
						</div>
					</div>
					
					<!-- 문서정보 form_detail -->
				<div class="doc_info">
						<form>
							<div class="doc-detail">
							<fieldset>
								<table class="form_detail" class="form_type tb_doc_info">
									<tbody id="form_detail_tbody">
										<tr>
											<th><span class="title">제목</span></th>
											<td>업무기안</td>
										</tr>
										<tr>
											<th><span class="title">보존연한</span></th>
											<td>5년</td>
										</tr>
										<tr>
											<th><span class="title">기안부서</span></th>
											<td>영업팀</td>
<!-- 											<select> -->
<!-- 											<option>경영지원팀</option> -->
<!-- 											<option>연구개발팀</option> -->
<!-- 											<option>개발1팀</option> -->
<!-- 											<option>개발2팀</option> -->
<!-- 											<option>영업팀</option> -->
<!-- 											<option>마케팅팀</option> -->
<!-- 											<option>인사팀</option> -->
<!-- 											</select> -->
										</tr>
									</tbody>
								</table>
							</fieldset>
								</div>
							</form>
						</div>
					</div>
				</div>
			
			<footer class="btn_layer_wrap">
				<div class="go-ap-btn">
					<span><button class="ap-btn">다음</button></span>
					<span><button class="cancel-btn">취소</button></span>
				</div>				
			</footer>
		</div>
	</div>
</body>
</html>