<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax를 이용해서 xml 파일 가져오기 </title>
<style type="text/css">
	table { width: 600px;}
	table, th, td {border: 1px solid red; text-align: center;}
</style>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "data02.xml",
			dataType : "xml",
			method : "get",
			success : function(data) {
				var table = "<table>";
				table += "<thead><tr><th>종류</th><th>가격</th></tr></thead>";
				table += "<tbody>";
				$(data).find("product").each(function() {
					var name = $(this).attr("name");
					var price = $(this).attr("price");
					table += "<tr><td>"+ name + "</td><td>"+price+"</td></tr>";
				});
				table += "</tbody></table>";
				$("#out").append(table);
			} ,
			error : function() {
				alert("가져오기 실패");
			}
				
		});
	});
</script>
</head>
<body>
	<h2> xml 파일 가져오기 </h2>
	<div id="out"></div> 
</body>
</html>