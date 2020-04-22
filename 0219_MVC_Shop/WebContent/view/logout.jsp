<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  // 로그 아웃
    session.invalidate(); // 세션 전체 삭제
    response.sendRedirect("/MyController?cmd=login");
%>  