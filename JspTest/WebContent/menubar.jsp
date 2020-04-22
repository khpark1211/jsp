<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#mb-sidebar {
	width: 200px;
	padding-left: 10px;
	height: 1000px;
	float: left;
	border: 1px solid none;
	background-color: tomato;
}

#mb-content {
	width: 800px;
	min-height: 1000px;
	float: left;
	margin-left: 90px;
}

#mb-sidebar {
	list-style-type: none;
}

#accordion ul ul {
	display:none;
}

#accordion li.active ul{
	display: block;
}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
$( function() {
    $( "#accordion" ).accordion();
  } );
</script>
</head>
<body>
	<div id="mb-container">
		<div id="mb-sidebar">
			<!-- 메뉴 -->
			<div id="accordion">
				<ul>
					<li>
					<h3>Movie World</h4>
					<h3 class="topMenuLi">영화</h4>
						<ul class="subMenu">
							<li>현재 상영작</li>
							<li>상영 예정작</li>
							<li>영화 예매</li>
						</ul>
					
					<h3 class="topMenuLi">평점 & 리뷰</h4>
					
					<h3 class="topMenu">다운로드</h4>
						<ul class="subMenu">
							<li>이 달의 추천 영화</li>
							<li>인기 top 10</li>
							<li>시리즈 영화 할인</li>
							<li>장르별 영화관</li>
						</ul>
					
					<h3 class="topMenuLi">이벤트</h4>
					<h3 class="topMenuLi">온라인 고객센터</h4>
						<ul class="subMenu">
							<li>FAQ</li>
							<li>1:1 문의하기</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>