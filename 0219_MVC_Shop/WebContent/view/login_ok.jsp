<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function admin_go() {
		location.href = "/MyController?cmd=admin";
	}
	function shop_go() {
		location.href = "/MyController?cmd=shop";
	}
	function logout_go() {
		location.href = "/MyController?cmd=logout";
	}
</script>
</head>
<body>
	
	<%-- 관리자와 일반멤버를 구분하여 처리  --%>
	<c:choose>
		<c:when test="${admin=='ok'}">
			<button onclick="admin_go()">물품 등록 페이지</button>
			<button onclick="shop_go()">쇼핑몰 페이지</button>
			<button onclick="logout_go()">로그아웃</button>
		</c:when>
		<c:when test="${login=='ok'}">
			<button onclick="shop_go()">쇼핑몰 페이지</button>
			<button onclick="logout_go()">로그아웃</button>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("로그인하고 오세요");
				location.href="/MyController?cmd=login";
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>