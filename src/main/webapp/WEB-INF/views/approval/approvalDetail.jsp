<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업무기안서</title>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/approval.css">
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
<!-- <link rel ="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css"> -->
<!-- <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script> -->
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>

</head>
<body>
	<div class="main-king">
<%@ include file="../common/mainLeft.jsp"%>
<!-- 오른쪽 내용 박스 -->
	<div class="div-main-right">
		<form class="form-magin" action="goUpdate.ap" method="post">	
			<div class="toolbar">
				<input type="submit" id="goInsert" value="결재승인">
				<input type="submit" class="goUpdate2" id="goUpdate" value="반려">
				<button>인쇄</button>
				<c:if test="${ loginUser.mNo ==  ap.apReceiver}">
					<button class="goUpdate3">상신취소</button>
				</c:if>
				<button class="select-ap">결재자선택</button>
				<button onclick="goBack();">뒤로가기</button>
			</div>
	<!-- 콘텐츠  큰 네모 -->
			<section class="content_wrap">
				<div class="report_type">
					<div class="form_content">
						<div class="style_form_table">
								<table class="table-line">
						<!-- 기안자박스  -->
									<colgroup>
										<col style="width:90px">
										<col style="width:180px">
										<col style="width:90px">
										<col style="width:120px">
										<col style="width:90px">
									</colgroup>
									<tbody>
										<tr>
<%-- 										<input type="hidden" value="${approval.apCate}" id="cate" name="apCate"> --%>
											<td class="style-pay-title" colspan="2">${ approval.apTitle }</td>
<%-- 											<input type="hidden" name="apTitle" value="${ approval.apTitle }"> --%>
											<td class="top-right-pay" colspan="4">
												<br>
													<div class="sign-wrap">
														<table class="tb-sgin" >
															<tbody>
																<tr>
																	<th class="sign-t">결재</th>
																	<td class="sign-td">
																		<table class="sign-type1">
																			<tbody>
																				<tr>
																					<td class="sign-name-wrap">
<%-- 																						<span class="sign-name" ><c:out value="${approvalStatus.asMName }"></c:out></span> --%>
																						<span class="sign-name" ><c:out value="${approval.apReceiver }"></c:out></span>
																					</td>
																				</tr>
																				<tr>
																					<td>
																						<span class="sign-rank"></span>
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
										<tr>
												<td class="writer-box">기안소속</td>
												<td class="writer-input"><input class="input-box" readonly></td>
											
												<td class="writer-box">기안일</td>
												<td class="writer-input"><input class="input-box" name="apDate" value="${ approval.apDate}" readonly></td>
											
												<td class="writer-box">문서번호</td>
												<td class="writer-input"><input class="input-box" name="apNo" value="${ approval.apNo}" readonly></td>
											
											</tr>
											<tr>
												<td class="writer-box">기안자</td>
												<td class="writer-input "><input class="input-box sender" name="apSender" value= "${ approval.apSender}" readonly></td>
<%-- 												<input type="hidden" name ="apSender" value= "${ loginUser.mNo }" readonly> --%>
												
												<td class="writer-box">보존연한</td>
												<td class="writer-input"><input class="input-box"  name="apKeep" value="${ approval.apKeep}" readonly></td>
											
												<td class="writer-box">비밀등급</td>
												<td class="writer-input"><input class="input-box" value="1등급" readonly></td>
											</tr>
											<tr>
												<td class="con-cate" style="width:120px" colspan="2" >제목 </td>
												<td class="con-title" style="width:230" colspan="4" ><input type="text"  name ="apCtitle" class="input-box" value="${ approval.apCtitle }" readonly> </td>
											</tr>
									</tbody>
								</table>
								<p>&nbsp;</p>
						<!-- 내용박스 -->
										<div id="ap-contents">${ approval.apContent }</div>
									</div>
									
								</section>
							</form>
						</div>
					</div>
		<!-- 모달 -->
<!-- 				<div class="ap-king"> -->
<!-- 					<div class="overlay"> -->
<!-- 						<div class="go_popup layer_normal" id="popup" style="width: 700px; height: 370px; top: 210px; position: fixed; left: 400px; z-index: 99;">				 -->
<!-- 						<header>	 -->
<!-- 								<h1>결재자 선택</h1> -->
<!-- 						</header> -->
<!-- 							<div class="ap_pop_content"> -->
<!-- 						<div class="set_wrap"> -->
<!-- 							<div class="set_nav" id="appr_form_searchTree"> -->
<!-- 								<div class="content_tab_wrap"> -->
<!-- 								</div> -->
<!-- 							</div> -->
								
<!-- 								결재자선택칸 -->
<!-- 							<div class="doc_info"> -->
<!-- 									<form> -->
<!-- 										<div class="doc-detail"> -->
<!-- 											<div class="ap-person-table"> -->
											
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</form> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
						
<!-- 						<footer class="btn_layer_wrap"> -->
<!-- 							<div class="go-ap-btn"> -->
<!-- 								<span><button class="ap-btn">확인</button></span> -->
<!-- 								<span><button class="cancel-btn">취소</button></span> -->
<!-- 							</div>				 -->
<!-- 						</footer> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
	<script>
	
	$(document).ready(function(){
		$('#summernote').summernote({
			height: 500,
			lang:"ko-KR"
			});
		});
	</script>
	<script>
	function goBack();{
		window.history.back();
	}
	

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
	
			
// 			$(document).on('click','.goUpdate2', function(){
// 				var title = $('.select-title').text();
// 				location.href="goInsert.ap?title="+ title;	
// 			});
			
			
// 			function goUpdate(){

// 				if(!confirm("반려하시겠습니까?")){
// 				return false;
// 				}
// 			};
// 		});

	
</script>
	
	


</body>
</html>