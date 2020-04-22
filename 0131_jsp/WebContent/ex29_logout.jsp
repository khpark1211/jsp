<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그 아웃</title>
</head>
<body>
	<%
		// 모든 쿠키 정보를 가져오기 
		Cookie[] cookies = request.getCookies();
		  // 쿠키 정보가 있으면 
		if(cookies != null && cookies.length >0){
			for(Cookie k : cookies){
				if(k.getName().equals("ict")){
					// 별도의 삭제 메소드가 없고 , 기존 이름에 덮어쓴다.
					Cookie cookie = new Cookie("ict","");
					cookie.setMaxAge(0); // 유효시간을 0초로 준다.
					response.addCookie(cookie);
					response.sendRedirect("ex28.jsp");
				}
			}
		}
	
	%>
</body>
</html>