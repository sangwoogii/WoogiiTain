<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css" />
</head>
<body>
	<header>
		<div id="header_box">
			<a href=""><img alt="" src="../HatchfulExport-All/logo.png" class="img"></a>
			
			<!-- <img alt="계정 이미지" src="../img/user.png" class="user"> -->
			<p id="sign">계정</p>
			
			<!-- <img alt="장바구니 이미지" src="../img/basket.png" class="basket"> -->
			<p id="market"><a href="">장바구니</a></p>
		</div>
		
		<div id="item">
			<a href=""><button class="log">로그인</button></a>
			<a href=""><button class="join">회원가입</button></a>
			<button class="cancel" value="취소">취소</button>
		</div>
		
		
			
	</header>
	
	<script type="text/javascript">
		let modal = document.querySelector("#sign");
		let check = false;
		
		modal.addEventListener("mouseover", function() {
			if (check == false) {
				document.querySelector("#item").style.display = "block";
				check = true;
				
			} else {
				modal.addEventListener("mouseout", function() {})
				document.querySelector("#item").style.display = "none";
				check = false;
			}
		});
		
		
		let delay = document.querySelector(".cancel");
		let both = document.querySelector("#item");
		
		function close_btn() {
			both.style.display = "none";
		}
		
		delay.addEventListener("click", close_btn);
		
	</script>
</body>
</html>