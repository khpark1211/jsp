<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<%
		// 아이디와 패스워드가 같으면 성공으로 판단하자.
		if(id.equals(pw) ){
			// 쿠키를 만들어주자 (ict, jsp);
			response.addCookie(
					new Cookie("ict",URLEncoder.encode("jsp","utf-8")));
		   out.println("<h2> 로그인 성공 </h2>"); 
		  /* 로그인 하지 않은 상태가 됨 
		      request.getRequestDispatcher("ex28.jsp").forward(request, response); 
		  */	
		  // 로그인한 상태가 됨
		  // response.sendRedirect("ex28.jsp");
		}else{%>
			<script type="text/javascript">
				alert("로그인 실패");
				history.go(-1);
			</script>
		<%}%>
		
		 <a href="ex28.jsp">다른페이지로 넘어가기</a> 
		 <a href="ex29_logout.jsp">로그아웃하기 </a>
</body>
</html>



