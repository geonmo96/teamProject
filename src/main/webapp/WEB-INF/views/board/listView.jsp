<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function writeNotice(){
		location.href="writeForm";
	}
</script>

<style type="text/css">
table {
	width: 90%;
	margin: auto;
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div style="padding: 10px 10% 0px 10%;">
	<h2>공지사항</h2>
	<hr>
		<table> 			  
			<tr>
				<th height="30px">번호</th>
				<th width="50%">제목</th>
				<th>조회수</th>
				<th>작성일</th>
			</tr>
			
			<c:forEach items="${list }" var="boardDto">
				<tr>
					<td height="25px" >01</td>
					<td><a href="contentView?write_no=${boardDto.write_no }">${boardDto.title }</a></td>
					<td>${boardDto.hit }</td>
					<td>${boardDto.savedate }</td>					
				</tr>
			</c:forEach>					
			
		</table>
		<br>
		<div >	
			<c:if test="${sessionScope.admin == 'admin' }">
				<input type="button" onclick="writeNotice()" value="공지사항 등록">
			</c:if>
		</div>
	</div>
	
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>