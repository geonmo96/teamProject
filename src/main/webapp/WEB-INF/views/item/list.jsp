<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.care.root.file.service.FileServiceImpl"%>
<%@page import="com.care.root.file.service.FileDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	
	<jsp:include page="../default/header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<h1 style="margin: 0 0 0 10%">상품 목록</h1>
	<hr color="#BDBDBD" width="80%">
	<table style="margin: 0 0 0 10%; width: 80%; ">
	<c:set var="count">1</c:set>
	<c:forEach var="item" items="${alllist }" begin="0" end="${allnum }" varStatus="number">
	<td><a href="itemview?itemnum=${alllist.get(number.index)}"> <img src="../../img/${alllist.get(number.index)}.jpg" style="width:150px; height: 150px" >
	${allname.get(number.index)}
	</a></td>
	<c:if test="${count%3 == 0 }"><tr></c:if>
	<c:set var="count">${count+1 }</c:set>
	</c:forEach>
	</table>
	<hr color="#BDBDBD" width="80%">
	<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>