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
		request.open("GET","data01.xml",false);
		
		request.onreadystatechange = function() {
			if(request.readyState == 4 && request.status == 200){
				// xml 태그 읽는 방법
				// 1. xml 자료를 html방식(DOM방식)으로 읽어오자
				var xml = request.responseXML;
				
				// name태그와 price 태그을 읽어오자
				var names = xml.getElementsByTagName("name"); 
				var prices = xml.getElementsByTagName("price");
				
				for (var i = 0; i < names.length; i++) {
				   // 태그 중 글자만 추출 (Element중 text만 추출)
				   // text 추출 명령 : childNodes[0].nodeValue
				    var name = names[i].childNodes[0].nodeValue ;
				    var price = prices[i].childNodes[0].nodeValue ;
				    
				    document.body.innerHTML +=
				    	"<h2><li>"+name+", "+ price+"</li></h2>" ;
				}
			}
		};
		request.send();
	</script>
</body>
</html>



