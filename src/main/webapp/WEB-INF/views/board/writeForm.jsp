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
<<<<<<< HEAD
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
		
		
			
=======
		<div style="width: 60%; margin: 0 auto;">
			<h3>공지사항 작성</h3>
			<hr color="#000000">
			<div align="center">
				<input type="text" name="title" id="title" value="${boardDto.title }" style="height:50px; width:680px" placeholder="제목"><br>
				<textarea rows="50" cols="100" name="content" id="content" placeholder="내용">${boardDto.content }</textarea><br>
				<input type="button" value="공지사항 작성" onclick="writeNotice()" class="button button1">	
			</div>
		</div>
		
>>>>>>> 57ed98fe1f08d4128a30327099bc0a6751a41162
	</form>
	</div>
</body>
</html>