<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 오늘의 날짜 표현 </h2>
	<% 
	   Date now = new Date();
	   String str = "오늘날짜는  02월 21일 입니다.";%>
	   <%= now %> <br>
	   <%= str %> <br>
</body>
</html>