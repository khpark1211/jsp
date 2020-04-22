<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery를 이용해서 xml, json, script 파일 가져오기</title>
<style type="text/css">
	table{width: 600px; margin-top: 50px; border-collapse: collapse;}
	table, th, td {border: 1px solid skyblue; text-align: center;}
</style>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			$("#out").empty() ; // 초기화
		    $.getScript("data04.js"); 
		});
	});
</script>
</head>
<body>
	<div id="btn"> script 가져오기 </div>
	<div id="out"></div> 
</body>
</html>