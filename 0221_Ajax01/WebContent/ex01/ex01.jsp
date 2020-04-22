<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XMLHttpRequest 객체</title>
</head>
<body>
	<script type="text/javascript">
	  <%--XMLHttpRequest 객체 : 자바스크립트에서 ajax를 실행할때 필요한 객체  --%>
	  
	  // 1.객체 생성
	  var request = new XMLHttpRequest();
	  
	  // 2. open("전송방식", "경로", "비동기여부")
	  // request.open("GET","ajax.txt",false);
	  request.open("GET","data.html",false);
	  
	  // 3. send() : 실행
	  request.send();
	  
	  // 4. 화면에 출력 : innerHTML
	   document.body.innerHTML += request.responseText; // 텍스트만 표시
	  // document.body.append(request.responseText);         // 모든 문자표시
	</script>
</body>
</html>