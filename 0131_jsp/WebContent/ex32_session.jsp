<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 초기화 (로그아웃)</title>
</head>
<body>
	<%-- 해당 속성 하나만 삭제 --%>
	<%-- <% session.removeAttribute("name"); %> --%>
	
	<%-- 세션 전체 초기화 --%>
	<%-- <% session.invalidate(); %> --%>
	
	<%-- 세션 시간 제한 --%>
	<% session.setMaxInactiveInterval(10);%>
	데이터 호출 : <%= session.getAttribute("ict") %>
	
	<%-- 세션 시간 제한 --%>
	<%--
		web.xml
		<session-config>
			<session-timeout>유지시간</session-timeout>
		</session-config>
	 --%>
	
</body>
</html>