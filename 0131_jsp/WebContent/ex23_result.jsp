<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 액션 : useBean</title>
</head>
<body>
<%-- VO vo = new VO(); 와 같음 --%>
<jsp:useBean id="vo" class="com.ict.edu.VO" scope="page" />
<%-- 파라미터들이 setter를 이용에서 들어간다. --%>
<jsp:setProperty property="*" name="vo"/>
<h2>
	<%-- getter호출 --%>
	<li> 이름 : <jsp:getProperty property="name" name="vo"/> </li>
	<li> 나이 : <jsp:getProperty property="age" name="vo"/> </li>
	<li> 주소 : <%=vo.getAddr() %> </li>
	<li> 성별 : <%=vo.getGender() %> </li>
	<li> 취미 : 
	     <%for(String k : vo.getHobby()){
	    	   out.println(k + "&nbsp;&nbsp;"); 
	      }
	     %>
	</li>
	<li> 거주지 : <%=vo.getResidence() %> </li>
	<li> 반려동물 : 
	     <%for(String k : vo.getAnimal()){
	    	   out.println(k + "&nbsp;&nbsp;"); 
	      }
	     %>
	</li>
	<li> cPage : <%=vo.getcPage() %> </li>
</h2>
</body>
</html>