<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 반드시 요청에 대한 파라미터 값 한글 처리 
    request.setCharacterEncoding("utf-8");

    // 파라미터값 받기 
	String name = request.getParameter("name");
    String age = request.getParameter("age");
    String addr = request.getParameter("addr");
    String gender = request.getParameter("gender");
    String[] hobby = request.getParameterValues("hobby");
    String residence =  request.getParameter("residence");
    String[] animal = request.getParameterValues("animal");
	String cPage = request.getParameter("cPage");		
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> form에서 파라미터값 받아서 표시하기 </title>
</head>
<body>
<%--
	나) html 폼과 요청 파라미터의 정보를 제공
	  1) getParameter(String name) : String : 파라미터값구하기
	  2) getParameterVlaues(String name) : String[] : 파라미터값을 배열로 구하기
	  3) getParameterMap() : Map : 파라미터값 Map형태로 구하기
	  4) getParameterNames() : Enumeration : 파라미터이름 열거형태로 구하기
 --%>
 	<h2> 파라미터값 표시하기 </h2>
 	<h2>
 		<ul>
 			<li> 이름 : <%= name%></li>
 			<li> 나이 : <%= age%></li>
 			<li> 주소 : <%= addr%></li>
 			<li> 성별 : <%= gender%></li>
 			<li> 취 미 : <%
 			              for(String k:hobby){
 			            	  out.println(k+"&nbsp;&nbsp;");
 			              }
 			           %>
 			</li>
 			<li> 거주지 : <%=residence %></li>
 			<li> 반려동물 : <%
 			              for(String k:animal){
 			            	  out.println(k+"&nbsp;&nbsp;");
 			              }
 			           %>
 			</li>   
 			<li> cPage : <%=cPage %> </li>       
 		</ul>
 		</h2>
 		<hr>
 		
 		<h2> getParameterNames(): 파라미터 이름들 구하기  </h2>
 		<h3>
        <%
             Enumeration param_enum = request.getParameterNames();
             while(param_enum.hasMoreElements()){
            	 String p_name = (String)param_enum.nextElement();
            	 out.println("<li>"+ p_name+"</li>");
             }
         %> 		
 	   </h3>
 	   <hr>

  	    <h2> getParameterMap(): 파라미터  구하기  </h2>
		<h3>
        <%
           Map map = request.getParameterMap();
           String[] map_name = (String[])map.get("name");
           String[] map_age = (String[])map.get("age");
           String[] map_hobby = (String[])map.get("hobby");
           out.println(map_name[0]+"&nbsp;&nbsp;<br>");
           out.println(map_age[0]+"&nbsp;&nbsp;<br>");
           for(String k : map_hobby){
        	   out.println(k+"&nbsp;&nbsp;");
           }
         %> 		
 	   </h3>
</body>
</html>