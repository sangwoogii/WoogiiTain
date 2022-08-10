<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="../css/login.css" />
</head>
<body>

	<%-- <jsp:include page="../basic/header.jsp" /> --%>

    <header>
        <h2>Login</h2>
    </header>
    
    <%	
		//0. 로그인 상태를 확인
		if (session.getAttribute("UserId") == null) {
			//로그아웃 상태
	%>

    <form action="loginProcess.jsp" method="post" name="frm">
        <div class="input-box">
            <input id="username" type="text" name="username" placeholder="아이디">
            <label for="username">아이디</label>
        </div>

        <div class="input-box">
            <input id="password" type="password" name="password" placeholder="비밀번호">
            <label for="password">비밀번호</label>
        </div>
        
        <div id="forgot"><a href="../program/search_info.jsp">아이디 / 비밀번호 찾기</a></div>
        
        <!-- <input type="submit" value="로그인"> -->
        <div class="login"><button value="로그인" class="log_btn" onclick="validate();">로그인</button></div>
    </form>
    
    <%
		} else {
			//19. 로그인 상태
	%>
		<%=session.getAttribute("UserName") %> 님, 반갑습니다!<br>
		<a href="Logout.jsp">[로그아웃]</a>
		
		
	<%		
			
		}
	%>
    
</body>

<script type="text/javascript">
function validate() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    if (username == null || username == "") {
        alert("아이디를 입력하세요.");
        return false;
    }
    if (password == null || password == "") {
        alert("비밀번호를 입력하세요.");
        return false;
    }
    
    alert('성공적으로 로그인되었습니다 !');
    
    location.href="../basic/index.jsp";
    
} 
</script>
</html>