<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업무기안서</title>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/approval.css">
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
<link rel ="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<script src="resources/js/jquery-3.6.0.min.js"></script>
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
			
		<div class="toolbar">
			<button class="style-btn">결재요청</button>
			<button class="style-btn">취소</button>
			<button class="style-btn">미리보기</button>
			<button class="style-btn select-ap">결재자선택</button>
		</div>
	<!-- 콘텐츠  큰 네모 -->
			<section class="content_wrap">
				<div class="report_type">
					<div class="form_content">
				<!-- 보낼내용들 -->
						<div class="style_form_table">
							<form class="form-magin">
								<table class="table-line">
						<!-- 기안자박스  -->
									<colgroup>
										<col width="310">
										<col width="490">
									</colgroup>
									<tbody>
										<tr>
											<td class="style-title" colspan="2">${ approvalForm.afTitle }</td>
										</tr>
										<tr>
											<td class="top-left">
											<table>
												<tbody>
											<tr>
												<td class="writer-box">기안자</td>
												<td class="writer-input"><input class="input-box" value="${loginUser.mName}" readonly></td>
											</tr>
											<tr>
												<td class="writer-box">소속</td>
												<td class="writer-input"><input class="input-box" value="${loginUser.dCode}" readonly></td>
											</tr>
											<tr>
												<td class="writer-box">기안일</td>
												<td class="writer-input"><input class="input-box" value="sysdate" readonly></td>
											</tr>
											<tr>
												<td class="writer-box">문서번호</td>
												<td class="writer-input"><input class="input-box" value="DW20210810001" readonly></td>
											</tr>
												</tbody>
											</table>
											</td>
						<!-- 결재란  -->		
											<td class="top-right">
												<br>
													<div class="sign-wrap">
														<table class="tb-sgin" >
															<tbody>
																<tr>
																	<th class="sign-t">신청</th>
																	<td class="sign-td">
																		<table class="sign-type1">
																			<tbody>
																				<tr class="sign-member">
																					<td class="sign-rank-wrap">
																						<span class="sign-rank">부장</span>
																					</td>
																				</tr>
																				<tr>
																					<td class="sign-name-wrap">
																						<span class="sign-name">남나눔</span>
																					</td>
																				</tr>
																				<tr>
																					<td>
																						<span class="sign-data"></span>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												<br>
											</td>
										</tr>
									</tbody>
								</table>
								
								<p>&nbsp;</p>	
							<!-- 결재란 박스 -->
<!-- 									<tbody class="tbody sign-body"> -->
<!-- 										<tr> -->
<!-- 											<td class="sign-box"> -->
<!-- 												<span class="sign-type1"> -->
<!-- 													<span class="sign-titl-wrap"> -->
<!-- 														<span class="sign-titl"> -->
<!-- 															<strong>신청자</strong> -->
<!-- 														</span> -->
<!-- 													</span> -->
													
													
<!-- 													<span class="sign-member-wrap"> -->
<!-- 														<span class="sign-member"> -->
<!-- 															<span class="sign-rank-wrap"> -->
<!-- 																<span class="sign-rank">부장</span> -->
<!-- 															</span> -->
<!-- 															<span class="sign-name-wrap"> -->
<!-- 																<span class="sign-name">강건강</span> -->
<!-- 															</span> -->
<!-- 															<span class=""> -->
<!-- 																<span class="sign-data">사인</span> -->
<!-- 															</span> -->
<!-- 														</span> -->
<!-- 													</span> -->
<!-- 												</span> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<!-- 									</tbody> -->
<!-- 								</table> -->
<!-- 								<br> -->
						<!-- 내용박스 -->
										
										<div id="ap-contents">${ approvalForm.afContent }
										</div>
