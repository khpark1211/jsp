<%@page import="java.util.Date"%>
<%@page import="com.sun.openpisces.Dasher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : JSP 표준  태그 라이브러리 (fmt)</title>
</head>
<body>
	<%-- 숫자와 날짜 포맷팅 --%>
	<h2>
		<h3> 천단위 숫자 처리 와 숫자만 받기  </h3>
		<li> <fmt:formatNumber value="1234.456" /> </li> 
		<li> <%-- 오류 : <fmt:formatNumber value="1234.556 aaa" /> --%> </li>
		<hr>
	     
	    <h3> 숫자처리 </h3>
		<li> <fmt:parseNumber value="1234.456" /> </li> 
		<li> <fmt:parseNumber value="1234.556 aaa" /> </li>
		<hr>
	
		<h3> 반올림 가능  </h3>
		<li> <fmt:formatNumber value="1234.456" pattern="#,###" /> </li> 
		<li> <fmt:formatNumber value="1234.556" pattern="#,###" /> </li> 
		
		<h3> 소숫점 첫째 자리 까지 구하기   </h3>
		<li> <fmt:formatNumber value="1234.446" pattern="#,###.#" /> </li> 
		<li> <fmt:formatNumber value="1234.556" pattern="#,###.0" /> </li> 
		<li> <fmt:formatNumber value="1234"     pattern="#,###.#" /> </li>
		<%-- 빈자리 0으로 채우기   --%> 
		<li> <fmt:formatNumber value="1234"     pattern="#,###.0"  /> </li> 
		
		<h3> 정수자리 까지 구하기   </h3>
		<!-- 일단위, 십단위 절삭하는 방법   -->
		<li> <fmt:formatNumber value="1234.446" pattern="#,#00" /> </li> 
		
		<h3> 현재 시스템에 맞는 화폐   </h3>
		<li> <fmt:formatNumber value="1234.446" type="currency" /> </li> 
		<li> <fmt:formatNumber value="1234"     type="currency" /> </li>
		<fmt:setLocale value="en_us"/>
		<li> <fmt:formatNumber value="1234"     type="currency" /> </li>
		<li> <fmt:formatNumber value="1234.446"     type="currency" /> </li>
		
		<h3> 퍼센트  </h3>
		<li> <fmt:formatNumber value="12"    type="percent" /> </li> 
		<li> <fmt:formatNumber value="0.12"  type="percent" /> </li>
		<hr >
		
		<% Date now = new Date();
		   pageContext.setAttribute("now", now); %>
        
        <h3> 날짜 스타일</h3>		   
		<li> <fmt:formatDate value="${now}"/> </li>
		<li> <fmt:formatDate value="${now}" dateStyle="short"/> </li>
		<li> <fmt:formatDate value="${now}" dateStyle="medium"/> </li>
		<li> <fmt:formatDate value="${now}" dateStyle="long"/> </li>
		<li> <fmt:formatDate value="${now}" dateStyle="full"/> </li>
		<hr>
		<h3> 시간 스타일</h3>	
		<li> <fmt:formatDate value="${now}" type="time"/> </li>
		<li> <fmt:formatDate value="${now}" type="time" timeStyle="short"/> </li>
		<li> <fmt:formatDate value="${now}" type="time" timeStyle="medium"/> </li>
		<li> <fmt:formatDate value="${now}" type="time" timeStyle="long"/> </li>
		<li> <fmt:formatDate value="${now}" type="time" timeStyle="full"/> </li>
		
		<h3> 패턴 스타일</h3>
		<li> <fmt:formatDate value="${now}" pattern="yyyy.MM.dd"/> </li>
		<li> <fmt:formatDate value="${now}" pattern="yy.MM.dd"/> </li>
		<li> <fmt:formatDate value="${now}" pattern="HH:mm:ss"/> </li>
		<li> <fmt:formatDate value="${now}" pattern="hh:mm:ss"/> </li>
		<li> <fmt:formatDate value="${now}" pattern="yyyy.MM.dd HH:mm:ss"/> </li>
	</h2>
	
</body>
</html>






