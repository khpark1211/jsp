<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체리스트보기</title>
</head>
<body>
	<h1> 전체 결과 보기 </h1>
	<h2>
		<c:choose>
			<c:when test="${empty list}">
				<li> 기본 자료가 존재하지 않습니다. </li>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${list }" varStatus="vs">
					<li>
						${vs.count}  &nbsp;&nbsp;
						${k.employee_id} &nbsp;&nbsp;
						${k.first_name} &nbsp;&nbsp;
						${k.hire_date.substring(0,10)} &nbsp;&nbsp;
						${k.job_id} &nbsp;&nbsp;
						${k.salary} &nbsp;&nbsp;
						${k.department_id}
					</li>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</h2>
</body>
</html>