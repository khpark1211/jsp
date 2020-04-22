<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function f_up(f) {
		f.action="ex02.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<%--
	   1.  http://www.servlets.com/cos/ => cos-20.08.zip 다운받아서 압축해제
		   lib - cos.jar를  사용한다.
		2. 반드시 <form method="post" enctype="multipart/form-data"> 설정해야 된다.
	 --%>
	 
	 <form method="post" enctype="multipart/form-data">
	 	<p> 올린 사람 : <input type="text" name="name"></p>
	 	<p> 파일 : <input type="file" name="f_name"></p>
	 	<input type="button" value="업로드" onclick="f_up(this.form)" >
	 </form>
</body>
</html>