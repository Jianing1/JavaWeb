<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>旅游网-活动</title>
<link href="css/activities.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript">

var userr=session.getattribute("user")
function baoming(){
	alert(userr+"你好！报名成功！即将跳转到携程");
	setTimeout("window.open('https://www.ctrip.com/')");
}

</script>
<style type="text/css">
.lastl {
	font-size: 30px;
	color: red;
	font-family: 隶书;
	font-style: italic;
	text-align: center;
}

.bottom {
	width: 1330px;
	height: 200px;
	background-color: #46B39E;
	padding-top: 40px;
}
</style>
</head>
<body>
	<div class="all">
		<div class="banner_bottom"></div>
		<div class="activity">
			<h2>非常感谢您能参加我们的活动</h2>
			<marquee direction="left" class="zimu">非常感谢您能参加我们的活动，填写时请您认真填写，方便我们为您提供更好的服务！</marquee>
			<div class="tab">
				<form action="#" method="get" enctype="multipart/form-data"
					name="formName" id="formId">
					<fieldset>
						<legend>基本信息</legend>
						<p style="margin-left: 300px;">
							<label for="loginName">姓名:</label> <input name="loginName"
								type="text" id="loginName" placeholder="请输入您的名字" title="请输入您的名字" />
						</p>
						<P style="margin-left: 300px;">
							<label for="sex">性别：</label> <input name="sex" type="radio"
								id="sex" checked="checked" />男 <input name="sex" type="radio"
								id="sex" />女
						</P>
						<p style="margin-left: 300px;">
							<datalist id="collegeList">
							<option value="计算机学院" />
							<option value="传媒技术学院" />
							<option value="音乐学院" />
							<option value="物理与信息工程学院" />
							<option value="美术学院" />
							</datalist>
							<label for="college">学院:</label> <input name="college"
								type="text" id="college" placeholder="请输入学院" list="collegeList">
						</p>
						<p style="margin-left: 300px;">
							<label for="num">手机号：</label> <input type="text" id="name"
								maxlength="11" />
						</p>
						<p style="margin-left: 300px;">
							<label for="birthdate">出生日期:</label> <input type="date"
								name="birthdate" id="birthdate">
						</p>
						<p style="margin-left: 300px;">
							<label for="color">你喜欢的颜色:</label> <input type="color"
								name="color" id="color">
						</p>
						<p style="margin-left: 300px;">
							<label for="activity">活动：</label> <select>
								<option>目的租车</option>
								<option>机场接送</option>
								<option>景区鹰眼</option>
								<option>专业摄影</option>
							</select>
						</p>
						<p style="margin-left: 350px;">
							<input type="button" value="报名" id="apply" onclick="baoming()" />

						</p>
					</fieldset>
				</form>
				</table>
			</div>
		</div>
		<div class="bottom">
			<div class="bottom_icon">
				<a href="http://qzone.qq.com/"><img src="images/icon2.png" /></a> <a
					href="http://weibo.com/"><img src="images/icon1.png" /></a> <a
					href="http://w.qq.com/"><img src="images/icon3.png" /></a> <a
					href="https://wx.qq.com/"><img src="images/icon4.png" /></a><br />
			</div>
		</div>
		<div class="bottom1">
			<p class="lastl">
				<a href="main.jsp">你的旅行是否整装待发？为你的旅途添砖加瓦吧！</a>
			<p />
		</div>
	</div>
</body>
</html>