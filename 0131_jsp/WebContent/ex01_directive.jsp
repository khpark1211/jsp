<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html 주석과 jsp 내용  및 주석</title>
</head>
<body>
	<!-- html 주석 : 소스보기에서 내용이 보인다. -->
	<%-- jsp 주석 : 소스보기에서 내용이 보이지 않느다. --%>
	<%--
		JSP : Java Server Page 의 약자	
	         HTML안에서 자바코드를 사용하는 하고자 할때 사용
	    JSP 의 구성요소 : 디렉티브(지시어), 스크립트 요소, 기본 객체, 액션 태그, jsp태그,
	    	                      표준언어(EL), JSP표준 태그 라이브러리(JSTL), DB연결   
	    1. 지시어(디렉티브) 종류 : page, taglib, include 
	              표현방법 : <%@ 지시어 종류  %> 
	      1) page 지시어 : 보통 해당 문서의 맨 앞에 사용
	                    JSP 페이지에 대한 정보를 입력하기 위해서 사용
	                 ** 현재 JSP 페이지에 대한 정보롤 지정
	                 ** 톰켓이 page지시어를 보고, 해당 페이지를 해석할때 판단 자료로 사용    
	                 ** 보통 이클립스에서 자동으로 만들어준다.
	                 
	      2) page 지시어 속성
	         - language => 스크립트코드에 사용되는 언어
	         - contentType => 문서의 타입과  캐릭터 인코딩을 지정
	                        인코딩(부호화=암호화) => 정보의 형태나 형식을 변환하여 처리하는 것
	                        디코딩(복호화) => 변환된 정보를 원래 형태로 되돌리는 것
	         - pageEncoding : jsp 페이지 소스코드의 캐릭터 인코딩 지정
	         - session : 세션 사용여부 지정 (기본값 :true)
	             == session : 사용자 정보를 서버 측에서 저장하고 관리하는 공간을 말함
	                                      생명주기는 웹 브라우저가 종료 될때 까지이다.(기본  -- 로그인 처리)
	                                      예외 : 은행 로그인 (정해진 시간이 되면 자동으로 로그아웃)
             - buffer : 출력 버퍼 크기 지정 (기본 : 8kb)
             - autoFlush : 버퍼의 내용을 자동으로 출력 시켜줌 (기본값 :true)
             - errorPage : 오류페이지를 지정
             - isErrorPage : 해당 페이지가 오류 페이지이면 true, 아니면 false(기본) 
          
          3) tablig 지시어 : 해당 페이지 에서 사용할 태그 라이브러리 지정
                                                     차후에  JSTL 배울때 필요함
          4) include 지시어 : 특정 영역에 다른문서를 포함 시킬 때 사용 
                                                       지정한 문서의 소스를 복사하여 현재 문서에 붙여넣은 것과 같음
             ** html의 iframe과 비슷한 기능
             ** 표준액션태그 include와 비교됨                                                                                                                  
                              	                                                                                                                         
	 --%>
	
</body>
</html>








