<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/member.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
<script src ="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="main-king">
	<%@ include file="../common/mainLeft.jsp"%>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<div class="admin-king">
				<div class ="admin-top">
					<div class="admin-top-text">관리자페이지</div>
					<input type="text" class="admin-search" placeholder="이름으로 검색..">
					<i class="fas fa-search"></i>
				</div>
<!-- 				<form action="updateMember.me" method="post"> -->
				<div class="admin-list">
					<div class="admin-list-btns">
						<button class="admin-submit">수정</button>
					</div>
					<div class="admin-list-content">
						<div class="list-th">
							<div class="th1"><input type="checkBox"></div>
							<div class="th2">사번</div>
							<div class="th3">이름</div>
							<div class="th4">팀</div>
							<div class="th5">직급</div>
							<div class="th6">입사일</div>
							<div class="th7">퇴사일</div>
							<div class="th8">입/퇴사</div>
						</div>
						<div class="list-line"></div>
						<c:forEach var="m" items="${mList }">
							<div class="list-td">
								<div class="td1"><input type="checkBox" name="mNo" value="${m.mNo }" class="selectmNo"></div>
								<div class="td2">${m.mNo }</div>
								<div class="td3">${m.mName}</div>
								<div class="td4">
									<select name="dCode">
										<option <c:if test="${m.dCode == null}">selected</c:if>>--팀--</option>
										<option value="D1" <c:if test="${m.dCode eq 'D1'}">selected</c:if>>인사관리팀</option>
										<option value="D2" <c:if test="${m.dCode eq 'D2'}">selected</c:if>>회계관리팀</option>
										<option value="D3" <c:if test="${m.dCode eq 'D3'}">selected</c:if>>마케팅팀</option>
										<option value="D4" <c:if test="${m.dCode eq 'D4'}">selected</c:if>>국내영업팀</option>
										<option value="D5" <c:if test="${m.dCode eq 'D5'}">selected</c:if>>해외영업팀</option>
										<option value="D6" <c:if test="${m.dCode eq 'D6'}">selected</c:if>>기술지원팀</option>
										<option value="D7" <c:if test="${m.dCode eq 'D7'}">selected</c:if>>총무팀</option>
									</select>
								</div>
								<div class="td5">
									<select name="jCode">
										<option <c:if test="${m.jCode == null}">selected</c:if>>--직급--</option>
										<option value="J1" <c:if test="${m.jCode eq 'J1'}">selected</c:if>>팀원</option>
										<option value="J2" <c:if test="${m.jCode eq 'J2'}">selected</c:if>>대리</option>
										<option value="J3" <c:if test="${m.jCode eq 'J3'}">selected</c:if>>과장</option>
										<option value="J4" <c:if test="${m.jCode eq 'J4'}">selected</c:if>>차장</option>
										<option value="J5" <c:if test="${m.jCode eq 'J5'}">selected</c:if>>팀장</option>
										<option value="J6" <c:if test="${m.jCode eq 'J6'}">selected</c:if>>이사</option>
										<option value="J7" <c:if test="${m.jCode eq 'J7'}">selected</c:if>>상무</option>
										<option value="J8" <c:if test="${m.jCode eq 'J8'}">selected</c:if>>사장</option>
									</select>
								</div>
								<c:if test="${m.mEntDate == null }">
									<div class="td6">-</div>
								</c:if>
								<c:if test="${m.mEntDate != null }">
									<div class="td6">${m.mEntDate }</div>
								</c:if>
								
								<c:if test="${m.mHireDate == null }">
									<div class="td7">-</div>
								</c:if>
								<c:if test="${m.mHireDate != null }">
									<div class="td7">${m.mHireDate }</div>
								</c:if>
								<input type='hidden'>
								<c:if test="${m.mStatus =='Y' && m.mAdmin == '2'}"><div class="td8"><button class="welcome" value='${m.mNo }'>초대</button></div></c:if>
								<c:if test="${m.mStatus =='Y' && m.mAdmin == '1' || m.mAdmin == '0'}"><div class="td8"><button class="goodbye" value='${m.mNo }'>퇴사</button></div></c:if>
								<c:if test="${m.mStatus =='N' }"><div class="td8">퇴사사원</div></c:if>
							</div>
						</c:forEach>
					</div>
				</div>
<!-- 			</form> -->
			</div>
		</div>
	</div>
</body>

<script>
// 	$('.selectmNo').on('checked', function(){
// 		var mNo = $(this).val();
// 	})
	
	
	$('input[name="mNo"]').change(function(){
		var mNo = $(this).val();
		var dCode = $('select[name="dCode"]').val();
		var jCode = $('select[name="jCode"]').val();
		console.log(mNo);
		console.log(dCode);
		console.log(jCode);
	});
	
	$('.goodbye').on('click',function(){
		var mNo = $(this).val();
		location.href='updateBtnN.me?mNo='+mNo;
	});
	
	$('.welcome').on('click',function(){
		var mNo = $(this).val();
		location.href='updateBtnY.me?mNo='+mNo;
	});
</script>
</html>