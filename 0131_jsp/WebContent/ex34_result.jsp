<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	session.setAttribute("s_name", name);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 : 로그인 연습 및 장바꾸니(session) 예제</title>
<script type="text/javascript">
	function add_go(f) {
		f.action="ex35_basket.jsp";
		f.submit();
	}
	function view_go() {
		location.href = "ex36_basket_show.jsp";
	}
	function logout_go() {
		location.href = "ex37_logout.jsp";
	}
</script>
</head>
<body>
	<h2><%=name %> 님 로그인 성공 하셨습니다.</h2>
	<h2><%=session.getAttribute("s_name") %> 님 로그인 성공 하셨습니다.</h2>
	<hr>
	<h2> 상품 선택 </h2>
	<hr>
	<form>
		<select name="product">
			<option> :: 선택 하세요 :: </option>
			<option value="망고"> 망고 </option>
			<option value="키위"> 키위 </option>
			<option value="딸기"> 딸기 </option>
			<option value="수박"> 수박 </option>
			<option value="참외"> 참외 </option>
		</select>
		<input type="button" value="장바구니에 추가" onclick="add_go(this.form)">
	</form>
	<hr>
	<button onclick="view_go()"> 장바구니 보기 </button>
	<button onclick="logout_go()"> 로그 아웃 </button>
</body>
</html>








