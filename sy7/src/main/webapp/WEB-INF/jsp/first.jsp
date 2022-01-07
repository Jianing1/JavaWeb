<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	margin: 0 auto;
	width: 500px;
	background: #F8F8F8;
	text-align: center;
}

p {
	font-size: 40px;
	font-weight: bold;
}

.btn {
	width: 80px;
	height: 50px;
	border-radius: 2px;
	font-size: 22px;
	background-color: transparent;
}
</style>
</head>
<body>
	<div>
		<p>${usr},欢迎您</p>
		<form action="logout">
			<input type="submit" value="退出" class="btn" />
		</form>
	</div>
</body>
</html>