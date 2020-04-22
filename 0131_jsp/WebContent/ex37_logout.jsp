<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

  // 로그 아웃
  //  session.removeAttribute("list"); // list 속성만 삭제
    session.invalidate(); // 세션 전체 삭제
    response.sendRedirect("ex36_basket_show.jsp");
%>    
