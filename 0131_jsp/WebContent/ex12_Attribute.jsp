<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSP 기본 객체가 가지고 있는 저장소 </title>
<script type="text/javascript">
	function send_go(f) {
		f.action="ex13.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<form method="post">
 		<p> ID : <input type="text" name="id"></p>
 		<p> PW : <input type="password" name="pw"></p>
 		<p> <input type="button" value="보내기" onclick="send_go(this.form)"></p> 
 	</form>
</body>
</html>