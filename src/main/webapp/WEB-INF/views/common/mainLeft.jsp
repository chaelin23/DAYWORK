<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/chat.css">
<script src ="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	
		<!-- 왼쪽 카테고리 박스 -->
		<div class="main-left">
			<!-- 로고 -->
			<div class="logo"></div>
			<!-- 나의 정보 -->
			<div class="main-myInfo">
				<div class="main-profile">
					<div class="main-profile-photo"></div>
					<div class="main-profile-name">강건강</div>
					<div class="main-profile-position">팀원</div>
				</div>
				<div class="main-line">
					<hr style="border:1px color= silver;" width="80%">
				</div>
				<div class="main-active">
					<div class="main-active-one">
						<div class="main-active-one-text">내가 쓴 글</div>
						<div class="main-active-one-num">3개</div>
					</div>
					<div class="main-active-two" id="active-two">
						<div class="main-active-two-text">임시 보관함</div>
						<div class="main-active-two-num">5개</div>
					</div>
					<div class="main-active-three">
						<div class="main-active-three-text">휴지통</div>
						<div class="main-active-three-num">18개</div>
					</div>
				</div>
			</div>
			<!-- 출퇴근 버튼 -->
			<div class="main-commute">
				<div class="commute-button">
					<button class="commute" id="start">출근</button>
					<button class="commute" id="end">퇴근</button>
				</div>
					<div class="commute-progressbar">
					<progress class="commute-real"></progress>
				</div>
				<div class="commute-text">
					<div class="commute-text-start" style="margin-left:10px;">9:00</div>
					<div class="commute-text-end" style="margin-right:10px;">18:00</div>
				</div>
			</div>
			<!-- 카테고리 박스 -->
			<div class="main-category">
				<div class="cate notice">
					<div class="cate-notice-p" onclick="location.href='boardList.bo'">공지사항</div>
					<div class="cate-notice-c">
						<div class="notice-c-1">ㄴ전체게시판</div>
						<div class="notice-c-2">ㄴ일반게시판</div>
					</div>
				</div>				
				<div class="cate they">
					<div class="cate-they-p">사내관리</div>
					<div class="cate-they-c">
						<div class="they-c-1">ㄴ조직도</div>
						<div class="they-c-2">ㄴ주소록</div>
					</div>
				</div>				
				<div class="cate approval">
					<div class="cate-approval-p">전자결재</div>
					<div class="cate-approval-c">
						<div class="approval-c-1">ㄴ결재양식목록</div>
						<div class="approval-c-1">ㄴ결재현황</div>
					</div>
				</div>		
				<div class="cate collabo">
					<div class="cate-collabo-p" onclick="location.href='workBox.co'">업무공유</div>
				</div>			
				<div class="cate day">
					<div class="cate-day-p">근태관리</div>
				</div>				
				<div class="cate message">
					<div class="cate-message" onclick="location.href='msgAllList.msg'">메세지</div>
				</div>				
			</div>
			<!-- 채팅 조직도 박스 -->
			<div class="main-chat">
