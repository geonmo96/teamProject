<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function writeNotice(){
		var title = $("#title").val();
		var content = $("#content").val();
		if(title == false){
			alert("공지사항 제목을 입력하세요");
		} else if(content == false){
			alert("공지사항 내용을 입력하세요");
		} else{
			alert("새로운 공지사항이 등록되었습니다")
			fo.submit();
		}
	}
</script>

<style type="text/css">
table {
	width: 80%;
	margin: auto;
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
	<div style="padding: 10px 10% 0px 10%;">
	<form action="write" method="post" id="fo">
	<table>
	<tr>
		<td>제 목</td>
		<td width="80%">
		<textarea rows="1" cols="70" name="title" id="title" placeholder="공지사항 제목을 입력하세요"></textarea></td>		
	</tr>
	
	<tr>
		<td>내 용</td>
		<td>
		<textarea rows="10" cols="70" name="content" id="content" placeholder="공지사항 내용을 입력하세요"></textarea>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" style="text-align:center;">
		<br>
		<input type="button" value="공지사항 작성" onclick="writeNotice()"></td>
	</tr>
	
	</table>
		
		
			
	</form>
	</div>
</body>
</html>