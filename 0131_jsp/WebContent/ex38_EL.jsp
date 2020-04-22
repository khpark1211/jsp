<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> EL : 표현 언어</title>
<script type="text/javascript">
	function send_go(f) {
		f.action="ex39_result.jsp";
		f.submit();
	}
</script>
</head>
<body>
<%--
	EL : JSP에서 사용 가능한 새로운 스크립트 언어
	     - JSP 표현식을 대신해서 사용된다.
	     - 보통 JSP가 가지고 있는 4대 속성을 활용
	       (생명주기(크기) : pageConext < request < session < application ) 
	       (우선순위 : pageConext > request > session > application )
         - 파라미터에 사용
 --%>
  <%-- 1. 표현식 대신 사용하는 하기  
       <%=변수 또는 계산식 또는 메소드  %>  ===> ${변수 또는 계산식 또는 메소드 }
  --%>
  <h2> 표현식 산술 연산 사용 예제</h2>
  <h3>
  	<li> 15 + 7 = <%= 15+7 %></li>
  	<li> 15 - 7 = <%= 15-7 %></li>
  	<li> 15 * 7 = <%= 15*7 %></li>
  	<li> 15 / 7 = <%= 15/7 %></li>
  </h3> 
  <hr>
  
  <h2> EL 산술 연산 사용 예제</h2>
  <h3>
  	<li> 15 + 7 = ${15+7}</li>
  	<li> 15 - 7 = ${15-7}</li>
  	<li> 15 * 7 = ${15*7}</li>
  	<li> 15 / 7 = ${15/7}</li>
  </h3> 
  <hr>
  
  <h2> 표현식 변수 사용 예제</h2>
  <%! int su1 = 125 + 25; %>
  <h3> <li> 125 + 25 = <%=su1%> </li></h3>
  <hr>
  
  <h2> EL 변수 사용 예제</h2>
  <!-- 사용 못합  -->
  <%! int su2 = 125 + 25; %>
  <h3> <li> 125 + 25 = ${su2}</li></h3>
 
  <%-- EL 사용되는 변수는 반드시 4대 속성에 저장되어 있어야 한다. --%>
  <% pageContext.setAttribute("su3", 125+25);%>
   <h3> <li> 125 + 25 = ${su3}</li></h3>
  <hr>
  
  <%-- 4대 속성이 같은 이름에 데이터를 저장하고 있으면 
  		 pageConext > request > session > application 순으로 검색한다.--%>
    <% pageContext.setAttribute("pc", "i3"); %>		 
    <% request.setAttribute("pc", "i5"); %>
    <% session.setAttribute("pc", "i7"); %>
    <% application.setAttribute("pc", "i9"); %>
    
    <h3>
    	<li> 호출방법 (우선순위가 존재): ${pc}</li>
    	<li> pageContext 호출방법 : ${pageScope.pc}</li>
    	<li> request 호출방법 : ${requestScope.pc}</li>
    	<li> session 호출방법 : ${sessionScope.pc}</li>
    	<li> application 호출방법 : ${applicationScope.pc}</li>
    </h3>
    <hr>
    
    <%-- 파라미터에 사용 되는 방법--%>
    <h2> form를 이용한 파라미터 전송하기  </h2>
	<form method="post">
		<fieldset>
			<legend> 데이터 전송 </legend>
			<p> 이름 : <input type="text" name ="name"> </p>
			<p> 나이 : <input type="number" name ="age"> </p>
			<p> 주소 : <input type="text" name ="addr"> </p>
			<p> 성별 : <input type="radio" name ="gender" value="남"> 남
			         <input type="radio" name ="gender" value="여"> 여
			</p>
			<p> 취미 : <input type="checkbox" name="hobby" value="운동"> 운동
					 <input type="checkbox" name="hobby" value="독서"> 독서
					 <input type="checkbox" name="hobby" value="영화"> 영화
					 <input type="checkbox" name="hobby" value="게임"> 게임
			</p>
			<p> 거주지 : <select name="residence">
			              <option>:: 선택하세요 ::</option>
			              <option value="서울">서울</option>
			              <option value="경기도">경기도</option>
			              <option value="제주도">제주도</option>
			              <option value="강원도">강원도</option>
				   	  </select>
			</p>
			<p> 반려동물 : <select name="animal" multiple size="4">
			              <option value="dog">강아지</option>
			              <option value="cat">고양이</option>
			              <option value="rabbit">토끼</option>
			              <option value="parrot">앵무새</option>
				   	  </select>
			</p>	
			<input type="hidden" name="cPage" value="1">
			<input type="button" value="보내기" onclick="send_go(this.form)">			
		</fieldset>
	</form>
</body>
</html>





