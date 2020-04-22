<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 액션 forward</title>
</head>
<body>
<%-- 
 forward :  페이지 이동 
 <jsp:forward page="" />
 <jsp:forward page="" >
	<jsp:param value="" name=""/>
 </jsp:forward>
--%>
<%-- <jsp:forward page="ex13.jsp" /> --%>
	<jsp:forward page="ex13.jsp">
		<jsp:param value="홍길동" name="id"/>
   		<jsp:param value="hong1231" name="pw"/>
	</jsp:forward>
</body>
</html>