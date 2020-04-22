<%@page import="com.ict.edu.VO"%>
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%	
	VO vo = (VO)session.getAttribute("pvo");
	int result = DAO.getInstance().getDelete(vo.getIdx()); 
	pageContext.setAttribute("res", result); 
%>
 <c:choose>
	<c:when test="${res>0}">
		<script>
			alert("삭제성공");
			location.href="list.jsp";
		</script>
	</c:when>
	<c:otherwise>
	<script>
			alert("삭제실패");
			history.go(-1);
		</script>
	</c:otherwise>
</c:choose>
