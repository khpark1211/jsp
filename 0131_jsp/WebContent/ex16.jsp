<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    // 원래는 DB처리해서 로그인 성공, 실패 체크
    // id : admin, pw : admin 이면 관리자
    // id : aaaa, pw : 1111  이면  둘리 회원
    // 나머지는 실패라고 가정
    
    if(id.equals("admin")&& pw.equals("admin")){
    	// 관리자 로그인 성공 = > session에 저장
    	session.setAttribute("log_", "a_ok");
    	session.setAttribute("id", id);
    	session.setAttribute("pw", pw);
    	response.sendRedirect("ex17_1.jsp");
    }else if(id.equals("aaaa")&& pw.equals("1111")){
    	session.setAttribute("log_", "m_ok");
    	session.setAttribute("id", id);
    	session.setAttribute("pw", pw);
    	response.sendRedirect("ex17_2.jsp");
    }else {
    	session.setAttribute("log_", "err");
    	response.sendRedirect("ex17_3.jsp");
    }
%>    
