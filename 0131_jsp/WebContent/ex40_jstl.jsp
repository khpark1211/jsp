<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : JSP 표준  태그 라이브러리 (Core) </title>
</head>
<body>
<%--
      0. 라이브러리를 다운받아야 한다. (tomcat.apache.org)
	  1. JSTL taglib 지시어를 통해서 선언하고 사용한다.
	     <%@ taglib prefix="" uri="" %>
	  2. JSTL 는   EL과 함께 사용된다. 
	  	1) 코어 :   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	  	2) 국제화 : <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	  	3) xml :  <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
	  	4) DB  :  <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
	  	5) 함수 :  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
 --%>
 <%--
 		변수 생성 (set)   :  <c:set var="변수이름" value="데이터" />
 		변수 출력 (out)   :  <c:out value="출력데이터  or ${변수이름} />
 		변수 삭제(remove) :  <c:remove var="변수이름" />
  --%>
  <h2>
  	<%-- 변수 생성 --%>	
  	<c:set var="test" value="Hello JSP" />
  
    <%-- 변수 출력 --%>
    <li><c:out value="test" /> </li>
    <li><c:out value="${test}" /> </li>
    <li>${test}</li>
    <%-- 오류발생 : <li><%=test %> </li> --%>

    <%-- 변수삭제 --%>
   	<c:remove var="test"/>
   	<%-- 오류발생 : <c:remove var="${test}"/> --%>     
    <li><c:out value="${test}" /> </li>
    <li>${test}</li>
    <hr>
    
    <%-- if문 : else가 존재하지 않는다. 참일때만 실행한다. --%>
    <%-- <c:if test="조건식(EL)" var ="변수명">  실행할 내용 </c:if> --%>
    <c:if test="${5==6}">
    	<li> Hello </li>
    </c:if>
    <c:if test="${5==5}">
    	<li> 안녕하세요 </li>
    </c:if>
    <hr>
    <c:set var="sum" value="95" />
    <c:if test="${sum>=90}">
       <li> 합격 </li>
    </c:if>
     <c:if test="${sum<90}">
       <li> 불합격 </li>
    </c:if>
    <hr>
    <%-- choose문 : switch문과 비슷 (if~ else를 대신할 수 있다.)
     <c:choose>
    	<c:when test="조건식(EL)">조건이 참일때 실행</c:when> = > case문과 비슷
    	<c:when test="조건식(EL)">조건이 참일때 실행</c:when>
    	<c:when test="조건식(EL)">조건이 참일때 실행</c:when>
    	<c:otherwise> 위의 문장이 다 거짓일 때  실행문자</c:otherwise> => default문과 비슷
    </c:choose>
    --%>
    <c:choose>
    	<c:when test="${sum>=90}"><li> 합격</li></c:when>
    	<c:otherwise><li>불합격</li></c:otherwise>
    </c:choose>
    <hr>
    
    <%-- 성적처리 --%>
    <c:set var="avg" value="87.5" />
    <c:choose>
    	<c:when test="${avg>=90.0}"> <li> A학점 </li></c:when>
    	<c:when test="${avg>=80.0}"> <li> B학점 </li></c:when>
    	<c:when test="${avg>=70.0}"> <li> C학점 </li></c:when>
    	<c:otherwise> <li>F학점</li></c:otherwise>
    </c:choose>
    <hr>
    
    <%-- forEach문 : 일반 for문 
    	 <c:forEach begin="시작" end="끝" step="증감" var="변수">반복내용</c:forEach>
    --%>
    <!-- 1-10까지 출력 -->
    <c:forEach begin="1" end="10" step="1" var="k">
    	${k} &nbsp;&nbsp;
    </c:forEach>
    <hr>
    
    <!-- 1-10까지 짝수 출력 -->
    <c:forEach begin="1" end="10" step="1" var="k">
    	<c:if test="${k%2==0}"> 
    		${k} &nbsp;&nbsp;
    	</c:if>
    </c:forEach>
    <hr>
    <%-- varStatus= 카운트와 인덱스의 차이점 --%>
    <c:forEach begin="51" end="55" step="1" var="k" varStatus="vs">
       ${k}  /  ${vs.index}  / ${vs.count} &nbsp;&nbsp; 
    </c:forEach>
   <hr> 
    <%-- first와 last ; boolean --%>
   <c:forEach begin="51" end="55" step="1" var="k" varStatus="vs">
       ${k}  /  ${vs.first}  / ${vs.last}  &nbsp;&nbsp; 
    </c:forEach>
   <hr>  
   
    <%-- forEach문 : 개선된 for문  => 배열 , 리스트에 사용 
         <c:forEach var="변수" items="배열 또는 리스트 (객체)" ></c:forEach>
    --%>
     <% String[] arr = {"홍길동","임꺽정","장길산","일지매"}; %>
     <%-- 스트립트릿으로 만들어진 변수는 EL, JSTL에서 사용 안됨 --%>
     <%-- 4대 저장소에 저장해야 호출 가능 하다. --%>
     <% pageContext.setAttribute("arr", arr); %>
     <c:forEach var="k" items="${arr}" >
     	 ${k}  &nbsp;&nbsp; 
     </c:forEach>
     <hr>
     
    <%-- forTokens문 : 문자열 나누기 (String.split()와 비슷) --%>
    <% String str = "홍길동, 임꺽정, 일지매/장길산, 둘리/고길도, 마이콜"; %>
    <% pageContext.setAttribute("str", str); %>
    <c:forTokens items="${str}" delims="," var="k">
    	${k}&nbsp;&nbsp; 
    </c:forTokens>
    <hr>
    
    <c:forTokens items="${str}" delims="/" var="k">
    	${k}&nbsp;&nbsp; 
    </c:forTokens>
    <hr>
     
    <c:forTokens items="${str}" delims="/," var="k">
    	${k}&nbsp;&nbsp; 
    </c:forTokens>
    <hr>
    
    <%-- redirect : JSTL에는 forward가 없다. 
                    (jsp액션태그에는 forward 존재)
                    (jsp 액션 태그에는 redirect가 없다.) 
                  redirect안에 파라미터를넣어서 페이지이동이 가능 
    <c:redirect url="가고자하는 위치"></c:redirect>
    <c:redirect url="가고자하는 위치"><c:param name="" value=""></c:param></c:redirect>
    --%>
    <%-- 파라미터 없이 리다이렉트  --%>
    <%-- <c:redirect url="ex41_result.jsp" /> --%>
    
    <%-- 파라미터 존재 --%>
    <%--
     <c:redirect url="ex41_result.jsp">
    	<c:param name="name" value="아수라백작" />
    </c:redirect>
    --%>
 
 	 <%-- JSP 액션 태그 --%>
     <%--<jsp:forward page="ex41_result.jsp" /> --%>
     <%-- 한글 깨짐
	     <jsp:forward page="ex41_result.jsp" >
	     	<jsp:param value="아수라백작" name="name"/>
	     </jsp:forward>
      --%>
  </h2>
</body>
</html>
















