<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/address.css">
</head>
<body>

	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	
	<div class="main-king">

		<%@ include file="../common/mainLeft.jsp"%>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">

			<div class="address-title">주소록</div>

			<br> <br> <br>
			<form action="updateViewAddress.ad">
			<table id="address-detail" class="table-form">
				<c:if test="${ code == null }">
				<tr>
					<td class="address-table-margin">사진</td>
					<td><div class="photo">
							<div class="basic-photo" >
								<c:if test="${ add.renameFileName == null } ">
								</c:if>
								<c:if test="${ add.renameFileName != null}">
								<img style="width: 120px; height: 120px;" src="${ contextPath }/resources/addUploadFiles/${ add.renameFileName }">								
								</c:if>
							</div>
						</div></td>
				</tr>
				<input type="hidden" name="aNo" value="${ add.aNo }">
				<tr>
					<td>이름</td>
					<td>${ add.name }</td>
				</tr>
				<tr>
					<td>회사</td>
					<td>${ add.comName }</td>
				</tr>
				<tr>
					<td>부서</td>
					<td>${ add.dept }</td>
				</tr>
				<tr>
					<td>직위</td>
					<td>${ add.job }</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>${ add.email }</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>${ add.phone }</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>${ add.address }</td>
				</tr>
				<tr>
					<td>회사전화번호</td>
					<td>${ add.comPhone }</td>
				</tr>
				<tr>
					<td>회사 주소</td>
					<td>${ add.comAddress }</td>
				</tr>
				<tr>
					<td>메모</td>
					<td><textarea cols="50" rows="7" readonly>${ add.memo }</textarea></td>
				</tr>
				</c:if>
				<c:if test="${ code == 2 }">
					<tr>
						<td class="address-table-margin">사진</td>
						<td><div class="photo">
								<div class="basic-photo" >
									<c:if test="${ member.renameFileName == null } ">
									</c:if>
									<c:if test="${ member.renameFileName != null}">
									<img style="width: 120px; height: 120px;" src="${ contextPath }/resources/addUploadFiles/${ member.renameFileName }">								
									</c:if>
								</div>
							</div></td>
					</tr>
					<input type="hidden" name="aNo" value="${ member.mNo }">
					<tr>
						<td>이름</td>
						<td>${ member.mName }</td>
					</tr>
					<tr>
						<td>부서</td>
						<td>${ member.dCode }</td>
					</tr>
					<tr>
						<td>직위</td>
						<td>${ member.jCode }</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>${ member.mEmail }</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>${ member.mPhone }</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>${ member.mAddress }</td>
					</tr>
					<tr>
						<td>생일</td>
						<td>${ member.mBirthDay }</td>
					</tr>
					<tr>
						<td>입사일</td>
						<td>${ member.mEntDate }</td>
					</tr>					
					</c:if>
			</table>

			<br><br>

			<div>
			<c:if test="${ code != 2 }">
				<button type="submit" class="button point button-margin">수정하기</button>
			</c:if>
				<button type="button" class="button" onclick="location.href='address.ad'">목록</button>
			</div>
			</form>
		</div>
	</div>

</body>
</html>