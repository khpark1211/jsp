<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 파리미터 받는 방법 1 --%>
<%
	request.setCharacterEncoding("utf-8");
    String name =request.getParameter("name");    
    String[] hobby = request.getParameterValues("hobby"); 
    String cPage = request.getParameter("cPage");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL를 이용해서 파라미터값 받기</title>
</head>
<body>
	<h2> 파라미터 받는 방법 1 : request </h2>
	<h3> 
		<li> 이름 : <%=name %> </li>
		<li> 취미 : 
				<%for(String k : hobby){
					out.println(k+"&nbsp;&nbsp;");
				}%>
				
        </li>
        <li> cPage(hidden) : <%=cPage %> </li>
	</h3>
	<hr>
	
	<h2> 파라미터 받는 방법 2 : 자바빈 사용</h2>
	<jsp:useBean id="vo" class="com.ict.edu.VO" />
	<jsp:setProperty property="*" name="vo"/>
	<h3>
	   <li> 이름 : <%=vo.getName() %> </li>
	   <li> 취미 : 
				<%for(String k : hobby){
					out.println(k+"&nbsp;&nbsp;");
				}%>
				
        </li>
         <li> 이름 : <%=vo.getcPage() %> </li>
	</h3>
	<h3>
	   <li> 이름 : ${vo.name} </li>
	   <li> 취미 : 
				<%for(String k : hobby){
					out.println(k+"&nbsp;&nbsp;");
				}%>
				
        </li>
        <li> 이름 : ${vo.cPage} </li>
	</h3>
	<hr>
	
	<h2> 파라미터 받는 방법 3 : EL </h2>
	<%-- ${param.이름},  ${paramValues.이름[index]} --%>
	<h3>
	 	<li> 이름 : ${param.name} </li>
	 	<li> 취미 : ${paramValues.hobby[0]}  
	 	          ${paramValues.hobby[1]} 
	 	          ${paramValues.hobby[2]} 
	 	          ${paramValues.hobby[3]} 
	 	</li>
	 	<li> cPage : ${param.cPage} </li>
	</h3>
</body>
</html>



