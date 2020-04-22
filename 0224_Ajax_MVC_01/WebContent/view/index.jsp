<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{text-align: center;}
	table {width: 700px; margin: 0 auto;}
	table, th, td {
		border: 1px solid darkblue; 
		text-align: center; 
		border-collapse: collapse;
	}
</style>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn1").click(function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController",
				type : "get",
				dataType : "xml",
				success : function(data) {
					var str = "";
					$(data).find("product").each(function() {
						str += "<tr>";
						var name = $(this).find("name").text();
						var price = $(this).find("price").text();
						str += "<td>"+ name + "</td><td>"+price+"</td>";
						str += "</tr>";
					});
					$("#tbody").append(str);
				},
				error : function() {
					alert("읽기 실패");
				}
			});
		});
		
		$("#btn2").click(function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController2",
				type : "get",
				dataType : "xml",
				success : function(data) {
					var str = "";
					$(data).find("product").each(function() {
						str += "<tr>";
						var name = $(this).find("name").text();
						var price = $(this).find("price").text();
						str += "<td>"+ name + "</td><td>"+price+"</td>";
						str += "</tr>";
					});
					$("#tbody").append(str);
				},
				error : function() {
					alert("읽기 실패");
				}
			});
		});
	});
</script>
</head>
<body>
	<div>
		<button id="btn1"> xml 정보 가져오기 </button>
		<button id="btn2"> xml 정보 가져오기 </button>
	</div>
	<hr>
	<div>
		<table>
			<thead>
				<th> 종류</th> <th> 가격 </th>
			</thead>
			<tbody id="tbody"></tbody>
		</table>
	</div>
</body>
</html>