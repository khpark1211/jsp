<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ex19.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 에러 처리 </title>
</head>
<body>
  <%-- 에러 발생 --%>
  <%--  name 파라미터 값 : <%= Integer.parseInt(request.getParameter("name")) %> --%>
  
  <%--  해결 방법1 : try ~ catch --%>
  <%--
    <%try{%>
  	   name 파라미터 값 : <%= Integer.parseInt(request.getParameter("name"))%>
    <%}catch(Exception e){
    	out.println("<b> name 파라미터값이 올바르지 않습니다. </b>");
    }%>  
  --%>
  
   <%-- 해결방법2 : 에러 페이지 지정 (page 지시어 활용)--%>
   name 파라미터 값 : <%= Integer.parseInt(request.getParameter("name")) %>
</body>
</html>




