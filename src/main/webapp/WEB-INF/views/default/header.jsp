<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<style>
a {
	text-decoration: none !important;
	color: #000000;
}
a:hover {
	text-decoration: none !important
}

.menu{
 	margin: auto;
 	width: 100%;
 	height: 50px;
 	background-color: #E5D85C;
 	display: table;
 }
 .menu_list{
 	text-align: center;
 	display:table-cell;
 	vertical-align: middle;
 }
 
</style>
</head>
<body>
	<div>
		<table width="100%" background="">
			<tr>
				<td width="30%"></td>
				<td align="center" width="30%">
					<a href="#" width="40%">
						<img src="../resources/images/logo.png" height="100px">
					</a>
				</td>
				<td align="right" valign="top" width="30%">
					<c:choose>
						<c:when test="${sessionScope.USER == null}">
							<a href="${pageContext.request.contextPath }/member/loginForm">로그인</a>&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath }/member/signupSelect">회원가입</a>&nbsp;&nbsp;

					</c:when>
					<c:otherwise>
						${sessionScope.USER }님&nbsp;&nbsp;
						<c:if test="${sessionScope.sales == 'sales member' }">
							<a href="${pageContext.request.contextPath }/seller/form">상품 등록</a>&nbsp;&nbsp;
						</c:if>
						<a href="${pageContext.request.contextPath }/member/myInfo">마이페이지</a>&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath }/member/logout">로그아웃</a>
					</c:otherwise>
					</c:choose></td>
			</tr>
		</table>
		
		<div class="menu">	
		<p class="menu_list">
		<b>
			<a href="${pageContext.request.contextPath }/item/catelist?cate=1">산지직송</a>&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath }/item/catelist?cate=2">지역명물</a>&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath }/item/catelist?cate=3">차&음료</a>&nbsp;&nbsp;
			<a href="#">묻고 답하기</a>&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath }/board/listView">공지사항</a>&nbsp;&nbsp;
			<a href="#">리뷰이벤트</a>&nbsp;&nbsp;
			<a href="#">쇼핑스토리</a>&nbsp;&nbsp;
			<a href="#">판매자정보</a>
		</b>
		</p>
		</div>
	</div>
	<br><br>
</body>
</html>