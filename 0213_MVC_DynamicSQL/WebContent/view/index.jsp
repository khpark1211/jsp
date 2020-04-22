<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function search_all(f) {
		f.action="/MyController?cmd=list";
		f.submit();
	}
	function search_dept(f) {
		f.action="/MyController?cmd=dept";
		f.submit();
	}
	function search_dynamic(f) {
		f.action="/MyController?cmd=dynamic";
		f.submit();
	}
</script>
</head>
<body>
	<form method="post">
		<p><input type="button" value="전체보기" onclick="search_all(this.form)"></p>
		<p> 부서코드 : <input type="text" name="deptno">
		<input type="button" value="부서보기" onclick="search_dept(this.form)"></p>
		<p>
		<select name="idx">
		    <option > :: 선택하세요 :: </option>
			<option value="1"> 사번 </option>
			<option value="2"> 이름 </option>
			<option value="3"> 직종 </option>
			<option value="4"> 부서 </option>
		</select>
		 <input type="text" name="keyword">
		 <input type="button" value="동적검색" onclick="search_dynamic(this.form)">
		</p>	
	</form>
</body>
</html>