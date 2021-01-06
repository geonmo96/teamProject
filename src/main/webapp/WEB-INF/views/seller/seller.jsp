<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upload Form</title>
<style type="text/css">
.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 10px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 18px;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
	cursor: pointer;
}

.button1 {
	background-color: #555555;
	color: white;
}

.button1:hover {
	background-color: black;
	color: white;
}
</style>
</head>
<body>
	<%response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8"); %>
	<jsp:include page="../default/header.jsp"></jsp:include>

	<c:set var="path" value="${pageContext.request.contextPath }"/>
<h1 style="margin: 0 0 0 10%">상품 등록</h1>
<hr color="#BDBDBD" width="80%">
<form action="${path}/seller/upload" method="post" enctype="multipart/form-data" >
	
	<table  style="margin: 0 0 0 10%; ">
	<tr><td><select class="category" name="categorynum">
	<option value="0">전체</option>
	<option value="1">육지</option>
	<option value="2">해상</option>
	<option value="3">공중</option>
	</select><br></td>
	<tr><th><label>상품명 : </label></th><td colspan="2"><input type="text" name="itemName"></td></tr>
	<tr><th><label>제조사 : </label></th><td colspan="2"><input type="text" name="makerName"></td></tr>
	<tr><th><label>브랜드 : </label></th><td colspan="2"><input type="text" name="brandName"></td></tr>
	<tr><th><label>원산지 : </label></th><td colspan="2"><input type="text" name="makeRegion"></td></tr>
	<tr><th><label>상품무게 : </th><td>
	</label><input type="text" name="kg"></td><td><select class="category" name="kgpic">
	<option value="0">단위</option>
	<option value="1">g</option>
	<option value="2">Kg</option>
	<option value="3">T</option>
	</select></td></tr>
	<tr><th><label>상품가격: </label></th><td colspan="2"><input type="text" name="itemprice"></td></tr>
	<tr><th><label>재료원산지 : </label></th><td colspan="2"><input type="text" name="itemRegion"></td></tr>
	<tr><th><label>상품설명 : </label></th><td colspan="2"><br><textarea name="itemValue" ></textarea></td></tr>
	<tr><td colspan="3"><input type="file" name="file" >
	<input type="submit" value="업로드" class="button button1"></td></tr>
	</table>
</form>

<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>