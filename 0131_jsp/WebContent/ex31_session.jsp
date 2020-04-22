<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 데이터 저장 및 호출</title>
</head>
<body>
	<% session.setAttribute("ict","jsp"); %>
	
	세션 ID : <%=session.getId() %> <br>
	세션 데이터 호출 : <%=session.getAttribute("ict") %>
</body>
</html>