<!-- 								<table class="content-table"> -->
<!-- 									<colgroup> -->
<!-- 										<col width="120"> -->
<!-- 										<col width="230"> -->
<!-- 										<col width="120"> -->
<!-- 										<col width="330"> -->
<!-- 									</colgroup> -->
<!-- 									<tbody> -->
<!-- 										<tr> -->
<!-- 											<td class="con-cate">시행일자</td> -->
<!-- 											<td class="con-date"><input type="text" class="ipt-editor" value="2021-08-11" style="width: 150px;"></td> -->
<!-- 											<td class="con-cate">협조부서</td> -->
<!-- 											<td class="con-dep"><input type="text" class="ipt-editor" value="영업팀" style="width: 150px;" ></td> -->
<!-- 										</tr>		 -->
<!-- 										<tr> -->
<!-- 											<td class="con-cate">합의</td> -->
<!-- 											<td class="con-dep" colspan="3"><input type="text" class="ipt-editor" value="합의하시죠" ></td> -->
<!-- 										</tr>		 -->
<!-- 										<tr> -->
<!-- 											<td class="con-cate">제목</td> -->
<!-- 											<td class="con-title" colspan="3"><input type="text" class="ipt-editor" value="필수값입니다"></td> -->
<!-- 										</tr>		 -->
<!-- 										<tr> -->
<!-- 											<td colspan="4" class="editor-text"> -->
<!--  												<div id="editor"></div> --> 
<!-- 											</td> -->
<!-- 										</tr>		 -->
<!-- 									</tbody> -->
<!-- 								</table> -->
								
							</form>
						</div>
					</div>
				</div>
			</section>
			<!-- 모달 -->
				<div class="ap-king">
					<div class="overlay">
						<div class="go_popup layer_normal" id="popup" style="width: 700px; height: 370px; top: 210px; position: fixed; left: 400px; z-index: 99;">				
						<header>	
								<h1>결재자 선택</h1>
						</header>
							<div class="ap_pop_content">
						<!-- 결재자 선택 -->
						<hr style="border:1px color= silver;">
						<div class="ap-search-wrap">
								<input onkeyup="filter()" type="text" class="ap-search" id="ap-search" placeholder="이름을 입력하세요">
								<button type="submit" class="ap-btn">검색</button>
								<span class="tit_type" >결재자선택</span>
						</div>
						<!-- 조직도트리 -->
						<div class="set_wrap">
							<div class="set_nav" id="appr_form_searchTree">
								<div class="content_tab_wrap">
									<div id="apTree" class="jstree">
										<ul>
											<li title="인사관리팀" class="jstree-open hr" id="hr">
												<a>인사관리팀</a>
												<ul>
													<li class="jstree-leaf" id="hr-team1">
														<a>문미미 부장</a>
													</li>
													<li class="jstree-leaf" id="hr-team2">
														<a>류라라 차장</a>
													</li>
													<li class="jstree-leaf" id="hr-team3">
														<a>도대담 과장</a>
													</li>
													<li class="jstree-leaf" id="hr-team4">
														<a>남나눔 대리</a>
													</li>
													<li class="jstree-leaf" id="hr-team5">
														<a>강건강 팀원</a>
													</li>
												</ul>
											</li>
											<li title="회계관리팀" class="jstree-open " id="account">
												<a>회계관리팀</a>
												<ul>
													<li class="jstree-leaf" id="ac-team1">
														<a>박하선 부장</a>
													</li>
													<li class="jstree-leaf" id="ac-team2">
														<a>김대호 차장</a>
													</li>
													<li class="jstree-leaf" id="ac-team3">
														<a>최관우 과장</a>
													</li>
													<li class="jstree-leaf" id="ac-team4">
														<a>이다름 대리</a>
													</li>
													<li class="jstree-leaf" id="ac-team5">
														<a>박가람 팀원</a>
													</li>
												</ul>
											</li>
											<li title="마케팅팀" class="jstree-open" id="market">
												<a>마케팅팀</a>
												<ul>
													<li class="jstree-leaf" id="mk-team1">
														<a>박겨울 부장</a>
													</li>
													<li class="jstree-leaf" id="mk-team2">
														<a>최여름 차장</a>
													</li>
													<li class="jstree-leaf" id="mk-team3">
														<a>장가을 과장</a>
													</li>
													<li class="jstree-leaf" id="mk-team4">
														<a>김봄 대리</a>
													</li>
													<li class="jstree-leaf" id="mk-team5">
														<a>이바다 팀원</a>
													</li>
												</ul>
											</li>
											<li title="국내영업팀" class="jstree-open ds" id="doSales">
												<a>국내영업팀</a>
												<ul>
													<li class="jstree-leaf" id="ds-team1">
														<a>남산 부장</a>
													</li>
													<li class="jstree-leaf" id="ds-team2">
														<a>한강 차장</a>
													</li>
													<li class="jstree-leaf" id="ds-team3">
														<a>박마루 과장</a>
													</li>
													<li class="jstree-leaf" id="ds-team4">
														<a>김우빈 대리</a>
													</li>
													<li class="jstree-leaf" id="ds-team5">
														<a>윤건 팀원</a>
													</li>
												</ul>
											</li>
											<li title="해외영업팀" class="jstree-open os" id="ovSales">
												<a>해외영업팀</a>
												<ul>
													<li class="jstree-leaf" id="os-team1">
														<a>박초록 부장</a>
													</li>
													<li class="jstree-leaf" id="os-team2">
														<a>이하얀 차장</a>
													</li>
													<li class="jstree-leaf" id="os-team3">
														<a>오파랑 과장</a>
													</li>
													<li class="jstree-leaf" id="os-team4">
														<a>박보라 대리</a>
													</li>
													<li class="jstree-leaf" id="os-team5">
														<a>강노랑 팀원</a>
													</li>
												</ul>
											</li>
											<li title="기술지원팀" class="jstree-open tc" id="tech">
												<a>기술지원팀</a>
												<ul>
													<li class="jstree-leaf" id="tc-team1">
														<a>윤가람 부장</a>
													</li>
													<li class="jstree-leaf" id="tc-team2">
														<a>유하나 차장</a>
													</li>
													<li class="jstree-leaf" id="tc-team3">
														<a>이샛별 과장</a>
													</li>
													<li class="jstree-leaf" id="tc-team4" value="김소리">
														<a>김소리 대리</a>
													</li>
													<li class="jstree-leaf" id="tc-team5">
														<a>표우빈 팀원</a>
												</ul>
											</li>
											<li title="총무팀" class="jstree-open ad" id="ad">
												<a>총무팀</a>
												<ul>
													<li class="jstree-leaf" id="ad-team1">
														<a>이건희 부장</a>
													</li>
													<li class="jstree-leaf" id="ad-team2">
														<a>유제니 차장</a>
													</li>
													<li class="jstree-leaf" id="ad-team3">
														<a>이시영 과장</a>
													</li>
													<li class="jstree-leaf" id="ad-team4">
														<a>서현진 대리</a>
													</li>
													<li class="jstree-leaf" id="ad-team5">
														<a>이지은 팀원</a>
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
											<table class="dnd-table" id="dnd-table">
												<tr class="ap-select-bar">
													<th class="th1">번호</th>
													<th class="th1">분류</th>
													<th class="th1">이름</th>
													<th class="th1">부서</th>
												</tr>
												<tr>
												<th colspan="4" class="th1">승인</th>
												</tr>
												<tr class="ap-select1" id="1">
													<th class="th1">1</th>
													<th class="th1">기안</th>
													<th class="th1">강건강</th>
													<th class="th1">영업팀</th>
												</tr>
												<tr>
												<th colspan="4" class="th1" >결재</th>
												</tr>
												<tr class="ap-select2 draggable" id="2">
													<th class="th1">1</th>
													<th class="th1">결재</th>
													<th class="th1 select1"></th>
													<th class="th1">영업팀</th>
												</tr>
												<tr class="ap-select3 draggable" id="3">
													<th class="th1">2</th>
													<th class="th1">결재</th>
													<th class="th1">도대담</th>
													<th class="th1">영업팀</th>
												</tr>
												<tr class="ap-select4 draggable" id="4">
													<th class="th1">3</th>
													<th class="th1">결재</th>
													<th class="th1">류라라</th>
													<th class="th1">영업팀</th>
												</tr>
												
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
			</div>
		</div>
	</div>
	<script>
	
	const editor = new toastui.Editor({
		  el: document.querySelector('#editor'),
		  height: '600px',
		  initialEditType: 'wysiwyg',
		  previewStyle: 'vertical'
		});
	document.querySelector('#ap-contents').insertAdjacentHTML('afterbegin' ,editor.getHtML());
	console.log(editor.getHTML());

	</script>
	<script>	
	$(document).ready(function(){
		$('.ap-king').hide();
		$modal = $('.ap-king');
			
			$('.select-ap').on('click', function(){
				$('.ap-king').addClass('active');
				$('.go_popup').addClass('active');
				$('.ap_pop_content').addClass('stop-scroll');
				$modal.show();
			});
			
			$('.cancel-btn').on('click', function(){
				$('.ap-king').removeClass('active');
				$('.go_popup').removeClass('active');
				$('.ap_pop_content').addClass('stop-scroll');
				$modal.hide();
			});
			
		});

	
	$(document).ready(function(){
			$('#apTree').jstree({
	 			"plugins" : ["wholerow","checkbox" ,"dnd", "search"],
// 	 			"plugins" : ["wholerow", "checkbox" ,"dnd"],
			'core' : { 
				"check_callback" :true ,
				'data' : [ 
					{ "id" : "hr", "parent" : "#", "text" : "인사관리팀" },
					{ "id" : "account", "parent" : "#", "text" : "회계관리팀" },
					{ "id" : "market", "parent" : "#", "text" : "마케팅팀" },
					{ "id" : "doSales", "parent" : "#", "text" : "국내영업팀" },
					{ "id" : "ovSales", "parent" : "#", "text" : "해외영업팀" },
					{ "id" : "tech", "parent" : "#", "text" : "기술지원팀" },
					{ "id" : "ad", "parent" : "#", "text" : "총무팀" },
					
					{ "id" : "hr-team1", "parent" : "hr", "text" : "문미미 부장" },
					{ "id" : "hr-team2", "parent" : "hr", "text" : "류라라 차장" },
					{ "id" : "hr-team3", "parent" : "hr", "text" : "도대담 과장" },
					{ "id" : "hr-team4", "parent" : "hr", "text" : "남나눔 대리" },
					{ "id" : "hr-team5", "parent" : "hr", "text" : "강건강 팀원" },

					{ "id" : "ac-team1", "parent" : "account", "text" : "박하선 부장" },
					{ "id" : "ac-team2", "parent" : "account", "text" : "김대호 차장" },
					{ "id" : "ac-team3", "parent" : "account", "text" : "최관우 과장" },
					{ "id" : "ac-team4", "parent" : "account", "text" : "이다름 대리" },
					{ "id" : "ac-team5", "parent" : "account", "text" : "박가람 팀원" },
					
					{ "id" : "mk-team1", "parent" : "market", "text" : "박겨울 부장" },
					{ "id" : "mk-team2", "parent" : "market", "text" : "최여름 차장" },
					{ "id" : "mk-team3", "parent" : "market", "text" : "장가을 과장" },
					{ "id" : "mk-team4", "parent" : "market", "text" : "김봄 대리" },
					{ "id" : "mk-team5", "parent" : "market", "text" : "이바다 팀원" },
					
					{ "id" : "ds-team1", "parent" : "doSales", "text" : "남산 부장" },
					{ "id" : "ds-team2", "parent" : "doSales", "text" : "한강 차장" },
					{ "id" : "ds-team3", "parent" : "doSales", "text" : "박마루 과장" },
					{ "id" : "ds-team4", "parent" : "doSales", "text" : "김우빈 대리" },
					{ "id" : "ds-team5", "parent" : "doSales", "text" : "윤건 팀원" },
					
					{ "id" : "os-team1", "parent" : "ovSales", "text" : "박초록 부장" },
					{ "id" : "os-team2", "parent" : "ovSales", "text" : "이하얀 차장" },
					{ "id" : "os-team3", "parent" : "ovSales", "text" : "오파랑 과장" },
					{ "id" : "os-team4", "parent" : "ovSales", "text" : "박보라 대리" },
					{ "id" : "os-team5", "parent" : "ovSales", "text" : "강노랑 팀원" },
					
					{ "id" : "tc-team1", "parent" : "tech", "text" : "윤가람 부장" },
					{ "id" : "tc-team2", "parent" : "tech", "text" : "유하나 차장" },
					{ "id" : "tc-team3", "parent" : "tech", "text" : "이샛별 과장" },
					{ "id" : "tc-team4", "parent" : "tech", "text" : "김소리 대리" },
					{ "id" : "tc-team5", "parent" : "tech", "text" : "표우빈 팀원" },
					
					{ "id" : "ad-team1", "parent" : "ad", "text" : "이건희 부장" },
					{ "id" : "ad-team2", "parent" : "ad", "text" : "유제니 차장" },
					{ "id" : "ad-team3", "parent" : "ad", "text" : "이시영과장" },
					{ "id" : "ad-team4", "parent" : "ad", "text" : "서현진 대리" },
					{ "id" : "ad-team5", "parent" : "ad", "text" : "이지은 팀원" }
					    ] 
				},
			"search": {
				"show_only_matches": true,
				"show_only_matches_children" : true,

			}
			
			});
			
			
			$("#apTree").on("changed.jstree", function(e, data){
				if(data.selected.length){
					
					$(data.selected).each(function(idx){
						var node= data.instance.get_node(data.selected[idx]);
						console.log('the selected node is:' + node.text);
						$('.select1').append(node.text);
					});
				}


			});
			
			
		});
	
	
	
	

	</script>
	<script>
	$(document).on ('click','.jstree-leaf', function(){
			//var get= $('.jstree-leaf').attr(id);
			var get= $('.jstree-leaf').text();
			console.log(get);
// 			$('.select1').append(get);
			//박하선 부장 김대호 차장 최관우 과장 이다름 대리 박가람 팀원 
			//팀이 선택되서 다가져오게됨 
			
			
		});
	
// 			$(".ap-btn").on("click", function(){
// 				$("#apTree").submit(function(event){
// 					  event.preventDefault();
// 					  var searchString = $('#apTree input[name=groupName]').val();
// 					  if(groupName != ''){
// 					   $("#jstree").jstree("search", searchString);

// 					  }else{

// 					   $("#jstree").jstree("search", '');

// 					  }

					  

// 					 });


				
// 			$("#apTree").jstree(".ap-search", searchString);
			
// 			});
	
	 function filter(){
			$(".ap-btn").on("click", function(){
 				$("#apTree").submit(function(event){
					  event.preventDefault();
 					  var searchString = $('.ap-search').val();
					  if( searchString != ''){
 					   $("#jstree").jstree("search", searchString);

					  }else{
					   $("#jstree").jstree("search", '');

 					  }

					 });
		
		});

	 };
	</script>
	
	


</body>
</html>