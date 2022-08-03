<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="form1" runat="server">
    <div class="container">
        <div class="main">
            <h2>
                Javascript Login Form Validation</h2>
            <form id="form_id" method="post" name="myform">
            <label>
                User Name :</label>
            <input type="text" name="username" id="username" />
            <br><br>
            <label>
                Password :</label>
            <input type="password" name="password" id="password" />
            <input type="button" value="Login" id="submit" onclick="validate();" />
            </form>
        </div>
    </div>
    </form>
</body>
</html>