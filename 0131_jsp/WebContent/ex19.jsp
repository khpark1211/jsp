<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 오류 페이지 </title>
</head>
<body>
<p> 
   요청 처리 과정에서 에러가 발생 하였습니다.<br>
  빠른 시간 내에 문제를 해결 하도록 하겠습니다.  
</p>	
  에러 타입 : <%= exception.getClass().getName() %> <br>
  에러 메세지 : <%= exception.getMessage() %>
</body>
</html>