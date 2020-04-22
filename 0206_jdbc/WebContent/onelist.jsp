<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 개인 회원 정보 보기 </title>
<style type="text/css">
	div{text-align: center; margin: 100px; auto;}
	table{width: 500px; margin: 0 auto; border-collapse: collapse; text-align: center;}
	table, tr, th, td {border: 1px solid blue;} 
	fieldset { width: 300px; margin: 0 auto;}
	h1{text-align: center;}
</style>
<script type="text/javascript">
	function list_go() {
		location.href = "list.jsp";
	}
	function update_go() {
		location.href = "update.jsp";
	}
	function delete_go() {
		location.href = "delete.jsp";
	}
</script>
</head>
<body>
	<div>
		<h1> 개인 회원 정보 보기  </h1>
		<table>
			<thead>
				<tr><th>번호</th><th>아이디</th><th>이름</th><th>나이</th><th>주소</th> </tr>
			</thead>
			<tbody>
				<tr><td>${pvo.idx}</td> <td>${pvo.id}</td> <td>${pvo.name}</td><td>${pvo.age}</td> <td>${pvo.addr}</td>  </tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">
						<button onclick="list_go()">전체목록</button> 
					    <button onclick="update_go()">내정보수정</button> 
					    <button onclick="delete_go()">회원탈퇴(삭제)</button> 
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>





