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
		
		<div class="kind">
			<p class="kind_1"><a href="">단백질 보충제</a></p>
			<p class="kind_2"><a href="">식품&간식</a></p>
			<p class="kind_3"><a href="">비타민</a></p>
			<p class="kind_4"><a href="">아미노산</a></p>
			<p class="kind_5"><a href="">체중관리</a></p>
		</div>
		
		
		<div class="content">
			<p class="cap1">너 애인 없지 ?</p>
			<p class="cap2">이거 먹으면</p>
			<p class="cap3">애인생기는데 ㅎ</p>
		</div>
		
		
		<div class="this">
			<p>이 달의 프로틴</p>
		</div>
		
		<div class="this_tain">
			<a href=""><img alt="" src="../img/pic.png"></a>
			<a href=""><img alt="" src="../img/img2.webp"></a>
			<a href=""><img alt="" src="../img/img3.webp"></a>
		</div>
		
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>