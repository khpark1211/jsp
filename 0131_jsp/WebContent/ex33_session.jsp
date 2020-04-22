<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 : 로그인 연습</title>
<script type="text/javascript">
	function login_go(f) {
		f.action="ex34_result.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<h2> 로그인 </h2>
	<form>
		<input type="text" name="name">
		<input type="button" value="login" onclick="login_go(this.form)" >
	</form>
</body>
</html>