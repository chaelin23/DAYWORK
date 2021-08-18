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
										<div class="list-box-top-margin"><button id="progress">진행중</button></div>
									</div>
									<div class="collabo-list-box-content">
										<div class="list-content-title">
											<div class="list-title" style="border:none; font-weight:bold;">${ c.bTitle }</div>
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
											<div class="box-bottom-btn-status" >
												<button id="b_call">요청</button>
												<button id="b_progress">진행중</button>
												<button id="b_finish">완료</button>
												<button id="b_feedback">피드백</button>
												<button id="b_postpone">보류</button>
											</div>
											<div class="box-bottom-btn-ab">
												<button class="box-bottom-btn-up">수정하기</button>
											</div>
										</div>
									</div>
								</div>
						</c:forEach>
								</div>
				</c:if>
				
				<div class="collabo-list-box-update" id="box${ c.cNo }up">
					<form action="insertCollabo.co" method="post">
						<div class="collabo-list-box-top">
							<div class="list-box-top-margin"><button id="progress">진행중</button></div>
						</div>
						<div class="collabo-list-box-content">
							<div class="list-content-title">
								<input type="text" id="up-title" style="border:none; font-weight:bold;" value="${ c.bTitle }">
							</div>
							<div class="list-content-add">
									<label style="margin-right:10px;">시작일자  :  <input type="date" id="up-date-s" value="${ c.cStartDate}"> </label>
									<label style="margin-right:50px;">마감일자  :  <input type="date" id="up-date.e" value="${ c.cEndDate}"> </label>
									<label> & <input id="up-people" type="text" placeholder="${ c.cPeople }"></label>
							</div>
							<div class="list-content-content-update">
								<textarea id="up-content" rows="10" cols="96">${ c.bContent }</textarea>
							</div>
						</div>
						<div class="collabo-list-box-bottom">
							<div class="list-box-bottom-margin">
								<div class="box-bottom-btn-status">
									<input type='radio' name = 'cBctNo' value='C1'>요청
									<input type='radio' name = 'cBctNo' value='C2'>진행중
									<input type='radio' name = 'cBctNo' value='C3'>완료
									<input type='radio' name = 'cBctNo' value='C4'>피드백
									<input type='radio' name = 'cBctNo' value='C5'>대기
								</div>
								<div class="box-bottom-btn-ab">
									<input type="button" class="box-bottom-btn-end" value="완료">
								</div>
							</div>
						</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>
</body>

<script>

	$('.box-bottom-btn-up').on('click',function(){
		$('').addClass('active');
		$('.collabo-list-box-update').addClass('active');
	});
	
	$('#b_call').on('click',function(){
		window.confirm("요청으로 ");
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
					console.log(c);
					
					var addHtml = "";
					
// 					if(data == null){
// 						addHtml += "확인해야할 업무협업 게시글이 없습니다.";
// 					} else{
						
						addHtml += "<div class='collabo-list-box' id=box"+c.cNo+">";
						addHtml += "<div class='collabo-list-box-top'>";
						addHtml += "<div class='list-box-top-margin'><button id='progress'>진행중</button></div>";
						addHtml += "</div>";
						
						addHtml += "<div class='scollabo-list-box-content'>";
						addHtml += "<div class='list-content-title'>";
						addHtml += "<div class='list-title' style='border:none; font-weight:bold;'>" + c.bTitle + "</div>";
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
						addHtml += "<button id='b_call'>요청</button>";
						addHtml += "<button id='b_progress'>진행중</button>";
						addHtml += "<button id='b_finish'>완료</button>";
						addHtml += "<button id='b_feedback'>피드백</button>";
						addHtml += "<button id='b_postpone'>보류</button>";
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
	
	function insertCollabo(){
		
	};
	
	
</script>
</html>
