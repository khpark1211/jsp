<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트 요청 페이지</title>
<script type="text/javascript">
	// 클라이언트가 요청을 하면 무조건 컨트롤러로 가야 한다.
	// 여기서 컨트롤러는 Servlet이 담당하고 있다.
	// 여러 개의 요청에 하나의 컨트로러가 반응 할 수 도 있고,
	// 요청에 맞춰서 컨트롤러를 여러 개 만들어서 반응 할 수 도 있다.
	
	// 여기서는 요청과 컨트롤러를 1대1로 만듬
	function test1() {
		location.href = "/HiController";
	}
	function test2() {
		location.href = "/HelloController";
	}
	function test3() {
		location.href = "/ByeController";
	}
</script>
</head>
<body>
	<button onclick="test1()"> Hi </button>
	<button onclick="test2()"> Hello </button>
	<button onclick="test3()"> Bye </button>
</body>
</html>