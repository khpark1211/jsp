<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSP 기본 내장 객체 : response </title>
<script type="text/javascript">
	function send_go(f) {
		f.action="ex08.jsp";
		f.submit();
	}
</script>
</head>
<body>
<%--
  JSP 기본 내장 객체  : request, response, out, 
                   page, pageContext, session, application,
                   config, exception
                 
   2. response(응답) : request(요청)기본 객체와 반대 기능을 수행
                      request가 요청 정보를 담고 있다면
                      response는 웹 브라우저에 응답정보를 담는 역할 수행한다.
      - 헤더 정보 입력                 
      - 리다이렉트 : 웹 페이지 이동
          response.sendRedirect("이동할 페이지");
       
      ** 웹 페이지 이동 ** 
      1. forward : request.getRequestDispatcher("이동페이지").forward(request,response);
                   ** request, response의 정보를  유지하면서 페이지이동, url의 변화가 없다.
                   ** 파리미터값들을 가지고 페이지 이동이 가능
      2. redirect : response.sendRedirect("이동할 페이지")
                   ** 새로운 request, response의 가지고 페이지이동, url의 변화가 있다.
                   ** 파리미터값들이 존재 하지 않음
      3. a 태그 통해서 이동 : <a href="이동할 페이지></a>
      4. 자바스크립트 이용 : location.href = "이동할 페이지" ;                                                       
 --%>
 
 	<form method="post">
 		<p> ID : <input type="text" name="id"></p>
 		<p> PW : <input type="password" name="pw"></p>
 		<p> <input type="button" value="보내기" onclick="send_go(this.form)"></p> 
 	</form>
</body>
</html>






