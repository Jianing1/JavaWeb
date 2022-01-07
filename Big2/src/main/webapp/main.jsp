<%@page import="org.apache.catalina.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>你好！首页</title>
<link href="css/all.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<style type="text/css">
.hr1 {
	height: 1px;
	background-color: #CCC;
	margin: 0 auto;
	margin-top: 0px;
	width: 1200px;
}

.hr2 {
	height: 1px;
	background-color: #CCC;
	margin: 0 auto;
	margin-top: 100px;
	width: 1200px;
}

body {
	background-color: #ccffcc;
}

.lastl {
	font-size: 30px;
	color: red;
	font-family: 隶书;
	font-style: italic;
	text-align: center;
}

.block {
	width: 1200px;
	height: 400px;
	border: 1px solid black;
	margin: 5px auto;
	position: relative;
	overflow: hidden;
	box-sizing: border-box;
}

.box_big {
	position: absolute;
	width: 6000px;
	height: 400px;
}

.nav {
	transition: margin-left 0.5s linear;
}

.box {
	width: 1200px;
	height: 400px;
	float: left;
}

.box img {
	width: 1200px;
	height: 100%;
}

.spot {
	position: absolute;
	width: 100%;
	text-align: right;
	bottom: 5px;
}

.spot_list {
	width: 30px;
	height: 30px;
	font-size: 20px;
	text-align: center;
	border: 1px solid gray;
	border-radius: 5px;
	line-height: 30px;
	font-weight: bolder;
	margin: 10px;
	display: inline-block;
	background: rgba(255, 255, 255, 0.3);
}

.btn {
	width: 100%;
	height: 80px;
	position: absolute;
	margin: 0 auto;
	top: 160px;
}

.left_btn, .right_btn {
	width: 30px;
	height: 80px;
	z-index: 15;
	background: rgba(255, 255, 255, 0.3);
	text-align: center;
	line-height: 80px;
	border-radius: 8px;
}

.left_btn {
	float: left;
}

.right_btn {
	float: right;
}

