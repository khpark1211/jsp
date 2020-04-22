<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    /*
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String f_name = request.getParameter("f_name");
	pageContext.setAttribute("name", name);
	pageContext.setAttribute("f_name", f_name);
	
	method = "get"  name과 f_name은 나오지만 실제 파일은 업로드가 안된다
	<jsp:useBean> 사용못함
	request를 사용할 수 없다.
	
	** 해결책은 cos.jar안에 존재하는 MulitpartRequest 클래스를 사용해야 된다.
	MulitpartRequest 클래스의 주요 메소드
	- getParameter(String)        : String
	- getParameterValues(String)  : String[]
    - getOriginalFileName(String) : String => 업로드 당시의 파일이름
    - getFilesystemName(String)   : String => 저장 당시의 파일이름 
    - getContentType(String)      : String => 해당 파일의 종류
    - getFile(String)             : File  => 업로드된 파일을 파일클래스 변경
   */	
   
   // 1. 실제 파일 저장할  위치 디렉토리를 구하자 (톰켓안에 프로젝트 안에 존재)
   // System.out.println(getServletContext().getRealPath("/upload"));
   String path = getServletContext().getRealPath("/upload");
   
   // 2. MultipartRequest를 생성하자
   //   cos.jar에서 지원
   MultipartRequest mr = new MultipartRequest(
		   request,       // request 정보
		   path,          // 저장위치 정보
		   100*1024*1024, // 업로드 할 수 있는 용량지정 (kB>MB>GB>TB) : 100MB
		   "utf-8",       // 인코딩 지정  
		   new DefaultFileRenamePolicy() // 파일이름 중복 처리
		   );
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 결과보기 </h1>
	<h2>
		<li> 올린사람 : <%= mr.getParameter("name")%> </li>
		<li> 파일원본이름 : <%= mr.getOriginalFileName("f_name")%> </li>
		<li> 파일저장이름 : <%= mr.getFilesystemName("f_name")%> </li>
		<li> 파일타입 : <%= mr.getContentType("f_name")%> </li>
		<hr>
		<% File file = mr.getFile("f_name"); %> 
		<li> 파일이름 : <%= file.getName()%> </li>
		<li> 파일크기 : <%= file.length()/1024%> KB</li>
		<li> 마지막수정날짜 : <%= file.lastModified()%> </li>
		<%-- 위의 날짜는 1970.01.01 부터 지금 현재 날짜까지 숫자화 한것  --%>
		<%
			SimpleDateFormat day =
				new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss E");
		%>
		<li> 마지막수정날짜 : <%= day.format(file.lastModified())%> </li>
		<%-- 다운로드 하기위해서는 폴더 이름, 파일이름을 알아야 한다. --%>
		<li> 다운로드:  <a href="download.jsp?path=upload&f_name=<%=mr.getFilesystemName("f_name")%>"><%= mr.getFilesystemName("f_name")%></a></li>
	</h2>
</body>
</html>