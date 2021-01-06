<%@page import="com.care.root.file.service.FileDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<jsp:include page="../default/header.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
	<%FileDTO fdto =(FileDTO)request.getAttribute("fdto"); %>
	<hr color="#EAEAEA" width="80%">
	<img src="../../img/<%=fdto.getItemNum()%>.jpg" style="width:80%; margin: 0 0 0 10%; height: 800px;" >
	<hr color="#EAEAEA" width="80%">
	<h1 style="margin: 0 0 0 10%;">상품 설명</h1>
	<hr color="#BDBDBD" width="80%">
	<table style="margin: 0 0 0 10%;">
	<tr><th>카테고리</th><td><% 
	if(fdto.getCategorynum() == 1){
		%>육지<%
	}
	else if(fdto.getCategorynum() == 2){
		%>해상<%
	}
	else if(fdto.getCategorynum() == 3){
		%>공중<%
	};
							%></td></tr>
	
	<tr><th>상품번호</th><td><%=fdto.getItemNum() %></td><th>상품명</th	><td><%=fdto.getItemName() %></td></tr>
	<tr><th>상품금액</th><td><%=fdto.getItemprice() %>원</td><th>제조사</th><td><%=fdto.getMakerName() %></td></tr>
	<tr><th>브랜드</th><td><%=fdto.getBrandName() %></td>><th>제조국</th><td><%=fdto.getMakeRegion() %></td></tr>
	<tr><th>원산지</th><td><%=fdto.getItemRegion() %></td><th>총중량</th><td><%=fdto.getKg() %>
	<%if(fdto.getKgpic() == 1){
		%>g<%
	}
	else if(fdto.getKgpic() == 2){
		%>Kg<%
	}
	else if(fdto.getKgpic() == 3){
		%>T<%
	};%>
	</td></tr>
	<tr><th>상품설명</th><td><textarea rows="10" cols="60" readonly="readonly"><%=fdto.getItemValue() %></textarea></td></tr>
	<tr><th><a href="#" class="button button1">구매</a></th><th></th><th><a href="../item/list" class="button button1" >목록보기</a></th></tr>
	


	</table>
	<hr color="#BDBDBD" width="80%">	
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>