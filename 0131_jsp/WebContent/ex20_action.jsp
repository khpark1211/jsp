<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 include와 지시어 include</title>
</head>
<body>
<%--
	액션 태그 : jsp 페이지간에 흐름제어, 자바 빈즈 컴포넌트 지원
	사용법 : <jsp:액션명령></액션명령>  , <jsp:액션명령  />
	   
	<jsp:forward page=""></jsp:forward>
	<jsp:include page=""></jsp:include>
	<jsp:param value="" name=""/>
	
	<jsp:useBean id=""></jsp:useBean>       : Bean(빈) 객체 생성
	<jsp:setProperty property="" name=""/>  : setter
	<jsp:getProperty property="" name=""/>  : getter
 --%>
 
  <%-- include : 현재 페이지에서 다른 페이지 내용을 보여주는 것.
              종류 : include 액션과  include 지시어 
        1.
         include 액션  : 제어권이 다른 페이지에 가서 처리하고 결과만 가져온다. 
         <jsp:include page="" /> 
           
         <jsp:include page="">
         	<jsp:param value="" name=""/>
         </jsp:include>  
        
       2. include 지시어 : 다른 페이지의 소스 전체를 가져와서 현재 페이지에서 한번에 처리     
  --%>
  <h2> include 액션 </h2>
    <jsp:include page="ex12_Attribute.jsp" /> 
   <hr>
  <h2> include 액션 </h2>
   <jsp:include page="ex13.jsp">
   		<jsp:param value="홍길동" name="id"/>
   		<jsp:param value="hong1231" name="pw"/>
   </jsp:include>
  
   <%-- 액션은 ex13.jsp에서 만든 변수를 사용할 수 없다.
      <%= v %>
   --%>
   <hr>
   
   <h2> include 지시어 : 파라미터값을 전달 할 수 없다. </h2>
   <%@ include file="ex13.jsp" %>
   <%-- 지시어는 ex13.jsp에서 만든 변수를 사용할 수 있다. --%>
   <%= v %>
   
</body>
</html>