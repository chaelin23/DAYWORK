<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<%@ include file = "/index.jsp" %>

	<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div class="collabo-create">
				<div class="collabo-create-box" >
					<div class="collabo-crate-box-top">
						<div class="create-box-top-margin">업무요청하기</div>
					</div>
					<div class="collabo-crate-box-content">
						<div class="create-content-title">
							<input id="list-title" type="text" placeholder="제목을 작성하세요" style="border:none;">
						</div>
						<div class="create-content-add">
							<label>시작일자  :  <input id="create-add-date-a" type="date"> </label>
							<label>마감일자  :  <input id="create-add-date-b" type="date"> </label>
							<label> & <input id="create-add-people" type="text" placeholder="참여자를 선택하세요"></label>
						</div>
						<div class="create-content-content">
							<textarea id="create-content-style" rows="10" cols="96" placeholder="글을 작성하세요"></textarea>
						</div>
					</div>
					<div class="collabo-crate-box-bottom">
						<div class="create-box-bottom-margin">
							<div class="box-bottom-btn-status">
								<button id="b_call">요청</button>
								<button id="b_progress">진행중</button>
								<button id="b_finish">완료</button>
								<button id="b_feedback">피드백</button>
								<button id="b_postpone">보류</button>
							</div>
							<div class="box-bottom-btn-ab">
								<button id="box-bottom-btn-a">임시저장</button>
								<button class="box-bottom-btn-b">작성하기</button>
							</div>
						</div>
					</div>
				</div>
				
				<div class="collabo-workList-cate">
					<button class="statusBtn" id="status_its">내가 쓴 글</button>
					<button class="statusBtn" id="status_call">요청</button>
					<button class="statusBtn" id="status_progress">진행중</button>
					<button class="statusBtn" id="status_finish">완료</button>
					<button class="statusBtn" id="status_feedback">피드백</button>
					<button class="statusBtn" id="status_postpone">보류</button>			
				</div>
				
				<div class="collabo-list-box">
					<div class="collabo-list-box-top">
						<div class="list-box-top-margin"><button id="progress">진행중</button></div>
					</div>
					<div class="collabo-list-box-content">
						<div class="list-content-title">
							<div id="list-title" style="border:none; font-weight:bold;">신우상사 포워딩 관련 긴급회의</div>
						</div>
						<div class="list-content-add">
								<label style="margin-right:10px;">시작일자  :  2021 - 07 - 25 </label>
								<label style="margin-right:50px;">마감일자  :  2021 - 07 - 25 </label>
								<label> & <span id="list-add-people" >강건강팀원, 남나눔대리</span></label>
						</div>
						<div class="list-content-content">
							25일 관련업계에 따르면 한국은행은 중앙은행 디지털화폐(CBDC, Central Bank Digital Currency) 모의실험 연구 우선협상대상자로 그라운드X를 선정했다. 그라운드X는 카카오의 블록체인 전문자회사로 자체 블록체인 네트워크인 클레이튼을 개발했다. 한은은 이 클레이튼을 기반으로 CBDC 발행과 유통, 결제 등 지급결제 전반의 혁신을 시험할 예정이다.
그라운드X는 한국은행의 CBDC 사업 주관사로 전체 사업을 총괄하고, 7개 협력사가 참여한다. 여러 기업이 컨소시엄을 구성해 신청하는 것을 한은에서 금지했기 때문에 단일 기업이 사업 전체를 주도하는 역할로 나서고, 시스템 구현 과정에서 협력사들이 힘을 보태는 구조로 진행된다.</textarea>
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
								<button class="box-bottom-btn-b">수정하기</button>
							</div>
						</div>
					</div>
				</div>
				<div class="collabo-list-box-update">
					<div class="collabo-list-box-top">
						<div class="list-box-top-margin"><button id="progress">진행중</button></div>
					</div>
					<div class="collabo-list-box-content">
						<div class="list-content-title">
							<input type="text" id="list-title" style="border:none; font-weight:bold;" value="신우상사 포워딩 관련 긴급회의";>
						</div>
						<div class="list-content-add">
								<label style="margin-right:10px;">시작일자  :  <input type="date" value="2021-07-25"> </label>
								<label style="margin-right:50px;">마감일자  :  <input type="date" value="2021-07-25"> </label>
								<label> & <input id="list-add-people" type="text" placeholder="강건강팀원, 남나눔대리"></label>
						</div>
						<div class="list-content-content-update">
							<textarea id="create-content-style" rows="10" cols="96">25일 관련업계에 따르면 한국은행은 중앙은행 디지털화폐(CBDC, Central Bank Digital Currency) 모의실험 연구 우선협상대상자로 그라운드X를 선정했다. 그라운드X는 카카오의 블록체인 전문자회사로 자체 블록체인 네트워크인 클레이튼을 개발했다. 한은은 이 클레이튼을 기반으로 CBDC 발행과 유통, 결제 등 지급결제 전반의 혁신을 시험할 예정이다.
								그라운드X는 한국은행의 CBDC 사업 주관사로 전체 사업을 총괄하고, 7개 협력사가 참여한다. 여러 기업이 컨소시엄을 구성해 신청하는 것을 한은에서 금지했기 때문에 단일 기업이 사업 전체를 주도하는 역할로 나서고, 시스템 구현 과정에서 협력사들이 힘을 보태는 구조로 진행된다.</textarea>
						</div>
					</div>
					<div class="collabo-list-box-bottom">
						<div class="list-box-bottom-margin">
							<div class="box-bottom-btn-status">
								<button id="b_call">요청</button>
								<button id="b_progress">진행중</button>
								<button id="b_finish">완료</button>
								<button id="b_feedback">피드백</button>
								<button id="b_postpone">보류</button>
							</div>
							<div class="box-bottom-btn-ab">
								<input type="button" class="box-bottom-btn-b" value="완료">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>

<script>

	$('.box-bottom-btn-b').on('click',function(){
		$('.collabo-list-box').addClass('active');
		$('.collabo-list-box-update').addClass('active');
	});
	
	$('#b_call').on('click',function(){
		window.confirm("요청으로 ");
	});
	
</script>
</html>
