<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{text-align: center; margin: 0 auto;}
	fieldset {margin: 0 auto; width: 300px;}
</style>
<script type="text/javascript">
	function join_go(f) {
		f.action = "join.jsp";
		f.submit();
	}
   function login_go(f) {
	   f.action = "login.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div>
		<form method="post">
			<fieldset>
				<legend>로그인</legend>
				<p> 아이디 : <input type="text" name="id"></p>
				<p> 패스워드 : <input type="password" name="pw"></p>
				<input type="button" value="회원가입" onclick="join_go(this.form)">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="로그인" onclick="login_go(this.form)">
			</fieldset>
		</form>
	</div>
</body>
</html>