<!-- 				<div class="chat-member-box"></div> -->
				<div class="chat-memberList"></div>
				<input class="main-chat-text" type="text" placeholder="이름/팀명/직급 검색">
				<button class="main-chat-button">나의 채팅방</button>
				<!-- 채팅창 -->
				<div class="chatRoom">
					<div class="chatTop">
						<div class="chatUserMain">
						</div>
						<div class='chatPlusBtn'>+</div>
					</div>
					<div class="chatContent">
					</div>
					<div class="chatBottom">
						<input type="text" class="chatMsgWrite">
						<button class="chatMsgSendBtn">전송</button>
					</div>
				</div>
				<div class="chatRoomList">
				</div>
				<input class="main-chat-text2" type="text" placeholder="이름/팀명/직급 검색">
				<div class="chat-memberList2"></div>
			</div>
		</div>

	<script>
		var noticeP = document.querySelector('.cate-notice-p');
		var noticeBox = document.querySelector('.cate-notice-c');
		var theyP = document.querySelector('.cate-they-p');
		var theyBox = document.querySelector('.cate-they-c');
		var approvalP = document.querySelector('.cate-approval-p');
		var approvalBox = document.querySelector('.cate-approval-c');
		
		noticeP.addEventListener('click', function() {
	            noticeBox.classList.toggle('active');
	    });
		
		theyP.addEventListener('click', function() {
            theyBox.classList.toggle('active');
    	});
		
		approvalP.addEventListener('click', function() {
            approvalBox.classList.toggle('active');
    	});
	
		$('.main-chat-text').on('keyup', function(){
			var receiver = $(this).val();
			
			$('.chat-memberList').addClass('active');
			$('.chat-memberList').html('');			
			$.ajax({
				url: 'msgSearchMember.msg',
				data: {receiver:receiver},
				success: function(data) {
// 					console.log(data);
					if(data == "일치하는 회원이 없습니다.") {
						var addHtml = '';
						
						addHtml += "<div class='chat-memberList-item'>일치하는 회원이 없습니다.</div>";
						$('.chat-memberList').append(addHtml);
					} else {
						for(var m in data) {
							var member = data[m];
							var addHtml = '';
							
							addHtml += "<div class='chat-memberList-item'>" + member.mName;
							addHtml += "<input type='hidden' value='" + member.mNo + "'>";
							addHtml += "</div>";
							
							$('.chat-memberList').append(addHtml);
						}						
					}
				}
			});
		});
		
		$(document).on('click', '.chatPlusBtn', function(){
			$('.main-chat-text2').addClass('active');
		});
		
		$('.main-chat-text2').on('keyup', function(){
			var receiver = $(this).val();
			
			$('.chat-memberList2').addClass('active');
			$('.chat-memberList2').html('');			
			$.ajax({
				url: 'msgSearchMember.msg',
				data: {receiver:receiver},
				success: function(data) {
// 					console.log(data);
					if(data == "일치하는 회원이 없습니다.") {
						var addHtml = '';
						
						addHtml += "<div class='chat-memberList-item2'>일치하는 회원이 없습니다.</div>";
						$('.chat-memberList2').append(addHtml);
					} else {
						for(var m in data) {
							var member = data[m];
							var addHtml = '';
							
							addHtml += "<div class='chat-memberList-item2'>" + member.mName;
							addHtml += "<input type='hidden' value='" + member.mNo + "'>";
							addHtml += "</div>";
							
							$('.chat-memberList2').append(addHtml);
						}						
					}
				}
			});
		});
		
		$(document).on('click', function(e){
			if(!$(e.target).hasClass('main-chat-text')) {
				$('.chat-memberList').removeClass('active');				
			}
		});
		
		const scrollTop = () => {
			$('.chatContent').scrollTop($('.chatContent')[0].scrollHeight);
		}
		
		$(document).on('click', '.chat-memberList-item', function(){
			var participant = $(this).children().eq(0).val();
			
			if($(this).text() != "일치하는 회원이 없습니다.") {
				$('.chatUserMain').html("");
// 				$('.chatUserMain').append("<div class='chatPlusBtn'>+</div>");
				$('.chatContent').html("");
				$('.main-chat-text').val("");
				$('.chatRoom').addClass('active');
				
				$.ajax({
					url: 'createChatRoom.chat',
					data: {participant:participant},
					success: function(data){
// 						console.log(data);
						var chatRoom = data["chatRoom"];
						var msgList = data["chatMsgList"];
						
						var roomNo = chatRoom[0].cRoomNo;
						var mNo = chatRoom[0].cRoomM;
						var mName = chatRoom[0].cRoomMName;
						var pList1 = chatRoom[0].cRoomPName.split(",");
						var loginUserName = "${ loginUser.mName }";
						var loginUserNo = ${ loginUser.mNo };
						var pList2 = "";
						
						pList1.pop();
						pList1.push(mName);
						
						for(var i = 0; i < pList1.length; i++) {
							if(pList1[i] != loginUserName) {
								pList2 += pList1[i] + ", ";
							}
						}
						pList2 = pList2.substring(0, pList2.lastIndexOf(","));
						
						$('.chatUserMain').text(pList2);
						
						var roomNoHtml = "<input type='hidden' value='" + roomNo + "'>";
						$('.chatUserMain').append(roomNoHtml);
							
						var presentPHtml = "<input type='hidden' value='" + chatRoom[0].cRoomPName + "'>";
						$('.chatUserMain').append(presentPHtml);
							
						var mNoHtml = "<input type='hidden' value='" + mNo + "'>";
						$('.chatUserMain').append(mNoHtml);
							
						if(msgList.length > 0) {
							for(var i = 0; i < msgList.length; i++) {
								var msg = msgList[i];
								var addHtml = "";
								
								if(msg.cMsgWriterNo == loginUserNo) {
									addHtml += "<div class='chatRight'>";
									addHtml += "<span class='chatRight_msg'>" + msg.cMsgContent + "</span></div>";
								} else {
									addHtml += "<div class='chatLeft'>";
									addHtml += "<div class='chatUser'>" + msg.cMsgWriterName + "</div>";
									addHtml += "<div class='chat_msg_box'><span class='chatLeft_msg'>" + msg.cMsgContent + "</span></div></div>";
								}
								$('.chatContent').append(addHtml);
							}
						}
						
						scrollTop();
						connectSocket(roomNo);
					}
				});
			}
		});
		
		$(document).on('click', '.chat-memberList-item2', function(){
			var newP = $(this).children().eq(0).val();
// 			console.log($(this).parent().prev().prev().prev().children().first().children().first().children().first().val());
			var roomNo = $(this).parent().prev().prev().prev().children().first().children().first().children().first().val();
			var presentP = $(this).parent().prev().prev().prev().children().first().children().first().children().eq(1).val();
			var mNo = $(this).parent().prev().prev().prev().children().first().children().first().children().eq(2).val();
			
			if($(this).text() != "일치하는 회원이 없습니다.") {
				$('.chat-memberList2').removeClass('active');
				$('.main-chat-text2').removeClass('active');
				
				$.ajax({
					url: 'addParticipant.chat',
					data: {newP:newP, roomNo:roomNo, presentP:presentP, mNo:mNo},
					success: function(data){
// 						console.log(data);
						if(data == "exist") {
							alert("이미 채팅방에 있습니다.");
						} else {
							$('.chatUserMain').append(", " + data);
							var addHtml = "<div class='addedParticipant'>" + data + "님을 초대하였습니다.</div>";
							$('.chatContent').append(addHtml);							
						}
					},
					error:function(request,status,error){
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});
			}
		});
		
		$(document).on('click', '.chatMsgSendBtn', function(){
			var roomNo = $(this).parent().parent().children().eq(0).children().eq(0).children().eq(0).val();
			var mNo = ${ loginUser.mNo };
			var mName = "${ loginUser.mName }";
			var msg = $(this).parent().children().eq(0).val();
			$(this).parent().children().eq(0).val("");
			
			sendMsg(mNo, mName, roomNo, msg);
		});
		
		var webSocket;
		
		const connectSocket = (roomNo) => {
			webSocket = new WebSocket("ws://localhost:5580/DAYWORK/echo.do");
			
			webSocket.onopen = function(e) {
				console.log("connect...");
			}
			
			webSocket.onmessage = function(message) {
				var msg = message.data.split("/");
				
				if(msg[2] == roomNo) {
					if(msg[0] == ${ loginUser.mNo }) {
						var addHtml = "<div class='chatRight'>";
						addHtml += "<span class='chatRight_msg'>" + msg[3] + "</span></div>";
						$('.chatContent').append(addHtml);
						scrollTop();
					} else {
						var addHtml = "<div class='chatLeft'>";
						addHtml += "<div class='chatUser'>" + msg[1] + "</div>";
						addHtml += "<div class='chat_msg_box'><span class='chatLeft_msg'>" + msg[3] + "</span></div></div>";
						$('.chatContent').append(addHtml);
						scrollTop();
					}
				}
			}
			
			webSocket.onclose = function(e) {
				console.log("end...");
			}
		}
		
		function sendMsg(mNo, mName, roomNo, msg) {
			webSocket.send(mNo + "/" + mName + "/" + roomNo + "/" + msg);
		}
		
		$(document).on('click', function(e){
			if(!$(e.target).hasClass('chatRoom') && !$(e.target).hasClass('chat-memberList-item') && 
			   !$(e.target).hasClass('msg-write-receiver-input') && !$(e.target).hasClass('chatRoomList') &&
			   !$(e.target).hasClass('main-chat-button') && !$(e.target).hasClass('chatRoomItemBox') && 
			   !$(e.target).hasClass('chatMsgWrite') && !$(e.target).hasClass('chatMsgSendBtn') &&
			   !$(e.target).hasClass('chatPlusBtn') && !$(e.target).hasClass('chat-memberList-item2') && !$(e.target).hasClass('main-chat-text2')) {
				
				$('.msg-write-memberList').removeClass('active');
				$('.chatRoom').removeClass('active');		
				$('.chatRoomList').removeClass('active');		
				$('.main-chat-text2').removeClass('active');		
				$('.chat-memberList2').removeClass('active');		
				closeSocket();
			}
		});
		
		const closeSocket = () => {
			if(webSocket != null) {
				webSocket.close();				
			}
		}
		
		$(document).on('click', '.main-chat-button', function(){
			$('.chatRoomList').addClass('active');
			$('.chatRoomList').html("");
			
			$.ajax({
				url: 'getChatRoomList.chat',
				success: function(data) {
// 					console.log(data);
					
					if(data == "empty") {
						var addHtml = "<div>채팅방이 없습니다.</div>";
						$('.chatRoomList').append(addHtml);
					} else {
						for(var i in data) {
							var room = data[i];
							var pList1 = room.cRoomPName.split(",");
							var mName = room.cRoomMName;
							var loginUserName = "${ loginUser.mName }";
							var pList2 = "";
							
							pList1.pop();
							pList1.push(mName);
							
							for(var i = 0; i < pList1.length; i++) {
								if(pList1[i] != loginUserName) {
									pList2 += pList1[i] + ", ";
								}
							}
							pList2 = pList2.substring(0, pList2.lastIndexOf(","));
							
							var addHtml = "<div class='chatRoomItemBox'>";
							addHtml += "<div class='chatProfileImg'></div>";
							addHtml += "<div class='chatRoomItem'>"
							addHtml += "<div class='chatRoomUser'>" + pList2;
							addHtml += "<input type='hidden' value='" + room.cRoomNo + "'>";
							addHtml += "<div class='chatRoomTime'></div></div>";
							addHtml += "<div class='chatRoomMsg'>" + "메세지 내용" + "</div></div></div>";
								
							$('.chatRoomList').append(addHtml);
						}						
					}
				}
			});
			
		});
		
		$(document).on('click', '.chatRoomItemBox', function(){
			var roomNo = $(this).children().eq(1).children().first().children().first().val();

			$('.chatRoomList').removeClass('active');
			$('.chatUserMain').html("");
// 			$('.chatUserMain').append("<div class='chatPlusBtn'>+</div>");
			$('.chatContent').html("");
			$('.main-chat-text').val("");
			$('.chatRoom').addClass('active');
				
				$.ajax({
					url: 'getChatRoom.chat',
					data: {roomNo:roomNo},
					success: function(data){
// 						console.log(data);
						var chatRoom = data["chatRoom"];
						var msgList = data["chatMsgList"];
						
						var roomNo = chatRoom[0].cRoomNo;
						var mNo = chatRoom[0].cRoomM;
						var mName = chatRoom[0].cRoomMName;
						var pList1 = chatRoom[0].cRoomPName.split(",");
						var loginUserName = "${ loginUser.mName }";
						var loginUserNo = ${ loginUser.mNo };
						var pList2 = "";
						
						pList1.pop();
						pList1.push(mName);
						
						for(var i = 0; i < pList1.length; i++) {
							if(pList1[i] != loginUserName) {
								pList2 += pList1[i] + ", ";
							}
						}
						pList2 = pList2.substring(0, pList2.lastIndexOf(","));
						
						$('.chatUserMain').text(pList2);
						
						var roomNoHtml = "<input type='hidden' value='" + roomNo + "'>";
						$('.chatUserMain').append(roomNoHtml);
							
						var presentPHtml = "<input type='hidden' value='" + chatRoom[0].cRoomPName + "'>";
						$('.chatUserMain').append(presentPHtml);
							
						var mNoHtml = "<input type='hidden' value='" + mNo + "'>";
						$('.chatUserMain').append(mNoHtml);
							
						if(msgList.length > 0) {
							for(var i = 0; i < msgList.length; i++) {
								var msg = msgList[i];
								var addHtml = "";
								
								if(msg.cMsgWriterNo == loginUserNo) {
									addHtml += "<div class='chatRight'>";
									addHtml += "<span class='chatRight_msg'>" + msg.cMsgContent + "</span></div>";
								} else {
									addHtml += "<div class='chatLeft'>";
									addHtml += "<div class='chatUser'>" + msg.cMsgWriterName + "</div>";
									addHtml += "<div class='chat_msg_box'><span class='chatLeft_msg'>" + msg.cMsgContent + "</span></div></div>";
								}
								$('.chatContent').append(addHtml);
							}
						}
						
						scrollTop();
						connectSocket(roomNo);
					},
					error:function(request,status,error){
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>
</body>
</html>