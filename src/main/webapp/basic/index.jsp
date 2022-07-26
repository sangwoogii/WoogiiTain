<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/index.css" />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<div class="bg">
		  <video muted autoplay loop>
		    <source src="../img/Health.mp4" type="video/mp4">
		  </video>
<!-- 		  <div class="text">
		    <p>Lorem Ipsum Dolor</p>
		  </div> -->
		</div>
		
		<div class="content">
			<p class="cap1">지금 놓치면 100% 후회합니다 !</p>
			<p class="cap2">이거 마시고 몸짱되자 ?</p>
			<p class="cap3">당신의 몸을 힘들게 하라</p>
			
		</div>
		
		<div class="kind">
			<p class="kind_1">단백질 보충제</p>
			<p class="kind_2">식품&간식</p>
			<p class="kind_3">비타민</p>
			<p class="kind_4">아미노산</p>
			<p class="kind_5">체중관리</p>
		</div>
		
		<div class="this_tain">
			<p>이 달의 프로틴 (마이프로틴 홈페이지 참고)</p>
			<a><img alt="" src="../img/pic.png"></a>
		</div>
		
	</section>
	
	<%-- <jsp:include page="footer.jsp"></jsp:include> --%>
</body>
</html>