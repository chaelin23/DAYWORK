<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${ empty member }">
		<div class="whereMno-king">
			<form action="whereMno.me" method="post">
				<table>
					<tr>
						<td>이름</td>
						<td><input type="text" name="mName"></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td><input type="text" name="mPhone"></td>
					</tr>
				</table>
				<button id="whereMno-btn">사번찾기</button>
			</form>
		</div>
	</c:if>
	<c:if test="${ !empty member }">
		<c:if test="${ member.mAdmin == 0}">
		  	${ member.mName }님의 사번은 ${ member.mNo } 입니다. 
		</c:if>
		<c:if test="${ member.mAdmin == 1}">
			${ member.mName }님의 사번은 ${ member.mNo } 입니다.
		</c:if>
		<c:if test="${ member.mAdmin == 2}">
			${ member.mName }님의 사번은 아직
		</c:if>
		<button onclick="location.href='home.do'">홈으로</button> 		
	</c:if>
		
</body>
</html>