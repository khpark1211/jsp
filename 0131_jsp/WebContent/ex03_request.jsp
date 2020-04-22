<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSP 기본 내장 객체 : request </title>
</head>
<body>
	<%--
	    JSP 기본 내장 객체  : request, response, out, 
	                    page, pageContext, session, application,
	                    config, exception
	                    
	    1. request : HttpServletRequest는 웹 프로그래밍에서 가장 많이 사용되는 클래스
	                                  클라이언트가 요청한 정보를 담고 있는 클래스
	                 ** 파라미터값을 가지고 있다.
	                 ** request의 생명주기는 response가 이루어지면 끝난다. 
	                  
	       1) request가 가지고 있는 정보들 
	         - 클라이언트의 정보 및 서버 정보를 얻을 수 있는 메소드 제공
	         - html 폼과 요청 파라미터의 정보를 제공
	         - 요청 헤드의 정보 제공
	                                                         
	                가) 클라이언트의 정보 및 서버 정보를 얻을 수 있는 메소드 제공
	           1) getRemoteAddr()         2) getContentLength()
	           3) getCharacterEncoding()  4) getContentType()
	           5) getProtocol()           6) getMethod()
	           7) getRequestURI()         8) getContentPath()
	           9) getServerName()        10) getServerPort()
	           
	     ** 나) html 폼과 요청 파라미터의 정보를 제공
	           1) getParameter(String name) : String : 파라미터값구하기
	           2) getParameterVlaues(String name) : String[] : 파라미터값을 배열로 구하기
	           3) getParameterMap() : Map : 파라미터값 Map형태로 구하기
	           4) getParameterNames() : Enumeration : 파라미터값 열거형태로 구하기
	           
	               다) 요청 헤드의 정보 제공 
	           1) getHeader(String name) : 헤더값 구하기
	           2) getHeaders(Enumeration) : 헤더 목록 구하기
	           3) getHeaderNames() : 헤더 이름구하기 
	           4) getIntHeader(String name) : 헤더값을 정수값으로 구하기
	           5) getDateHeader(String name) : 헤더값을 시간값으로 구하기
	               
        ** 라) 다른 주요 메소드	
               1) 포워딩 : request.getRequestDispatcher("이동장소").forward(request,response);
               2) session 호출 : request.getSession();
               3) 속성지정 통해서 데이터(값,객체)을 저장 : request.setAttribute("지정이름", 데이터);
               4) 속성호출 통해서 데이터를 가져올수 있다 : request.getAttribute("지정이름")
	 --%>
	 
	 <h2> request : 클라이언트 및 서버 정보 보기 </h2>
	 <h3>
	 	<ul>
	 		<li> 클라이언트 IP : 		<%=request.getRemoteAddr() %> </li>
	 		<li> 요청 정보 길이 : 		<%=request.getContentLength() %> </li>
	 		<li> 요청 정보 인코딩 : 		<%=request.getCharacterEncoding() %> </li>
	 		<li> 요청 정보 컨텐츠 타입 : 	<%=request.getContentType() %> </li>
	 		<li> 요청 정보 프로토콜 방식 : <%=request.getProtocol() %> </li>
	 		<li> 요청 정보 전송 방식 : 	<%=request.getMethod() %> </li>
	 		<li> 요청 URI : 			<%=request.getRequestURI() %> </li>
	 		<li> 컨텍스트 경로 : 		<%=request.getContextPath() %> </li>
	 		<li> 컨텍스트 정보 : 		<%=request.getServletContext() %> </li>
	 		<li> 서버 이름 : 			<%=request.getServerName() %> </li>
	 		<li> 서버 포트 : 			<%=request.getServerPort() %> </li>
	 	</ul>
	 </h3>
</body>
</html>







