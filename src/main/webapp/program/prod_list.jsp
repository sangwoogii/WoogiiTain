 <!DOCTYPE html>
<html>
<head>
  <title>Product List</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="../css/prod_list.css">
  <!-- <link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet"> -->
</head>
<body>
    <!-- <div class="navbar">
        <a href="#" id="logo">
            <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbelPXk%2Fbtq3htE0CuW%2F20UUE0cydRQEDvD6wlEL1K%2Fimg.png" height="60">
        </a>

        <ul id="menu">
            <li><a href="#"><b>Contact</b></a></li>
            <li><a href="#"><b>Shop</b></a></li>
            <li><a href="#"><b>Cart</b></a></li>
            <li><a href="#"><b>Login</b></a></li>
        </ul>
    </div> -->
    
    <jsp:include page="../basic/header.jsp"></jsp:include>

    <div class="hero-header">
    	<img alt="#" src="../img/photo1.webp">
    </div>

    <div class="products">
        <h3>Our Healthy Products</h3>
        
        <div class="process_word">
	        <p class="process_protain">Protain</p>
	        <p class="process_bar">Protain Bar</p>
			<p class="process_vita">Vitamin</p>
			<p class="process_amino">Amino Acid</p>
			<p class="process_diet">Diet</p>
		</div>
		
		

        <div class="product-list">
            <a href="./basket.jsp" class="product">
                <img src="../img/proteico_1.webp" width="225">
                <div class="product-name">
                    Impact Weight Protain
                </div>
                <div class="product-price">
                    20,900
                </div>
            </a>

            
            <a href="./basket.jsp" class="product">
                <img src="../img/proteico_2.webp" width="225" height="225px">
                <div class="product-name">
                    Clear Weight Isolate
                </div>
                <div class="product-price">
                    39,900
                </div>
            </a>

            
            <a href="./basket.jsp" class="product">
                <img src="../img/proteico_3.webp" width="225" height="225px">
                <div class="product-name">
                    Soy Protain Isolate
                </div>
                <div class="product-price">
                    29,900
                </div>
            </a>

            
            <a href="./basket.jsp" class="product">
                <img src="../img/bar_1.webp" width="225" height="225px">
                <div class="product-name">
                    Protain Brownie
                </div>
                <div class="product-price">
                    32,900
                </div>
            </a>

            
            <a href="./basket.jsp" class="product">
                <img src="../img/bar_2.webp" width="225" height="225px">
                <div class="product-name">
                    Natural walnut
                </div>
                <div class="product-price">
                    22,900
                </div>
            </a>

            
            <a href="./basket.jsp" class="product">
                <img src="../img/bar_3.webp" width="225" height="225px">
                <div class="product-name">
                    Double Dow Brownie
                </div>
                <div class="product-price">
                    58,900
                </div>
            </a>

            <a href="./basket.jsp" class="product">
                <img src="../img/vita_1.webp" width="225" height="225px">
                <div class="product-name">
                    Multi VitaminJelly
                </div>
                <div class="product-price">
                    13,900
                </div>
            </a>
            
            <a href="./basket.jsp" class="product">
                <img src="../img/vita_2.webp" width="225" height="225px">
                <div class="product-name">
                    Alphaman MultiVitamin
                </div>
                <div class="product-price">
                    24,900
                </div>
            </a>
            
            <a href="./basket.jsp" class="product">
                <img src="../img/vita_3.webp" width="225" height="225px">
                <div class="product-name">
                    Essential OMEGA-3
                </div>
                <div class="product-price">
                    30,900
                </div>          
            </a>
            <div class="clearfix"></div>
            
            <a href="./basket.jsp" class="product">
                <img src="../img/aminosan_1.webp" width="225" height="225px">
                <div class="product-name">
                    Essential BCAA 2:1:1
                </div>
                <div class="product-price">
                    20,700
                </div>          
            </a>
            <div class="clearfix"></div>
            
            <a href="./basket.jsp" class="product">
                <img src="../img/aminosan_2.webp" width="225" height="225px">
                <div class="product-name">
                    L-Glutamine Amino
                </div>
                <div class="product-price">
                    19,900
                </div>          
            </a>
            <div class="clearfix"></div>
            
            <a href="./basket.jsp" class="product">
                <img src="../img/aminosan_3.webp" width="225" height="225px">
                <div class="product-name">
                    Impact EAA
                </div>
                <div class="product-price">
                    35,900
                </div>          
            </a>
            <div class="clearfix"></div>
            
            <a href="./basket.jsp" class="product">
                <img src="../img/diet_1.webp" width="225" height="225px">
                <div class="product-name">
                    Lipid Binder
                </div>
                <div class="product-price">
                    24,900
                </div>          
            </a>
            <div class="clearfix"></div>
            
            <a href="./basket.jsp" class="product">
                <img src="../img/diet_2.webp" width="225" height="225px">
                <div class="product-name">
                    Carb Metaboliser
                </div>
                <div class="product-price">
                    32,700
                </div>          
            </a>
            <div class="clearfix"></div>
            
            <a href="./basket.jsp" class="product">
                <img src="../img/diet_3.webp" width="225" height="225px">
                <div class="product-name">
                    Impact Diet Weight
                </div>
                <div class="product-price">
                    20,700
                </div>          
            </a>
            <div class="clearfix"></div>
        </div>

        <!-- <div class="footer">
            <a href="http://faceboo.com">
                <img src="https://bakey-api.codeit.kr/files/629/images/facebook.png" height="20">
            </a>
            <a href="http://faceboo.com">
                <img src="https://bakey-api.codeit.kr/files/629/images/instagram.png" height="20">
            </a>
            <a href="http://faceboo.com">
                <img src="https://bakey-api.codeit.kr/files/629/images/twitter.png" height="20">
            </a>
        </div> -->
    </div>
</body>
</html>