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
	  
	  // request.open("GET","data.html",false);
	  request.open("GET","ajax.txt",false);
	  // request.readyState : 데이터의 배달 결과 상태 표시
	  // 0 => 객체 생성, 1 => open 안함, 2 => send 안함  3=> 데이터의 일부만 받음 
	  // 4 => 전체 데이터를 받음 
	     
	  // reqeust.status => 200(성공), 4XX(클라이언트 오류), 5XX(서버오류)
	   request.onreadystatechange = function() {
		    if(request.readyState == 4 && request.status == 200){
		    	// 4. 화면에 출력 : innerHTML
		 	      document.body.innerHTML += request.responseText;  // 텍스트만 표시
		 	   // document.body.append(request.responseText);       // 모든 문자표시
		    }
	   }
	  // 3. send() : 실행
	  request.send();
	 
	</script>
</body>
</html>