<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 검사</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
    int cnt = 0 ;
    if(cookies != null && cookies.length>0){
    	for(Cookie k : cookies){
    		if(k.getValue().equals("jsp")){
    			cnt += 1 ;
    		}
    	}
    	
    	if(cnt>=1){
    		out.println("로그인  상태");
    	}else{
    		out.println("로그인 하지 않은 상태");
    	}
    }else{%>
    	<script type="text/javascript">
    		alert("로그인을 하셔야만 사용 가능합니다.");
    		location.href="ex26_cookie.jsp";
    		// history.go(-2)
    	</script>
    <%}%>
</body>
</html>