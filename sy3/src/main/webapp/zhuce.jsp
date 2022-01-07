<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
<style type="text/css">
body {
	background: #f5f5f5;
	padding-left: 250px;
	padding-right: 250px;
	padding-top: 50px;
	font-size: 20px;
}

#test:focus {
	border: 4px solid green;
}

#test {
	height: 30px;
	width: 250px;
	margin-top: 50px;
}

#denglu {
	background: pink;
	height: 35px;
	width: 70px;
	border-radius: 8px;
	margin-top: 30px;
}
</style>
</head>
<body>

	<form action="insertDatabase.jsp" method="post" align="center">
		输入用户名: <input type="text" name="user1" id="test"><br>
		输入密码:<input type="password" name="password1" id="test"><br>
		<input type="submit" id="denglu" value="注册">
	</form>
</body>
</html>