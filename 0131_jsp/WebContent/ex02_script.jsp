<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
<%--
    2. 스크립트 요소 : 선언부, 스크립트릿, 표현식
      1) 선언부 
         - 자바의 전역변수 선언과 메소드 선언을 할때 사용
         - 표현방식 : <%! 자바코드 %>
      2) 스크립트릿
         - 순수 자바코드를 작성(실행)할때 사용
         - 표현방식 : <% 자바코드  %>    
      3) 표현식
         - 변수값을 출력할때, 메소드의 결과를 출력할때  사용
         - 나중에는 표준언어(EL)나 JSTL(표준태그라이브러리)로 변경하다.
         - 표현 방식 : <%=  %>
         
       ** 위 3요소는 겹쳐서 사용할 수 는 없다. 반드시 별도로 사용 해야 된다.          
 --%>
   <h2> 0 - 10 까지 출력하기 </h2>
   <%
       for(int i=0; i<11; i++){
    	 // 콘솔에 출력되는 것이지 브라우저에 출력되는 것이 아니다.  
    	 // System.out.println(i);
    	 
    	 // out는 jsp가 가지고 있는 브라우저에 출력할 수 있는 기본 객체이다.  
    	  out.println(i);
       }
   %> 
   <hr>
   <h2> 0 - 10 까지 출력하기, 합도 출력하기 </h2>
    <%! int sum = 0 ; %>
    <% for(int i=0; i<11; i++){ %>
         <%= i %>
    <% 
        sum = sum + i ;    
    } %>   
     <p> 0-10의 합은  <%= sum %> </p>    
   
   <hr>
   <h2> 0 - 10 까지 출력하기, 합도 출력하기 </h2>
   <%  int k = 0 ;
       for(int i=0; i<11; i++) {%>
         <%=i %>
   <%  k = k + i ; 
     } %>
      <p> 0-10의 합은  <%= k %> </p>        
  <hr>
  
  <%!
     // 더하기 메소드 : void O
      int result = 0;
      public void add(int s1, int s2){
	    result = s1 + s2 ;
      }
     // 빼기 메소드  : void X,
     public int sub(int s1, int s2){
    	  return s1 - s2 ;
      }
  %>
  <% add(7,5); %>
  <p> 7 + 5 = <%= result %>  </p>
  <p> 7 - 5 = <%= sub(7,5) %>  </p>
  <hr> 
  <h2> 오늘날짜와 운수 구하기 </h2>
  <%
  	Calendar now = Calendar.getInstance();
  	int year = now.get(now.YEAR);
  	int month = now.get(Calendar.MONTH)+1 ;
  	int day = now.get(now.DATE);
  	int su = (int)(Math.random()*101);
  	out.println("오늘의 날짜 : " + (year+". " + month+". "+ day+". ")+"<br>");
  	out.println("운수 : " + su + "% 입니다.");
  %>
    <hr>
         오늘의 날짜와 운수 : <%=year %>. <%=month%>. <%=day%>. <br>
        운수  : <%=su %> % 입니다.  
</body>
</html>







