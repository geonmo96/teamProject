<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">

.table {
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

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
<script type="text/javascript">
	function submitBtn(){
		if(document.getElementById("name").value == null){
			alert("이름을 입력하세요")
		} else if(document.getElementById("id").value == null){
			alert("아이디를 입력해주세요")
		}else {
			fo.submit();
		}
	}
	
</script>
<body>
	<jsp:include page="../default/header.jsp"></jsp:include>
	<a href="findPwTel">가입된 전화번호로 찾기</a>
	<form action="pwEmailCheck" method="post" id="fo">
		<table class="table">
			<tr>
				<td colspan="2"><h3>이메일로 비밀번호 찾기</h3><hr></td>
			</tr>
			<tr>
				<td align="center"><input type="text" name="name" id="name" placeholder="이름을 입력하세요" style="text-align:left; width:60%; height:30px;"> </td>
			</tr>
			<tr>
				<td align="center"><input type="text" name="id" id="id" placeholder="아이디를 입력하세요" style="text-align:left; width:60%; height:30px;"> </td>
			</tr>
			<tr>
				<td align="center"><input type="button" value="비밀번호 찾기" onclick="submitBtn()" class="button button1"> </td>
			</tr>
		</table>
		
	</form>
</body>
</html>