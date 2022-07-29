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
			<div>
				<p class="kind_1"><a href="">단백질 보충제</a></p>
				<img alt="단백질 보충제" src="../img/tain1.webp" class="tain_kind_1">
				<p class="buy">사러가기 ↑ 클릭 </p>
			</div>
			<div>
				<p class="kind_2"><a href="">식품&간식</a></p>
				<img alt="식품&간식" src="../img/tain4.webp" class="tain_kind_2">
				<p class="buy">사러가기 ↑ 클릭 </p>
			</div>
			<div>
				<p class="kind_3"><a href="">비타민</a></p>
				<img alt="비타민" src="../img/tain3.webp" class="tain_kind_3">
				<p class="buy">사러가기 ↑ 클릭 </p>
			</div>
			<div>
				<p class="kind_4"><a href="">아미노산</a></p>
				<img alt="아미노산" src="../img/tain2.webp" class="tain_kind_4">
				<p class="buy">사러가기 ↑ 클릭 </p>
			</div>
			<div>
				<p class="kind_5"><a href="">체중관리</a></p>
				<img alt="체중관리" src="../img/tain5.webp" class="tain_kind_5">
				<p class="buy">사러가기 ↑ 클릭 </p>
			</div>
		</div>
		
		
		
		<div class="content">
			<p class="cap1">너 애인 없지 ?</p>
			<p class="cap2">이거 먹으면</p>
			<p class="cap3">애인생기는데 ㅎ</p>
		</div>
		
		
		<div class="this">
			<p>🔥 베스트 프로틴 🔥</p>
		</div>
		
		<div class="this_tain">
			<div class="best_tain_1">
				<a href=""><img alt="베스트 프로틴 1" src="../img/pic.png" class="product_1"></a>
				<div class="impact">
					<p>제품 이름 : 임팩트 웨이 프로틴</p>
					<p>가격 : \23,900 (250g)</p>
					<p>맛 : (선택가능)</p>
					<p>바로 구매 (사진 클릭)</p>
				</div>
			</div>
			<div class="best_tain_2">
				<a href=""><img alt="베스트 프로틴 2" src="../img/img2.webp" class="product_2"></a>
				<div class="brownie">
					<p>제품 이름 : 프로틴 브라우니</p>
					<p>가격 : \32,700 (15 x 75g)</p>
					<p>맛 : 초코 & 화이트 초코</p>
					<p>바로 구매 (사진 클릭)</p>
				</div>
			</div>
			<div class="best_tain_3">
				<a href=""><img alt="베스트 프로틴 3" src="../img/img3.webp" class="product_3"></a>
				<div class="alphaman">
					<p>제품 이름 : 알파맨 멀티비타민</p>
					<p>가격 : \24,900 (120 타블렛)</p>
					<p>바로 구매 (사진 클릭)</p>
				</div>
			</div>
			<div class="best_tain_4">
				<a href=""><img alt="베스트 프로틴 4" src="../img/pro_3.webp" class="product_4"></a>
				<div class="golden">
					<p>골든 6 레이어 프로틴바</p>
					<p>가격 : \35,800 (15 x 60g)</p>
					<p>맛 : 골드 (상세 맛은 상세페이지 참고)</p>
					<p>바로 구매 (사진 클릭)</p>
				</div>
			</div>
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
	
	
	/* ----- 베스트 프로틴 js ----- */
	
	/* let order_1 = document.querySelector(".product_1");
	let order_check_1 = false;
	
	order_1.addEventListener("mouseover", function() {
		if (order_check_1 == false) {
			document.querySelector(".impact").style.display = "block";
			order_check_1 = true;
			}
		});
		
	order_1.addEventListener("mouseout", function() {
		if (order_check_1 == true) {
			document.querySelector(".impact").style.display = "none";
			order_check_1 = false;
			}
		}); */
		
	</script>
</body>
</html>