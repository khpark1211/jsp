<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String product = request.getParameter("product");
    
    // 세션에 있는 list를 꺼내서  지금 넘어온 상품을 저장하자
    ArrayList<String> list = 
    	(ArrayList<String>)session.getAttribute("list");
    
    // 맨 처음에 해당 페이지를 넘어오면 당연히 session에 list가 없다.
    if(list == null){
    	list = new ArrayList<String>();
    	session.setAttribute("list", list);
    }
    // 리스트에 추가
    list.add(product);
%>
<script>
	alert("<%=product %>가  추가 되었습니다.");
	history.go(-1);
</script>    
