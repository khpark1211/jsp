<%@page import="com.ict.edu.VO"%>
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="vo" class="com.ict.edu.VO" />
<jsp:setProperty property="*" name="vo"/> 
 
<%	int result = DAO.getInstance().getUpdate(vo); 
    pageContext.setAttribute("res", result); %>
    
 <c:choose>
 	<c:when test="${res>0}">
 		<script>
 			alert("수정 성공");
 			<%
 			    // 예전 정보(로그인 한 정보)를 현재 정보(update)로 덮어쓰기 하자
 		         session.setAttribute("pvo", vo); 
 			%>
 			location.href = "onelist.jsp";
 		</script>
 	</c:when>
 	<c:otherwise>
 		<script>
 			alert("수정실패");
 			history.go(-1);
 		</script>
 	</c:otherwise>
 </c:choose>       