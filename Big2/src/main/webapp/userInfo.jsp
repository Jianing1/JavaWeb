<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人信息</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script src="js/jquery-1.9.0.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

<style type="text/css">
.main {
	width: 500px;
	background-color: white;
	box-shadow: 0 0 10px #CCCCCC;
	padding: 20px;
	margin: 100px auto;
}

.title {
	font-size: 20px;
	border-bottom: 1px solid #66AFE9;
	height: 40px;
	line-height: 40px;
	margin-bottom: 10px;
}
</style>
</head>
<body>

	<div class="main">
		<div class="" title>个人信息</div>
		<div class="cont">

			<form action="userInfo" method="post">
				<input type="hidden" name="id" value="${user.id}" />
				<div class="form-group">
					<label for="username">账号</label> <input type="email"
						class="form-control" name="username" id="username"
						placeholder="账号" value="${user.username}" readonly>
				</div>
				<div class="form-group">
					<label for="password">密码</label> <input type="password"
						class="form-control" name="password" id="password"
						placeholder="密码" value="${user.password}">
				</div>
				<div class="form-group">
					<label for="qq">QQ号</label> <input type="text" class="form-control"
						name="qq" id="qq" placeholder="QQ号" value="${user.qq }">
				</div>
				<div class="form-group">
					<label for="email">邮箱</label> <input type="email"
						class="form-control" name="email" id="email" placeholder="邮箱"
						value="${user.email }">
				</div>
				<button type="submit" class="btn btn-default">修改</button>
			</form>
		</div>
	</div>

</body>
</html>