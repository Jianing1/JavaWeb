<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>旅游网-景区</title>
<link href="css/food.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/js1.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
body {
	background-color: #ccffcc;
}

.hotel-item {
	padding: 10px;
	display: flex;
	width: 100%;
	background-color: white;
	margin-bottom: 10px;
}

.left {
	display: inline-flex;
	border-right: 1px solid #dadfe6;
	padding-right: 15px;
}

.right {
	display: inline-flex;
	justify-content: space-between;
	flex-direction: column;
	width: 200px;
}

.pic {
	width: 192px;
	height: 172px;
}

.info {
	width: 475px;
	margin-left: 20px;
}

.title {
	font-size: 20px;
	font-weight: 600;
	margin-bottom: 10px;
}

.street {
	margin-bottom: 10px;
	color: #9D9D9D;
}

.score, .bottom-info {
	text-align: right;
}

.score span {
	display: inline-block;
	height: 40px;
	width: 40px;
	font-size: 16px;
	line-height: 35px;
}

.price {
	font-size: 24px;
	color: #287dfa;
	line-height: 30px;
	margin-bottom: 5px;
}

.detail {
	width: 80px;
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
					<li class="banner_ul4"><a href="hotel?method=list">酒店</a></li>
					<li class="banner_ul5"><a href="login1.jsp">登录</a></li>
				</ul>
			</div>
			<div class="banner_left">
				<a href="#" class="banner_1">旅游网 <span>To meet the
						distance</span></a>
			</div>
		</div>
		<div class="banner_bottom"></div>

		<div style="width: 900px; background-color: #E6E6E6; margin: 0 auto">
			<c:forEach items="${hotels}" var="item">
				<div class="hotel-item">
					<div class="left">
						<div class="pic" style="background-image: url(${item.imgUrl});"></div>
						<div class="info">
							<div class="title">${item.name}</div>
							<div class="street">${item.address}</div>
							<div class="msg">
								<c:forEach items="${fn:split(item.msg, ',')}" var="msg">
									<span class="label label-warning">${msg}</span>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="right">
						<div class="score">
							<span class="label label-info">${item.score}</span>
						</div>
						<div class="bottom-info">
							<div class="price">
								<span>￥ ${item.price}</span>
							</div>
							<a href="hotel?method=detail&id=${item.id}">
								<button type="button" class="btn btn-success detail">详情</button>
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>