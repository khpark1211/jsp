<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax를 이용해서 json 파일 가져오기 </title>
<style type="text/css">
	table { width: 600px;}
	table, th, td {border: 1px solid red; text-align: center;}
</style>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "data04.txt",
			dataType : "text",
			method : "get",
			success : function(data) {
				var table = "<table>";
				table += "<thead><tr><th>번호</th><th>이름</th><th>나이</th><th>주소</th></tr></thead>";
				table += "<tbody>";
				
				var rows = data.split("/");
				var cols = "" ;
				for ( var k in rows) {
					table += "<tr>";
					cols = rows[k].split(",");
					for ( var k2 in cols) {
						table +="<td>"+cols[k2] +"</td>";
					}
					table += "</tr>";
				}
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
	<h2> json 파일 가져오기 </h2>
	<div id="out"></div> 
</body>
</html>