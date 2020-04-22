<%@page import="com.ict.edu.VO"%>
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="vo" class="com.ict.edu.VO" />
<jsp:setProperty property="*" name="vo"/>

<%	VO pvo  = DAO.getInstance().getLogin(vo);
    session.setAttribute("pvo", pvo); 
 %>
<c:choose>
	<c:when test="${empty pvo}">
		<script>
			alert("로그인 실패");
			location.href="index.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<%-- 방법1  : 아이디 패스워드 노출 --%>
		<%--
		<script>
			alert("로그인  성공");
			location.href="onelist.jsp?id=${pvo.id}&pw=${pvo.pw}";
		</script>
		 --%>
		 
		 <%-- 방법2  : 로그인 성공 메세지 안나옴 --%>
		 <%--
		 <script>
			alert("로그인  성공");
		 </script>
		
		<c:redirect url="onelist.jsp">
			<c:param name="pvo" value="pvo" />
		</c:redirect>
		 --%>
		<script>
			alert("로그인  성공");
			/* pvo 정보를 session에 저장 */ 
			location.href="onelist.jsp";
		</script>
	</c:otherwise>
</c:choose>    