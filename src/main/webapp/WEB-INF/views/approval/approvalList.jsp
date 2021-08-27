<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재리스트</title>
<link rel="stylesheet" href="resources/css/approval.css">
<link rel="stylesheet" href="resources/css/index.css">
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>

<div class="main-king">

<%@ include file="../common/mainLeft.jsp"%>

<!-- 오른쪽 내용 박스 -->
		<div class="div-main-right">
			<div class="ap-main-title"></div>
			<button class= "writeBtn" id="writeBtn">결재</button>
			
				<hr style="margin-bottom:50px; border:1px color= silver;">
			<div class="board-header"> <!-- 제목 -->
				<div class="ap-box-line">
				<div class="ap-box" id="ap-box1"><br>
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
			<hr style="margin-bottom:20px; border:1px color= silver;">
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
				<hr style="margin-bottom:20px; border:1px color= silver;">
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
	<!-- 모달 -->
	
		<div class="ap-king">
		<div class="overlay">
		<div class="go_popup layer_normal" id="popup" style="width: 700px; height: 370px; top: 190px; position: fixed; left: 600px; z-index: 99;">
			<header>
				<h1>결재양식 선택</h1>
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
							<div id="formTree" class="jstree">
								<ul>
									<li title="일반" class="jstree-open" id="general">일반
										 <ul>
											<li title="업무협조" class="jstree-leaf" id="g1">
												업무협조 
											</li>
											<li title="기안서" class="jstree-leaf" id="g2">
												기안서
											</li>
										</ul>
									</li>
									
									<li title="총무" class="jstree-open" id="paid">총무
										<ul>
											<li title="지출결의서" class="jstree-leaf" id="p1">
												지출결의서
											</li>
											<li title="품의서" class="jstree-leaf" id="p2">
												지출품의서
											</li>
										</ul>
									</li>
									
									<li title="지원" class="jstree-open" id="apply">지원
										<ul>
											<li title="증명서신청" class="jstree-leaf" id="a1">
												증명서신청
											</li>
										</ul>
									</li>
									
									<li title="인사" class="jstree-open" id="hr">인사
										<ul>
											<li title="사유서" class="jstree-leaf" id="h1">
												지각사유서
											</li>
<!-- 											<li title="경위서" class="jstree-leaf" id="h2"> -->
<!-- 												경위서 -->
<!-- 											</li> -->
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
											<td class="select-title"></td>
										</tr>
										<tr>
											<th><span class="title">보존연한</span></th>
											<td>5년</td>
										</tr>
										<tr>
											<th><span class="title">기안부서</span></th>
											<td> 
											<select class="select-team">
											<option>경영지원팀</option>
											<option>연구개발팀</option>
											<option>개발1팀</option>
											<option>개발2팀</option>
											<option>영업팀</option>
											<option>마케팅팀</option>
											<option>인사팀</option>
											</select>
											</td>
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
					<span><button class="ap-btn" id="apSubmit">다음</button></span>
					<span><button class="cancel-btn">취소</button></span>
				</div>				
			</footer>
		</div>
	</div>
</div>	
	
	
	
<script type="text/javascript">
	$(document).on('click','#apSubmit', function(){
		var title = $('.select-title').text();
		location.href="goInsert.ap?title="+ title;	
	});

	$(document).ready(function(){
		$('.ap-king').hide();
		$modal = $('.ap-king');
			
			$('.writeBtn').on('click', function(){
				$('.ap-king').addClass('active');
				$('.go_popup').addClass('active');
				$('.ap_pop_content').addClass('stop-scroll');
				$modal.show();
			});
			
			$('.cancel-btn').on('click', function(){
				$('.ap-king').removeClass('active');
				$('#popup').removeClass('active');
				$('.ap_pop_content').addClass('stop-scroll');
				$modal.hide();
			});
			
		});
		
	$(document).ready(function(){
		$('#formTree').jstree({
 			"plugins" : ["dnd"],
		'core' : { 
			"check_callback" :true ,
			'data' : [ 
				{ "id" : "general", "parent" : "#", "text" : "일반" },
				{ "id" : "paid", "parent" : "#", "text" : "총무" },
				{ "id" : "apply", "parent" : "#", "text" : "지원" },
				{ "id" : "hr", "parent" : "#", "text" : "인사" },
				
				{ "id" : "g1", "parent" : "general", "text" : "업무협조" },
				{ "id" : "g2", "parent" : "general", "text" : "기안서" },
				{ "id" : "p1", "parent" : "paid", "text" : "지출결의서" },
				{ "id" : "p2", "parent" : "paid", "text" : "지출품의서" },
				{ "id" : "a1", "parent" : "apply", "text" : "증명서신청" },
				{ "id" : "h1", "parent" : "hr", "text" : "지각사유서" }

				] 
			}
		
		});
		
		
		
	});
	
	$(document).on ('click','.jstree-leaf', function(){
		var get= $(this).text();
		console.log(get);
		$('.select-title').text(get);
		
		
	});
	
		

	

</script>

		
</body>
</html>