.banner_left {
	font-size: 23px;
	font-family: 隶书;
}
</style>
<script type="text/javascript" src="js/js1.js"></script>
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
				</ul>
			</div>
			<div class="banner_left">

				<a href="#" class="banner_1">旅游网 <span> meet distance！</span></a>
				<c:if test="${not empty user }">欢迎回来！${user.username }</c:if>
				<c:if test="${empty user }">欢迎光临！游客</c:if>
			</div>


		</div>
		<div class="banner_bottom"></div>

		<div class="block">
			<div class="box_big ">
				<div class="box">
					<img src="images/z3.jpg" alt="" />
				</div>
				<div class="box">
					<img src="images/z1.jpg" alt="" />
				</div>
				<div class="box">
					<img src="images/z2.jpg" alt="" />
				</div>
				<div class="box">
					<img src="images/z3.jpg" alt="" />
				</div>
				<div class="box">
					<img src="images/z4.jpg" alt="" />
				</div>
				<div class="box">
					<img src="images/z5.jpg" alt="" />
				</div>
			</div>
			<div class="spot">
				<div class="spot_list">1</div>
				<div class="spot_list">2</div>
				<div class="spot_list">3</div>
				<div class="spot_list">4</div>
				<div class="spot_list">5</div>
			</div>
			<div class="btn">
				<div class="left_btn">
					<span> < </span>
				</div>
				<div class="right_btn">
					<span> > </span>
				</div>
			</div>
		</div>
		<div class="body1">
			<br /> <br />
			<p>WELCOME！${user.username }</p>
			<br /> <br />
			<p>生活不止眼前的苟且，还有诗与远方！</p>
			<p>
			<p />
		</div>
		<div class="body2">
			<p>Our Services</p>
			<hr />
		</div>
		<div class="body3">
			<div class="body3_1" id="css3_radius">
				<dl>
					<dt>
						<a href="login1.jsp"><img src="images/59.png" /></a>
					</dt>
					<dd class="one">
						<h3>
							<a href="login1.jsp">个人登录</a>
						</h3>
					</dd>
				</dl>
			</div>
			<div class="body3_2" id="css3_radius">
				<dl>
					<dt>
						<a href="car"><img src="images/72.png" /></a>
					</dt>
					<dd class="one">
						<h3>
							<a href="car">购物车</a>
						</h3>
					</dd>
				</dl>
			</div>
			<div class="body3_3" id="css3_radius">
				<dl>
					<dt>
						<a href="person.jsp"><img src="images/111.png" /></a>
					</dt>
					<dd class="one">
						<h3>
							<a href="person.jsp">个人中心</a>
						</h3>
					</dd>
				</dl>
			</div>
		</div>

		<hr class="hr1" />
		<div class="body4">
			<p>Our Activities</p>
			<div class="body4_one">
				<a href="https://www.taobao.com/"><img src="images/x1.jpg"
					id="inland" class="picture1" onmouseover="mouseOver_inland()"
					onmouseout="mouseOut_inland()" /></a> <br> <br> <br>
				<div class="body4_one_bottom">
					<a href="https://www.taobao.com/">淘宝</a>
				</div>
			</div>
			<div class="body4_two">
				<a href="https://www.jd.com/"><img src="images/x2.jpg"
					id="foregin" class="picture1" onmouseover="mouseOver_foregin()"
					onmouseout="mouseOut_foregin()" /></a> <br> <br> <br>
				<div class="body4_two_bottom">
					<a href="https://www.jd.com/">京东</a>
				</div>
			</div>
			<div class="body4_three">
				<a href="activities.jsp"><img src="images/x3.jpg" id="popular"
					class="picture1" onmouseover="mouseOver_popular()"
					onmouseout="mouseOut_popular()" /></a> <br> <br> <br>
				<div class="body4_three_bottom">
					<a href="www.henu.edu.cn"></a>
				</div>
			</div>

		</div>
		<hr class="hr2" />
		<div class="body5">
			<p class="top">交通业务</p>
			<div class="body5_one">
				<dl>
					<dt>
						<a href="activities.jsp"><img src="images/car.jpg" /></a>
					</dt>
					<dd>
						<h3>目的租车</h3>
						<br /> <br />
						<p>当你在异国他乡旅行时，很难不需要以一辆车来帮助你到达想去的地方，行动起来租一辆满足你一切需求的车！</p>
						<a href="activities.jsp">详情</a>
					</dd>
				</dl>
			</div>
			<div class="body5_two">
				<dl>
					<dt>
						<a href="activities.jsp"><img src="images/jiesong.jpg" /></a>
					</dt>
					<dd>
						<h3>机场接送</h3>
						<br /> <br />
						<p>你有兴趣拥有皇帝般的接机瞬间吗？想在机场一落地就享受拥有专车接送，直达酒店的感觉吗？</p>
						<a href="activities.jsp">详情</a>
				</dl>
			</div>
			<div class="body5_three">
				<dl>
					<dt>
						<a href="activities.jsp"><img src="images/yingyan.jpg" /></a>
					</dt>
					<dd>
						<h3>景区鹰眼</h3>
						<br /> <br />
						<p>还在因为囊中羞涩而放弃景区吗？还在流着口水远远望着景区吗？不妨来这里逛一逛，每天都有热门景区免费开放</p>
						<a href="activities.jsp">详情</a>
				</dl>
			</div>
			<div class="body5_four">
				<dl>
					<dt>
						<a href="activities.jsp"><img src="images/she.jpg" /></a>
					</dt>
					<dd>
						<h3>专业摄影</h3>
						<br /> <br />
						<p>
							记录你每时每刻的美！<br /> <br /> <br />
						</p>
						<a href="activities.jsp">详情</a>
				</dl>
			</div>
		</div>
		<div class="bottom_top">
			<img src="images/jiaobiao2.png" />
		</div>
		<div class="bottom">
			<div class="bottom_icon">
				<a href="http://qzone.qq.com/"><img src="images/icon2.png" /></a> <a
					href="http://weibo.com/"><img src="images/icon1.png" /></a> <a
					href="http://w.qq.com/"><img src="images/icon3.png" /></a> <a
					href="https://wx.qq.com/"><img src="images/icon4.png" /></a>
			</div>
			<div class="endt">
				<p class="lastl">你的旅行是否整装待发？
				<p />
			</div>
			<div class="img">
				<a href="http://taobao.com/"><img src=""></a>
			</div>
		</div>
		<div class="bottom1"></div>

	</div>
	<script>
		//首先获取元素，这里获取了所有需要的元素。
		var box = document.getElementsByClassName("box_big")[0];
		var spot = document.getElementsByClassName("spot_list");
		var block = document.getElementsByClassName("block")[0];
		var left_btn = document.getElementsByClassName("left_btn")[0];
		var right_btn = document.getElementsByClassName("right_btn")[0];
		var time = null;
		spot[0].style.background = "rgba(91,91,91,0.8)";
		var count = 0;
		showtime();
		//鼠标进入计时器停止
		block.onmouseenter = function() {
			clearInterval(time);
		};
		//鼠标出来计时器打开
		block.onmouseleave = function() {
			showtime();
		};
		//点的事件
		for (var i = 0; i < spot.length; i++) {
			spot[i].index = i;
			spot[i].onmouseenter = function() {
				spot[count].style.background = "rgba(255, 255, 255, 0.3)";
				this.style.background = "rgba(91,91,91,0.8)";
				count = this.index;
				box.style.marginLeft = (count * -1200) + "px";
			}

		}
		//图片左边划
		left_btn.onclick = function() {
			mate();
		};
		//图片右边划
		right_btn.onclick = function() {
			spot[count].style.backgroundColor = "rgba(255,255,255,0.3)";
			count--;
			if (count < 0) {
				box.className = "box_big";
				count = box.children.length - 2;
				box.style.marginLeft = "-3500px";
			}
			setTimeout(function() {
				box.className = "box_big nav";
				box.style.marginLeft = (-1200 * count) + "px";
				spot[count].style.backgroundColor = "rgba(91,91,91,0.8)";
			}, 1);
		};
		//计时器
		function showtime() {
			time = setInterval(function() {
				mate();
			}, 3000);
		}
		//正常滚动
		function mate() {
			box.className = "box_big nav";
			spot[count].style.background = "rgba(255, 255, 255, 0.3)";
			count++;
			spot[count > box.children.length - 2 ? 0 : count].style.background = "rgba(91,91,91,0.8)";
			box.style.marginLeft = (count * -1200) + "px";
			setTimeout(function() {
				if (count > box.children.length - 2) {
					count = 0;
					box.className = "box_big";
					box.style.marginLeft = "0px"
				}
			}, 500)
		}
	</script>
</body>
</html>