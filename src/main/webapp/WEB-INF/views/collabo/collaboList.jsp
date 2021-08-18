<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/collabo.css">
<script src ="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="main-king">
	<%@ include file="../common/mainLeft.jsp"%>

	<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div class="collabo-create">
				<div class="collabo-create-box" >
<!-- 					<form action="insertCollabo.co" method="post"> -->
						<div class="collabo-crate-box-top">
							<div class="create-box-top-margin">업무요청하기</div>
							<input  type="hidden" name="cMNo" value="${ loginUser.mNo }">
							<input  type="hidden" name="bMNo" value="${ loginUser.mNo }">
							<input  type="hidden" name="bDept" value="${ loginUser.dCode }">
						</div>
						<div class="collabo-crate-box-content">
							<div class="create-content-title">
								<input class="new-title" type="text" placeholder="제목을 작성하세요" style="border:none;" name="bTitle">
							</div>
							<div class="create-content-add">
								<label>시작일자  :  <input class="new-date-s" type="date" name="cStartDate" value="${dat }"> </label>
								<label>마감일자  :  <input class="new-date-e" type="date" name="cEndDate"> </label>
								<label> & <input class="new-people" type="text" placeholder="참여자를 선택하세요" name="cPeople"></label>
							</div>
							<div class="create-content-content">
								<textarea class="new-content" rows="10" cols="96" placeholder="글을 작성하세요" name="bContent"></textarea>
							</div>
						</div>
						<div class="collabo-crate-box-bottom">
							<div class="create-box-bottom-margin">
								<div class="box-bottom-btn-status">
									<input type='radio' class="new-cBctNo" name = 'cBctNo' value='C1'>요청
									<input type='radio' class="new-cBctNo" name = 'cBctNo' value='C2'>진행중
									<input type='radio' class="new-cBctNo" name = 'cBctNo' value='C3'>완료
									<input type='radio' class="new-cBctNo" name = 'cBctNo' value='C4'>피드백
									<input type='radio' class="new-cBctNo" name = 'cBctNo' value='C5'>대기
								</div>
								<div class="box-bottom-btn-ab">
									<button id="box-bottom-btn-a" >임시저장</button>
									<button id="box-bottom-btn-b" >작성하기</button>
								</div>
							</div>
						</div>
<!-- 					</form> -->
				</div>
				
				<div class="collabo-workList-cate">
					<button class="statusBtn" id="status_its">내가 쓴 글</button>
					<button class="statusBtn" id="status_call">요청</button>
					<button class="statusBtn" id="status_progress">진행중</button>
					<button class="statusBtn" id="status_finish">완료</button>
					<button class="statusBtn" id="status_feedback">피드백</button>
					<button class="statusBtn" id="status_postpone">보류</button>			
				</div>
				
				<c:if test="${ cList == null }">
					확인할 업무협업 게시글이 존재하지 않습니다.
				</c:if>
				<c:if test="${ cList != null }">
					<div class="dd">
						<c:forEach var="c" items="${ cList }">
								<div class="collabo-list-box" id="box${ c.cNo }">
									<div class="collabo-list-box-top">
										<div class="list-box-top-margin">
											<c:if test="${c.cBctNo eq 'C1' }">
												<button id="call">요청</button>
											</c:if>
											<c:if test="${c.cBctNo eq 'C2' }">
												<button id="progress">진행중</button>
											</c:if>
											<c:if test="${c.cBctNo eq 'C3' }">
												<button id="finish">완료</button>
											</c:if>
											<c:if test="${c.cBctNo eq 'C4' }">
												<button id="feedback">피드백</button>
											</c:if>
											<c:if test="${c.cBctNo eq 'C5' }">
												<button id="postpone">보류</button>
											</c:if>
										</div>
									</div>
									<div class="collabo-list-box-content">
										<div class="list-content-title">
											<div class="list-title">${ c.bTitle }</div>
										</div>
										<div class="list-content-add">
												<label style="margin-right:10px;">시작일자  :  ${ c.cStartDate } </label>
												<label style="margin-right:50px;">마감일자  :  ${ c.cEndDate } </label>
												<label> & <span class="list-people" >${ c.cPeople }</span></label>
										</div>
										<div class="list-content">
											${c.bContent }
										</div>
									</div>
									<div class="collabo-list-box-bottom">
										<div class="list-box-bottom-margin">
											<div class="box-bottom-btn-update">
												<input type="hidden" id="whatcNo" value ="${ c.cNo }">
												<button class="b_call updateBtn" value="C1">요청</button>
												<button class="b_progress updateBtn" value="C2">진행중</button>
												<button class="b_finish updateBtn" value="C3">완료</button>
												<button class="b_feedback updateBtn" value="C4">피드백</button>
												<button class="b_postpone updateBtn" value="C5">보류</button>
											</div>
											<div class="box-bottom-btn-ab">
												<c:if test="${c.bWriter == loginUser.mName }">
													<button class="box-bottom-btn-up">수정하기</button>
												</c:if>
											</div>
										</div>
									</div>
								</div>
						</c:forEach>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</body>

