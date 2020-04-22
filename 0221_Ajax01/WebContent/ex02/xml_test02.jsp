<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>xml 파일 자바스크립트로 읽기</title>
</head>
<body>
	<script type="text/javascript">
		var request = new XMLHttpRequest();
		request.open("GET","data02.xml",false);
		
		request.onreadystatechange = function() {
		   if(request.readyState==4 && request.status == 200){
			   // xml 파일을 DOM(html) 방식으로 읽어오자
			   var xml = request.responseXML;
			   var product = xml.getElementsByTagName("product");
			   
			   for (var i = 0; i < product.length; i++) {
				  // 속성 추출하는 방법 : .attributes[index].value
				  var name = product[i].attributes[0].value ;
				  var price = product[i].attributes[1].value ;
				  document.body.innerHTML 
				  	+= "<h2><li>"+name+", "+price+"</li></h2>";
			   }
		   }	
		};
		request.send();
	</script>
</body>
</html>