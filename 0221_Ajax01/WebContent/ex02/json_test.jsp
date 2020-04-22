<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json 파일 자바스크립트로 읽기</title>
</head>
<body>
	<script type="text/javascript">
		var request = new XMLHttpRequest();
		
		request.open("GET","data03.js",false);
		
		request.onreadystatechange = function() {
		   if(request.readyState==4 && request.status == 200){
			  // json 읽는 방법
			  // eval(내용) => 내용을 자바스크립트 형태로 변경 시키자 
			  var json = eval("("+ request.responseText +")");
			 // [object Object],[object Object],...
				
			 var output = "";
			 for (var i = 0; i < json.length; i++) {
				for ( var k in json[i]) {
					output += json[i][k] +"&nbsp;&nbsp;";
				}
				output += "<br>" ;
			 }
			 document.body.innerHTML = output;
		   }	
		};
		request.send();
	</script>
</body>
</html>