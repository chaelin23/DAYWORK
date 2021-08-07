<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/collabo.css">
</head>
<body>
	<div class="main-king">
	<%@ include file = "/index.jsp" %>

	<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div class="collabo-workBox">
				<div class="collabo-workBox-top">
					<div class="collabo-workBox-top-text">WORKBOX</div>
					<div class="collabo-workBox-top-search"><input type="text" id="workBox-search" placeholder="검색"></div>
					<div class="collabo-workBox-top-new"><button id="new"> + </button></div>
				</div>
				<hr style="margin-top:20px; margin-bottom: 20px;">
				<div class="collabo-workBox-content">
					<div class="collabo-workBox-btns">
						<div class="collabo-workBox-btn"><button id="call">요청</button></div>
						<div class="collabo-workBox-btn"><button id="progress">진행중</button></div>
						<div class="collabo-workBox-btn"><button id="finish">완료</button></div>
						<div class="collabo-workBox-btn"><button id="feedback">피드백</button></div>
						<div class="collabo-workBox-btn"><button id="postpone">보류</button></div>
					</div>
					<div class="collabo-workBox-boxes" >
						<!-- 요청 -->
						<div class="collabo-workBox-box-column" ondragover="allowDrop()" ondrop="dropItem(Event)">
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box1">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box2">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">도대담</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
						</div>
						
						<!-- 진행중 -->
						<div class="collabo-workBox-box-column" ondragover="allowDrop()" ondrop="dropItem(Event)">
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box3">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">류라라, 문미미, 강건강</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box4">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">개발1팀</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box5">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
							
						</div>
						<!-- 완료 -->
						<div class="collabo-workBox-box-column" ondragover="allowDrop()" ondrop="dropItem(Event)">
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box6">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
						</div>
						<!-- 피드백 -->
						<div class="collabo-workBox-box-column" ondragover="allowDrop()" ondrop="dropItem(Event)">
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box7">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box8">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box9">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box10">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
						</div>
						<!-- 보류 -->
						<div class="collabo-workBox-box-column" ondragover="allowDrop()" ondrop="dropItem(Event)">
							<div class="collabo-workBox-box" draggable=true ondragstart="dragStart(Event)" id="box11">
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">테스트</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">강건강, 남나눔</div>
								</div>
								<div class="collabo-workBox-box-a">
									<div class="collabo-workBox-box-b">#</div>
									<div class="collabo-workBox-box-b">2021/07/20</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
</div>


</body>

	<script>
		function allowDrop() {
		    event.preventDefault();
		}
	
		function dropItem() {
		    var dropele = event.target;
		    var dropid = event.dataTransfer.getData('text');
		    var moveEle = document.getElementById(dropid);
		    dropele.appendChild(moveEle);
		}
		
		function dragStart() {
			 var selectEle = event.target;
			 var selectId = selectEle.id;
			 event.dataTransfer.setData('text/plain', selectId); 
		}		
	</script>
</html>