<script>

	$('.box-bottom-btn-up').on('click',function(){
		var cNo = $(this).parent().parent().children().eq(0).children().eq(0).val();
		var empty = $(this).parent().parent().parent().parent();
		
		$.ajax({
			url:'gocollaboListAjax.co',
			success: function(data){
				console.log(data);
						empty.html('');
				
				for(var i=0; i< data.length; i++){
					var c = data[i];
					
					if(cNo == c.cNo){
					
						var addHtml = "";
							
							addHtml += "<div class='collabo-list-box-top'>";
							addHtml += "<div class='list-box-top-margin'>";
								if(c.cBctNo == 'C1'){
							addHtml +=	"<button id='call'>요청</button>";
									} else if(c.cBctNo == 'C2'){
							addHtml +=	"<button id='progress'>진행중</button>";
									} else if(c.cBctNo == 'C3'){
							addHtml +=	"<button id='finish'>완료</button>";			
									} else if(c.cBctNo == 'C4'){
							addHtml +=	"<button id='feedback'>피드백</button>";			
									} else if(c.cBctNo == 'C5'){
							addHtml +=	"<button id='postpone'>보류</button>";			
									}
							addHtml += "</div>";
							addHtml += "</div>";
							
							addHtml += "<div class='collabo-list-box-content'>";
							addHtml += "<div class='list-content-title'>";
							addHtml += "<div class='list-title'>"
							addHtml += "<input class='new2-title' type='text' name='bTitle' value='"+ c.bTitle + "'>"; 
							addHtml += "</div>";
							addHtml += "</div>"; 
									
							addHtml += "<div class='list-content-add'>";
							addHtml += "<label><input class='new2-date-s' type='date' name='cStartDate' value='" + c.cStartDate + "'></label>";
							addHtml += "<label><input class='new2-date-e' type='date' name='cEndDate' value='" + c.cEndDate + "'></label>";
							addHtml += "<label> & <input class='new2-people' type='text' name='cPeople' value='"+ c.cPeople + "'></label>";
							addHtml += "</div>";
							
							addHtml += "<div class='list-content'>";
							addHtml += "<textarea class='new2-content' rows='10' cols='96' name='bContent'>"+ c.bContent +"</textarea>";
							addHtml += "</div>";
							addHtml += "</div>";
							
							addHtml += "<div class='collabo-list-box-bottom'>";
							addHtml += "<div class='list-box-bottom-margin'>";
							
							addHtml += "<div class='box-bottom-btn-status'>";
							addHtml += "<input type='radio' class='new2-cBctNo' name = 'cBctNo' value='C1'>요청";
							addHtml += "<input type='radio' class='new2-cBctNo' name = 'cBctNo' value='C2'>진행중";
							addHtml += "<input type='radio' class='new2-cBctNo' name = 'cBctNo' value='C3'>완료";
							addHtml += "<input type='radio' class='new2-cBctNo' name = 'cBctNo' value='C4'>피드백";
							addHtml += "<input type='radio' class='new2-cBctNo' name = 'cBctNo' value='C5'>대기";
							addHtml += "</div>";
							
							addHtml += "<div class='box-bottom-btn-ab'>";
							addHtml += "<button class='box-bottom-btn-end'>완료</button>";
							addHtml += "</div>";
							addHtml += "</div>";
							addHtml += "</div>";
							
							empty.append(addHtml);
					}
				}
			}
		});
	});
	
	$(document).on('click', '.updateBtn', function(){
		var cNo = $(this).parent().children().eq(0).val();
		var btn = $(this).val();
		
		if(btn == 'C1'){
			var bool = window.confirm("'요청'으로 상태변경 하시겠어요?");
		} else if(btn == 'C2'){
			var bool = window.confirm("'진행중'으로 상태변경 하시겠어요?");
		} else if(btn == 'C3'){
			var bool = window.confirm("'완료'로 상태변경 하시겠어요?");
		} else if(btn == 'C4'){
			var bool = window.confirm("'피드백'으로 상태변경 하시겠어요?");
		}	else if(btn == 'C5'){
			var bool = window.confirm("'보류'로 상태변경 하시겠어요?");
		}
		
		if(bool){
			$.ajax({
				url : 'updateBtn.co',
				data : {cNo:cNo,
						cBctNo:btn},
				success : function(data){
					if(data == 'success'){
						getCollaboList();		
					}
				}
			});
		};
	});
	
	$('#box-bottom-btn-b').on('click',function(){
		var bTitle = $('.new-title').val();
		var cStartDate = $('.new-date-s').val();
		var cEndDate = $('.new-date-e').val();
		var cPeople = $('.new-people').val();
		var bContent = $('.new-content').val();
		var cBctNo = $('input[name="cBctNo"]:checked').val();
		var bDept = '${loginUser.dCode}';
		var bMNo = ${loginUser.mNo};
		var cMNo = ${loginUser.mNo};
		
		
		$.ajax({
			url:'insertCollabo.co',
			data: {bTitle:bTitle,
				   cStartDate:cStartDate,
				   cEndDate:cEndDate,
				   cPeople:cPeople,
				   bContent:bContent,
				   cBctNo:cBctNo,
				   bDept:bDept,
				   bMNo:bMNo,
				   cMNo:cMNo},
			success: function(data){
				if(data == 'success'){
					$('.new-title').val('');
					$('.new-date-e').val('');
					$('.new-people').val('');
					$('.new-content').val('');
					$('input[name="cBctNo"]').prop("checked",false);
					getCollaboList();
				}
			}
		});
	});
	
	function getCollaboList(){
		$.ajax({
			url:'gocollaboListAjax.co',
			success: function(data){
				console.log(data);
						$('.dd').html('');
				
				for(var i=0; i< data.length; i++){
					var c = data[i];
					
					var addHtml = "";
						
						addHtml += "<div class='collabo-list-box' id=box"+c.cNo+">";
						addHtml += "<div class='collabo-list-box-top'>";
						addHtml += "<div class='list-box-top-margin'>";
							if(c.cBctNo == 'C1'){
						addHtml +=	"<button id='call'>요청</button>";
								} else if(c.cBctNo == 'C2'){
						addHtml +=	"<button id='progress'>진행중</button>";
								} else if(c.cBctNo == 'C3'){
						addHtml +=	"<button id='finish'>완료</button>";			
								} else if(c.cBctNo == 'C4'){
						addHtml +=	"<button id='feedback'>피드백</button>";			
								} else if(c.cBctNo == 'C5'){
						addHtml +=	"<button id='postpone'>보류</button>";			
								}
						addHtml += "</div>";
						addHtml += "</div>";
						
						addHtml += "<div class='collabo-list-box-content'>";
						addHtml += "<div class='list-content-title'>";
						addHtml += "<div class='list-title'>" + c.bTitle + "</div>";
						addHtml += "</div>"; 
								
						addHtml += "<div class='list-content-add'>";
						addHtml += "<label style='margin-right:10px;'>시작일자  :  " + c.cStartDate + "</label>";
						addHtml += "<label style='margin-right:50px;'>마감일자  :  " + c.cEndDate + "</label>";
						addHtml += "<label> & <span class='list-people' >" + c.cPeople + "</span></label>";
						addHtml += "</div>";
						
						addHtml += "<div class='list-content'>";
						addHtml += c.bContent;
						addHtml += "</div>";
						addHtml += "</div>";
						
						addHtml += "<div class='collabo-list-box-bottom'>";
						addHtml += "<div class='list-box-bottom-margin'>";
						addHtml += "<div class='box-bottom-btn-status' >";
						addHtml += "<input type='hidden' id='whatcNo' value ='" + c.cNo + "'>";
						addHtml += "<button class='b_call updateBtn' value='C1'>요청</button>";
						addHtml += "<button class='b_progress updateBtn' value='C2'>진행중</button>";
						addHtml += "<button class='b_finish updateBtn' value='C3'>완료</button>";
						addHtml += "<button class='b_feedback updateBtn' value='C4'>피드백</button>";
						addHtml += "<button class='b_postpone updateBtn' value='C5'>보류</button>";
						addHtml += "</div>";
						
						addHtml += "<div class='box-bottom-btn-ab'>";
						addHtml += "<button class='box-bottom-btn-up'>수정하기</button>";
						addHtml += "</div>";
						addHtml += "</div>";
						addHtml += "</div>";
						addHtml += "</div>";
						
						$('.dd').append(addHtml);
					}
			}
		});
	};
	
	$(document).on('click', '.box-bottom-btn-end', function(){
		var bTitle = $('.new2-title').val();
		console.log(bTitle);
	});
	
	
</script>
</html>
