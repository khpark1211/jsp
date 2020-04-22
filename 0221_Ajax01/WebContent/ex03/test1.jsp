<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 외부 JSP 파일 읽어오기 </title>
<style type="text/css">
	div{border: 1px solid red ; width: 600px; height: 300px;}
</style>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn1").click(function() {
			// .load(url, data, callback);
			// data1.jsp 파일을 읽어서 id res 곳에 삽입하시오 
			$("#res1").load("data1.jsp")
		});
		$("#btn2").click(function() {
			// .load(url, data, callback);
			// data1.jsp 파일을 읽어서 id res 곳에 삽입하시오 
			$("#res2").load("data2.jsp")
		})
		/*
		$("#menu").click(function() {
			$("#output").load("data3.jsp")
		})
		*/
		$("#menu").on("mouseover",function() {
			$("#output").load("data3.jsp");
		})
		$("#menu").on("mouseout",function() {
			$("#output").empty()
		})
	});
</script>
</head>
<body>
	<div>
		<h2>iframe 활용하기 </h2>
		<iframe src="data1.jsp" style="width: 80%; height: 50%;"></iframe>
	</div>
	<hr>
	<div>
		<h2> include 활용하기 </h2>
		<jsp:include page="data1.jsp" />
	</div>
	<hr>
	<div>
		<h2> jQuery 활용하기 </h2>
		<p id="res1"></p>
		<button id="btn1">가져오기</button>
	</div>
	<hr>
	<div>
		<h2> jQuery 활용하기 </h2>
		<p id="res2"></p>
		<button id="btn2">가져오기</button>
	</div>
	<hr>
	<div>	
		<p id="menu"> 메뉴보기 </p>
		<span id="output"></span>
	</div>
</body>
</html>