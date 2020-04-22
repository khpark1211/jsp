<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	  3. 요청 헤드의 정보 제공 
	     1) getHeader(String name) : 헤더값 구하기
	     2) getHeaders(Enumeration) : 헤더 목록 구하기
	     3) getHeaderNames() : 헤더 이름구하기 
	     4) getIntHeader(String name) : 헤더값을 정수값으로 구하기
	     5) getDateHeader(String name) : 헤더값을 시간값으로 구하기
	 --%>
	 <h2> HTTP 헤더 정보 보기 </h2>
	 <h3>
	 	<%
	 		Enumeration e_num = request.getHeaderNames();
	 	    while(e_num.hasMoreElements()){
	 	    	String h_name = (String)e_num.nextElement();
	 	    	String h_value = request.getHeader(h_name);
	 	    	out.println(h_name + " : " + h_value + "<br>");
	 	    }
	 	%>
	 </h3>
</body>
</html>