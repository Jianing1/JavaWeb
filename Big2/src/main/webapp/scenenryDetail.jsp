<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/food.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/js1.js"></script>
<style type="text/css">
body {
	/* padding: 0 80px;*/
	background-color: azure;
}

.baseInfo {
	padding: 20px;
	margin-bottom: 15px;
	display: flex;
	justify-content: flex-start;
	background-color: white;
	overflow: hidden;
}

.swiper {
	display: flex;
	height: 400px;
	flex-shrink: 1;
}

.detail {
	flex: 1;
	margin-left: 20px;
	overflow: hidden;
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

.title {
	font-size: 30px;
	font-weight: 600px;
	line-height: 40px;
}

.score {
	margin: 10px 0 20px 0;
}

.score span:nth-child(1) {
	font-size: 26px;
	color: #00a5ff;
	font-weight: 600;
}

.msg {
	margin: 12px 0;
}

.label {
	margin-right: 20px;
}

.msg span:nth-child(2) {
	font-size: 14px;
}

.main-bd {
	margin-bottom: 50px;
}

.price {
	margin: 10px 0;
	font-size: 26px;
}

.count {
	font-size: 12px;
	color: gray;
}

.count input {
	width: 40px;
	height: 25px;
	margin-left: 40px;
	text-align: center;
}

.add {
	border: none;
	background-color: #ff0006;
	color: white;
	height: 40px;
	margin-top: 10px;
	padding: 0 10px;
	font-size: 14px;
	outline: none;
	cursor: pointer;
}

.add:hover {
	background-color: #e80003;
}

.message {
	max-width: 800px;
	background-color: white;
	overflow-x: hidden;
}

.message .head {
	background-color: #f9f9f9;
	font-size: 20px;
	line-height: 40px;
	padding-left: 20px;
	height: 40px;
	color: #00a5ff;
	font-weight: 500px;
}

.msg-bd {
	width: 850px;
	max-height: 1000px;
	overflow-y: scroll;
	padding-bottom: 30px;
}

.msg-bd-item {
	margin: 5px 50px 5px 20px;
	border-bottom: 1px solid lightgray;
	padding: 10px 0;
}

.msg-bd-item .msg-info {
	color: darkgray;
	font-size: 12px;
	margin: 10px 0;
}

.msg-bd-item .msg-cont {
	font-size: 12px;
}

.msg-publish {
	padding: 20px;
}

.msg-publish textarea {
	outline: none;
	border: 1px solid lightgray;
	resize: none;
	padding: 10px 5px;
	width: 90%;
	height: 80px;
	font-size: 14px;
}

#publish {
	width: 60px;
	height: 30px;
	background-color: #00A5FF;
	color: white;
	font-size: 14px;
	border: none;
	outline: none;
	cursor: pointer;
	margin-top: 5px;
}

#publish:hover {
	background-color: #0098ea;
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

		<div class="container">
			<div class="baseInfo">
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
				<div class="detail">
					<div class="title">${scenenry.name}</div>
					<div class="score">
						<span>${scenenry.score}</span><span>/5分</span>
					</div>
					<div class="msg">
						<span class="label"><b>景点地址</b></span> <span>${scenenry.address}</span>
					</div>
					<div class="msg">
						<span class="label"><b>开放时间</b></span> <span>${scenenry.openTime}</span>
					</div>
					<div class="msg">
						<span class="label"><b>官方网址</b></span> <span><a
							href="${scenenry.website}" target="_blank"
							style="color: cornflowerblue;">${scenenry.website}</a></span>
					</div>
					<div class="msg">
						<span class="label"><b>官方电话</b></span> <span>${scenenry.tel}</span>
					</div>
					<div class="msg">
						<span class="label"><b>公告信息</b></span> <span
							style="color: orangered;">${scenenry.msg}</span>
					</div>
					<div class="price">
						<span class="label" style="color: gray;">门票</span> <span
							style="color: #ff0006;">${scenenry.curPrice}/人</span>
					</div>
					<div>
						<form action="scenenry">
							<input type="hidden" name="method" value="addCar" />
							<div class="count">
								<span class="label">张数</span> <input type="number" value="1"
									name="count" />
							</div>
							<button type="submit" class="add">
								<b>加入购物车</b>
							</button>
						</form>
					</div>

				</div>
			</div>
			<div class="main-bd">
				<div class="message">
					<div class="head">
						<div>留言</div>
					</div>
					<div class="msg-bd">
						<c:forEach items="${msgs }" var="item">
							<div class="msg-bd-item">
								<div class="msg-info">
									<span>${item.user }</span> <span>${item.date }</span>
								</div>
								<div class="msg-cont">${item.cont }</div>
							</div>
						</c:forEach>
					</div>

					<div class="msg-publish">
						<form action="scenenry" method="post">
							<input type="hidden" name="method" value="pbMsg" />
							<div>
								<textarea name="content" placeholder="说点什么吧~"></textarea>
							</div>
							<button type="submit" id="publish">发表</button>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script type="text/javascript">
		var picItems = $('.pic-item');
		var picCursorItems = $('.pic-cursor-item');

		initSelect(0)

		$('.pic-cursor-item').click(function() {
			var idx = $(this).index()
			initSelect(idx)
		})


		function initSelect(idx) {
			var curPicItm = picItems.eq(idx);
			var curPicCursorItm = picCursorItems.eq(idx);

			curPicItm.fadeIn('fast')
			curPicItm.siblings().fadeOut('fast')
			console.log(curPicCursorItm)
			curPicCursorItm.css('border', '3px solid #0098ea').css('height', '91px')
			curPicCursorItm.siblings().css('border', 'none').css('height', '97px')
		}
	</script>
</body>