<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹 페이지 이동 방법</title>
<script type="text/javascript">
	function send_go(f) {
		f.action="ex09.jsp";
		f.submit();
	}
	function send_go2(f) {
		location.href = "ex09.jsp";
	}
	function send_go3(f) {
		location.href = "ex09.jsp?id=<%=id%>&pw=<%=pw%>";
	}
	function send_go4(f) {
		// 자바스크립트 기능
	    history.go(-1)
	}
</script>
</head>
<body>
	<h1> 파라미터 결과 보기 (ex08.jsp)</h1>
	<h2>
		<li> id : <%=id %> </li>
		<li> pw : <%=pw %> </li>
	</h2>
<%--
	  ** 웹 페이지 이동 ** 
	  1. forward 
	  2. redirect
	  3. a 링크 
	  4. 자바스크립트 : location.href 
 --%>	
  <%-- 1. forward --%>
  <%--   <% request.getRequestDispatcher("ex09.jsp").forward(request, response); %> --%>
 
  <%-- 2. redirect --%>
  <%--  <% response.sendRedirect("ex09.jsp"); %>    --%>
  
  <%-- 3. 4. 현재화면이 보이고 이벤트 발생 시 이동  --%>
  <%-- 3. a 링크 --%>
  <%-- <h2> <a href="ex09.jsp"> a 링크를 통해 다른페이지로 이동 (파라미터값 없음)</a> </h2> --%>
  <%-- <h2> <a href="ex09.jsp?id=<%=id%>&pw=<%=pw%>"> a 링크를 통해 다른페이지로 이동 (파라미터값 있음)</a> </h2> --%>
  
  <%-- 4. 자바스크립트를 이용하는 방법 --%>
  	<form>
  	 	<input type="button" value="보내기(파라미터없음)" onclick="send_go(this.form)">
  	</form>
  	<br>
    <form>
    	<input type="button" value="보내기(파라미터있음)" onclick="send_go(this.form)">
    	<input type="hidden" name="id" value="<%=id %>">
    	<input type="hidden" name="pw" value="<%=pw %>">
    </form> 
    <br>
    <button onclick="send_go2()">보내기(파라미터없음)</button><br>
    <button onclick="send_go3()">보내기(파라미터있음)</button><br>
    <button onclick="send_go4()">뒤로가기</button><br>
</body>
</html>





