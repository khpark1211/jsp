<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean : 자바 빈</title>
<script type="text/javascript">
	function send_go(f) {
		f.action="ex23_result.jsp";
		f.submit();
	}
</script>
</head>
<body>
<%--
	자바 빈 : JSP에서 파라미터값을 저장할 목적으로 제공하는 저장 공간	
	빈 객체 : 자바 빈에 저장 되어 있는 객체를 뜻한다.
	1. 사용순서
	  1) VO 를 만든다. (변수들의 이름은 파라미터의 이름들과 같아야 한다.)
	  2) 빈 객체 생성 
	    <jsp:useBean id="호출이름" class="vo클래스위치" scope="생명주기" />
	    scope : page(기본)< request < session < application
	  3) <jsp:setProperty> 액션 태그를 사용하면 알아서 파라미터가 들어간다.
	  4) <jsp:getProperty> 액션 태그를 사용하며 결과를 출력한다. 잘 사용하지 않음
	     
 --%>
 
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