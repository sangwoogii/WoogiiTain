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
		
		<div class="total_tain">
			<img alt="단백질 보충제" src="../img/tain1.webp" class="tain_kind_1">
			<img alt="식품&간식" src="../img/tain4.webp" class="tain_kind_2">
			<img alt="비타민" src="../img/tain3.webp" class="tain_kind_3">
			<img alt="아미노산" src="../img/tain2.webp" class="tain_kind_4">
			<img alt="체중관리" src="../img/tain5.webp" class="tain_kind_5">
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
	
	
	<script type="text/javascript">
	
	let test_1 = document.querySelector(".kind_1");
	let tain_check_1 = false;
	
	test_1.addEventListener("mouseover", function() {
		if (tain_check_1 == false) {
			document.querySelector(".tain_kind_1").style.display = "block";
			tain_check_1 = true;
			}
		});
		
	test_1.addEventListener("mouseout", function() {
		if (tain_check_1 == true) {
			document.querySelector(".tain_kind_1").style.display = "none";
			tain_check_1 = false;
			}
		});
	
	let test_2 = document.querySelector(".kind_2");
	let tain_check_2 = false;
	
	test_2.addEventListener("mouseover", function() {
		if (tain_check_2 == false) {
			document.querySelector(".tain_kind_2").style.display = "block";
			tain_check_2 = true;
			}
		});
		
	test_2.addEventListener("mouseout", function() {
		if (tain_check_2 == true) {
			document.querySelector(".tain_kind_2").style.display = "none";
			tain_check_2 = false;
			}
		});
	
	let test_3 = document.querySelector(".kind_3");
	let tain_check_3 = false;
	
	test_3.addEventListener("mouseover", function() {
		if (tain_check_3 == false) {
			document.querySelector(".tain_kind_3").style.display = "block";
			tain_check_3 = true;
			}
		});
		
	test_3.addEventListener("mouseout", function() {
		if (tain_check_3 == true) {
			document.querySelector(".tain_kind_3").style.display = "none";
			tain_check_3 = false;
			}
		});
	
	let test_4 = document.querySelector(".kind_4");
	let tain_check_4 = false;
	
	test_4.addEventListener("mouseover", function() {
		if (tain_check_4 == false) {
			document.querySelector(".tain_kind_4").style.display = "block";
			tain_check_4 = true;
			}
		});
		
	test_4.addEventListener("mouseout", function() {
		if (tain_check_4 == true) {
			document.querySelector(".tain_kind_4").style.display = "none";
			tain_check_4 = false;
			}
		});
	
	let test_5 = document.querySelector(".kind_5");
	let tain_check_5 = false;
	
	test_5.addEventListener("mouseover", function() {
		if (tain_check_5 == false) {
			document.querySelector(".tain_kind_5").style.display = "block";
			tain_check_5 = true;
			}
		});
		
	test_5.addEventListener("mouseout", function() {
		if (tain_check_5 == true) {
			document.querySelector(".tain_kind_5").style.display = "none";
			tain_check_5 = false;
			}
		});
		
	</script>
</body>
</html>