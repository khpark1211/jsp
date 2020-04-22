<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 여기는 ex40_result.jsp </h1>
	<h2>
	   <p>이름 : <%=name %></p>
	   <p>이름 : ${param.name}</p>
	</h2>
</body>
</html>