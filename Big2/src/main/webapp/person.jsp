<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/all.css" type="text/css" rel="stylesheet" />
<meta charset="UTF-8">
<title>个人中心</title>
<style type="text/css">
body {
	background-color: #ccffcc;
}

.body1 {
	text-align: center;
	font-size: 30px;
	font-family: 楷体;
	color: yellow;
}

.banner_ul span {
	text-decoration: none;
	font-size: 18px;
	font-family: "方正粗体";
	color: #FFF;
	width: 100px;
	height: 100px;
	display: block;
}

a {
	text-decoration: none;
	font-family: 隶书;
}
</style>
</head>
<body>
	<a href="#top1" class="top2"><img src="images/top2.png" /></a>
	<a id="top1"></a>
	<div class="all">
		<div class="banner">
			<div class="banner_ul">
				<ul>
					<li class="banner_ul1"><a href="main.jsp">首页</a></li>
					<li class="banner_ul2"><a href="sight.jsp">景区</a></li>
					<li class="banner_ul2"><a href="hotel?method=list">酒店</a></li>
					<li class="banner_ul5"><a href="login1.jsp">登录</a></li>
					<li class="banner_ul2"><a href="zhuxiao">注销</a></li>
				</ul>
			</div>
			<div class="banner_left">

				<a href="main.jsp" class="banner_1">旅游网 <span>User
						management</span></a>
			</div>
		</div>

		<div class="body1">

			<a href="userInfo.jsp">修改个人信息</a>
		</div>
	</div>
</body>
</html>