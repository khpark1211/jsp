<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정</title>
<style type="text/css">
	div{text-align: center; margin: 100px; auto;}
	table{width: 800px; margin: 0 auto; border-collapse: collapse; text-align: center;}
	table, tr, th, td {border: 1px solid blue;} 
	h1{text-align: center;}
</style>
<script type="text/javascript">
	function update_ok(f) {
		f.action="update_ok.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<h1>내 정보 수정</h1>
	<div>
		<form method="post">
		<table>
			<thead>
				<tr><th>번호</th><th>아이디</th><th>이름</th><th>나이</th><th>주소</th> </tr>
			</thead>
			<tbody>
				<tr>
					<td>${pvo.idx}</td> <td>${pvo.id}</td> 
					<td><input type="text" value = "${pvo.name}" name="name" ></td>
					<td><input type="text" value="${pvo.age}" name ="age"></td>
					<td><input type="text" value="${pvo.addr}" name="addr"></td> 
				</tr>
				<input type="hidden" name="idx" value="${pvo.idx}" >
				<input type="hidden" name="id" value="${pvo.id}" >			
				<input type="hidden" name="pw" value="${pvo.pw}" >
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">
					    <button onclick="update_ok(this.form)">내정보수정</button> 
					</td>
				</tr>
			</tfoot>
		</table>
		</form>
	</div>
</body>
</html>