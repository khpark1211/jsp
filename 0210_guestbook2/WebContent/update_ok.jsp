<%@page import="com.ict.edu.VO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = getServletContext().getRealPath("/upload");
	MultipartRequest mr = new MultipartRequest(request, path, 100 * 1024 * 1024, "utf-8",
			new DefaultFileRenamePolicy());

	VO vo = new VO();
	vo.setIdx(mr.getParameter("idx"));
	vo.setName(mr.getParameter("name"));
	vo.setSubject(mr.getParameter("subject"));
	vo.setContent(mr.getParameter("content"));
	vo.setPwd(mr.getParameter("pwd"));
	vo.setEmail(mr.getParameter("email"));

	// 파일은 업로드 할때와 안할때를 구별해야 된다.
	if (mr.getFile("f_name") != null) {
		vo.setFile_name(mr.getFilesystemName("f_name"));
	} else {
		vo.setFile_name("");
	}

	int result = DAO.getInstance().getUpdate(vo);
	pageContext.setAttribute("result", result);
%>
<c:choose>
	<c:when test="${result>0}">
		<script>
			alert("업데이트 성공");
			location.href = "onelist.jsp?idx=${vo.idx}";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("업데이트 실패");
			history.go(-1);
		</script>
	</c:otherwise>
</c:choose>