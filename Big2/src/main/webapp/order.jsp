<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>支付页面</title>
</head>
<link href="css/all.css" type="text/css" rel="stylesheet" />
<style>
body {
	background-color: grey;
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

font {
	color: #3164af;
	font-size: 18px;
	font-weight: normal;
	padding: 0 10px;
}

table {
	width: 800px;
}

table td {
	text-align: center;
}

.detail {
	text-align: center;
	font-size: 30px;
	font-family: 黑体;
}

.pic {
	margin: 0 auto;
	position: relative;
	overflow: hidden;
}

.pic-item {
	width: 536px;
	background-size: 100%;
	height: 100%;
}

.pic-cursor {
	width: 128px;
	height: 400px;
	display: flex;
	flex-wrap: wrap;
	align-content: space-between;
	margin-left: 10px;
	overflow: hidden;
}

.pic-cursor-item {
	width: 128px;
	height: 97px;
	background-size: 100%;
	margin-bottom: 4px;
}

.swiper {
	display: flex;
	height: 400px;
	flex-shrink: 1;
}
</style>
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
				</ul>
			</div>
			<div class="banner_left">

				<a href="#" class="banner_1">旅游网 <span> meet distance！</span></a>
				<c:if test="${not empty user }">欢迎回来！${user.username }</c:if>
				<c:if test="${empty user }">欢迎光临！游客</c:if>
			</div>
		</div>
		<div class="detail">
			赠送积分: <em style="color: #ff6600;">${Car.tot }</em>&nbsp; 商品金额: <strong
				style="color: #ff6600;">￥${tot}元</strong>
		</div>
		<div>
			<img src="images/er.jpg">
			<div>
				<span>请选择支付方式</span>
			</div>
			<li class="courese_6"><td class="two"><select>
						<optgroup label="支付方式：">
							<option>微信</option>
							<option>支付宝</option>
							<option>银行卡</option>
						</optgroup>
				</select></td></li>
			<div class="swiper">
				<div class="pic">
					<c:forEach items="${imgs }" var="img">
						<div class="pic-item" style="background-image: url(${img.url});"></div>
					</c:forEach>
				</div>
				<div class="pic-cursor">
					<c:forEach items="${imgs }" var="img">
						<div class="pic-cursor-item"
							style="background-image: url(${img.url});"></div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>