<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 내장 객체 : out </title>
</head>
<body>
<%--
	  JSP 기본 내장 객체  : request, response, out, 
                   page, pageContext, session, application,
                   config, exception
      3. out : 브라우저에 출력하는 역할      
                 태그를 이용해야지만 줄변경, 띄어쓰기, 가능 
 --%>	
 <% out.println("<h1> Hello World </h1>"); %>
 <% out.println("Hello jsp          Hello jsp"); %>
 <% out.println("Hello jsp"); %>
 <% out.println("Hello jsp"); %>
 <% 
     for(int i=0; i<11; i++){
    	 out.println(i);
     }
 %>
</body>
</html>