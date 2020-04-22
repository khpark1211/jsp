<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적 검색 결과 </title>
</head>
<body>
<h1> 
	<c:choose>
		<c:when test="${idx==1 }">사번 검색 결과</c:when>
		<c:when test="${idx==2 }">이름 검색 결과</c:when>
		<c:when test="${idx==3 }">직종 검색 결과</c:when>
		<c:when test="${idx==4 }">부서 검색 결과</c:when>
	</c:choose>
</h1>
	<h2>
		<c:choose>
			<c:when test="${empty dy_list}">
				<li> 기본 자료가 존재하지 않습니다. </li>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${dy_list}" varStatus="vs">
					<li>
						${vs.count}  &nbsp;&nbsp;
						${k.employee_id} &nbsp;&nbsp;
						${k.first_name} &nbsp;&nbsp;
						${k.hire_date} &nbsp;&nbsp;
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