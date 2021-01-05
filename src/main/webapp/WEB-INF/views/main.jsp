<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
  <style>
 @keyframes slidy {
0% { left: 0%; }
20% { left: 0%; }
25% { left: -100%; }
45% { left: -100%; }
50% { left: -200%; }
70% { left: -200%; }
75% { left: -300%; }
95% { left: -300%; }
100% { left: -400%; }
}
 
body {
	margin: 0;
	} 
div#slider {
	overflow: hidden;
	}
div#slider figure img {
	width: 20%; float: left;
	}
div#slider figure { 
  position: relative;
  width: 500%;
  margin: 0;
  top:0;
  left: 0;
  text-align: left;
  font-size: 0;
  -webkit-animation: 20s slidy ease-in-out infinite;
  animation: 20s slidy ease-in-out infinite; 
}

</style>
</head>

<body>
	<jsp:include page="default/header.jsp"></jsp:include>
<div style="padding: 0px 15% 0px 15%;">

 <div id="slider">
 <h2> 잘먹고 잘사는 습관, 백미양식</h2>
<figure>
<img src="../resources/images/main_img/1.jpg">
<img src="../resources/images/main_img/2.jpg">
<img src="../resources/images/main_img/3.jpg">
<img src="../resources/images/main_img/4.jpgg">
<img src="../resources/images/main_img/5.jpg">
</figure>
</div>
</div>

</body>
</html>