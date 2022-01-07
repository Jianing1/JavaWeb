<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>留言板</title>
</head>
<body>
		<h1 align="center">留言板</h1>
		<form align="center" action="writemessage.jsp" method="post">
			用户名：<input type="text" name="username"><br> 
			留 言：<input type="text" name="content"><br> 
			<input type="submit" value="留言">
		</form>
</body>
</html>
