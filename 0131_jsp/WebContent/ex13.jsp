<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    // 속성을 이용해서 데이터를 저장하자
    pageContext.setAttribute("p_id", id);
    pageContext.setAttribute("p_pw", pw);
    
    request.setAttribute("r_id", id);
    request.setAttribute("r_pw", pw);
    
    session.setAttribute("s_id", id);
    session.setAttribute("s_pw", pw);
    
    application.setAttribute("a_id", id);
    application.setAttribute("a_pw", pw);
    
    String v = "태권브이";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 객체가 가지고 있는 저장소</title>
</head>
<body>
	<h1> 결과 보기 (ex13.jsp) </h1>
	<h2>
		<li> 아이디 : <% out.println(id); %> </li>
		<li> 패스워드 : <% out.println(pw); %> </li>
		<hr>
		<li>pageContext 아이디 : <%=pageContext.getAttribute("p_id") %></li>
		<li>pageContext 패스워드 : <%=pageContext.getAttribute("p_pw") %></li>
		<hr>
		<li>request 아이디 : <%=request.getAttribute("r_id") %></li>
		<li>request 패스워드 : <%=request.getAttribute("r_pw") %></li>
		<hr>
		<li>session 아이디 : <%=session.getAttribute("s_id") %></li>
		<li>session 패스워드 : <%=session.getAttribute("s_pw") %></li>
		<hr>
		<li>application 아이디 : <%=application.getAttribute("a_id") %></li>
		<li>application 패스워드 : <%=application.getAttribute("a_pw") %></li>
		
		<%-- <% response.sendRedirect("ex14.jsp"); %> --%>
		
		<%-- <% request.getRequestDispatcher("ex14.jsp").forward(request, response); %> --%>
	</h2>
</body>
</html>







