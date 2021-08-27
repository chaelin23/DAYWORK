<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member.css">
</head>
<body>
	<div class="login-king">
		<div class="login-logo"></div>
		<div class="loginArea">
			<c:if test="${ empty sessionScope.loginUser }">
				<form action="login.me" method="post">
					<div class="login-login">
						<table>
							<tr>
								<td>사번</td>
								<td><input type="text" name="mNo"></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="mPwd"></td>
							</tr>
						</table>
					</div>
					<button id="login-btn">로그인</button>
				</form>
					<div class="login-service">
							<c:url var="joinMember" value="joinMember.me"/>
							<c:url var="whereMno" value="gowhereMno.me"/>
							<c:url var="wherePwd" value="wherePwd.me"/>
							<button onclick="location.href='${joinMember}'">회원가입</button>
							<button onclick="location.href='${whereMno}'">사번찾기</button>
							<button onclick="location.href='${wherePwd}'">비밀번호찾기</button>
					</div>
			</c:if>
			<c:if test="${ !empty sessionScope.loginUser }">
					<c:out value="${ loginUser.mName }님 환영합니다."/> <!-- c:out 활용 -->
					<c:url var="myinfo" value="myinfo.me"/>
					<c:url var="logout" value="logout.me"/>
					<c:url var="address" value="address.ad"/>
					<button onclick="location.href='${myinfo}'">정보보기</button>
					<button onclick="location.href='${logout}'">로그아웃</button>
					<button onclick="location.href='${address}'">주소록</button>
			</c:if>
		</div>
	</div>
</body>
</html>