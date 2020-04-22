<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 결과 페이지 </title>
</head>
<body>
<%-- 필요한 정보가 request, session에 담아 있으면 EL, JSTL를 사용하여 표시한다. --%>
	<h1>${title}</h1>
	<h2>
		<li> ${name}</li>
		<li> ${age}</li>
		<hr>
		<li> ${requestScope.name}</li>
		<li> ${requestScope.age}</li>
		<hr>
		<li> ${sessionScope.name}</li>
		<li> ${sessionScope.age}</li>
		<hr>
	</h2>
</body>
</html>