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
			var table ="<table>";
			table += "<thead><tr><th> 종류 </th> <th> 가격 </th> </tr></thead>";
			table += "<tbody>" ;
			
			// jQuery 에서  xml 가져오는 메소드 : get(xml, html, txt);
			$.get("data01.xml", function(data) {
				// find("product") 
				// => 자바스크립트의 getElementsByTagName("product") 와 같은 뜻
				// .each는 for문
				$(data).find("product").each(function() {
					// 현재 name태그에서 글자만 추출 하자 
					var name = $(this).find("name").text();
					var price = $(this).find("price").text();
					
					table += "<tr>";
					table += "<td>"+name +"</td><td>"+price+"</td><tr>";
				});
				table += "</tbody></table>";
				$("#out").append(table);
			});
		});
	});
</script>
</head>
<body>
	<div id="btn"> xml 파일 가져오기 </div>
	<div id="out"></div> 
</body>
</html>