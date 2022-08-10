<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Product View</title>
<link rel="stylesheet" href="../css/detail_view.css">

</head>
<body>

<div class="wrapper">
	<div class="wrap">
		<div class="top_gnb_area">
		
			<ul class="list">
				<c:if test = "${member == null}">	<!-- 로그인 x -->	
					<li >
						<a href="../loginFolder/login.jsp">로그인</a>
					</li>
					<li>
						<a href="../loginFolder/sign_up.jsp">회원가입</a>
					</li>
				</c:if>
				
				<c:if test="${member != null }">	<!-- 로그인 o -->		
					<c:if test="${member.adminCk == 1 }">	<!-- 관리자 계정 -->
						<!-- <li><a href="/admin/main">관리자 페이지</a></li> -->
						<p>${user.Name}님 반갑습니다 !</p>
					</c:if>							
					<li>
						<a id="gnb_logout_button">로그아웃</a>
					</li>
					<li>
						마이룸
					</li>
					<li>
						장바구니
					</li>
				</c:if>							
			</ul>			
		</div>
		
		<div class="top_area">
			<!-- 로고영역 -->
			<div class="logo_area">
				<a href="../basic/index.jsp"><img src="/resources/img/mLogo.png"></a>
			</div>
			
			<div class="search_area">
                	<div class="search_wrap">
                		<form id="searchForm" action="/search" method="get">
                			<div class="search_input">
                				<select name="type">
                					<option value="P">프로틴</option>
                					<option value="B">프로틴 바</option>
                					<option value="V">비타민</option>
                					<option value="A">아미노산</option>
                					<option value="D">다이어트</option>
                				</select>
                				<input type="text" name="keyword" value="<c:out value="${pageMaker.cri.keyword}"/>">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
			</div>
			<div class="login_area">
			
				<!-- 로그인 하지 않은 상태 -->
				<c:if test = "${member == null }">
					<div class="login_button"><a href="../loginFolder/login.jsp">로그인</a></div>
					<span><a href="../loginFolder/sign_up.jsp">회원가입</a></span>				
				</c:if>				
				
				<!-- 로그인한 상태 -->
				<c:if test="${ member != null }">
					<div class="login_success_area">
						<span>회원 : ${member.memberName}</span>
						<span>충전금액 : <fmt:formatNumber value="${member.money }" pattern="\#,###.##"/></span>
						<span>포인트 : <fmt:formatNumber value="${member.point }" pattern="#,###" /></span>
						<a href="/member/logout.do">로그아웃</a>
					</div>
				</c:if>
			</div>
			<!-- <div class="clearfix"></div>	 -->		
		</div>
		<div class="content_area">
		</div>
	</div>	<!-- class="wrap" -->
</div>	<!-- class="wrapper" -->

<div class="line">
			</div>			
			<div class="content_top">
				<div class="ct_left_area">
					<div class="image_wrap" data-bookid="${goodsInfo.imageList[0].bookId}" data-path="${goodsInfo.imageList[0].uploadPath}" data-uuid="${goodsInfo.imageList[0].uuid}" data-filename="${goodsInfo.imageList[0].fileName}">
						<img>
					</div>				
				</div>
				<div class="ct_right_area">
					<div class="title">
						<h1>
							${goodsInfo.bookName}
						</h1>
					</div>
					<div class="line"></div>
					
					<img alt="proteico_1" src="../img/proteico_1.webp">
					<div class="author">
						 <span>
						 	${goodsInfo.authorName} 지음
						 </span>
						 <span>|</span>
						 <span>
						 	${goodsInfo.publisher}
						 </span>
						 <span>|</span>
						 <span class="publeyear">
						 	${goodsInfo.publeYear}
						 </span>
					</div>
					<div class="line">
					</div>	
					<div class="price">
						<%-- <div class="sale_price">정가 : <fmt:formatNumber value="${goodsInfo.bookPrice}" pattern="#,### 원" /></div> --%>
						<div class="discount_price">
							판매가 : <span class="discount_price_number"><fmt:formatNumber value="${goodsInfo.bookPrice - (goodsInfo.bookPrice*goodsInfo.bookDiscount)}" pattern="#,### 원" /></span> 						
					</div>			
					<div class="line">
					</div>	
					<div class="button">						
						<div class="button_quantity">
							주문수량
							<input type="text" value="1">
							<span>
								<button>+</button>
								<button>-</button>
							</span>
						</div>
						<div class="button_set">
							<a class="btn_cart">장바구니 담기</a>
							<a class="btn_buy">바로구매</a>
						</div>
					</div>
				</div>
			</div>
			<div class="line">
			</div>				
			<div class="content_middle">
				<div class="book_intro">
					${goodsInfo.bookIntro}
				</div>
				<div class="book_content">
					${goodsInfo.bookContents }
				</div>
			</div>
			<div class="line">
			</div>				
			
</body>

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous">
</script>
</html>