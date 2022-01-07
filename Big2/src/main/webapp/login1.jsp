<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>旅游网-登录</title>
<link href="css/order.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="jq/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<link href="css/login2.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-color: grey;
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
					<li class="banner_ul4"><a href="login1.jsp">登录</a></li>
				</ul>
			</div>
			<div class="banner_left">

				<a href="#" class="banner_1">旅游网 <span>Tourism website</span></a>

			</div>


		</div>


		<div class="activity">
			<h2>欢迎登录景区网</h2>
			<div class="tab">
				<div class="login" style="margin-top: 50px;">

					<div class="header">
						<div class="switch" id="switch">
							<a class="switch_btn_focus" id="switch_qlogin"
								href="javascript:void(0);" tabindex="7">快速登录</a> <a
								class="switch_btn" id="switch_login" href="javascript:void(0);"
								tabindex="8">快速注册</a>
							<div class="switch_bottom" id="switch_bottom"
								style="position: absolute; width: 64px; left: 0px;"></div>
						</div>
					</div>


					<div class="web_qr_login" id="web_qr_login"
						style="display: block; height: 235px;">

						<!--登录-->
						<div class="web_login" id="web_login">
							<div class="login-box">
								<div class="login_form">
									<form action="loginservlet" name="loginform"
										accept-charset="utf-8" id="login_form" class="loginForm"
										method="post">
										<div class="uinArea" id="uinArea">
											<label class="input-tips" for="u">帐号：</label>
											<div class="inputOuter" id="uArea">
												<input type="text" id="u" name="username" class="inputstyle" />
											</div>
										</div>
										<div class="pwdArea" id="pwdArea">
											<label class="input-tips" for="p">密码：</label>
											<div class="inputOuter" id="pArea">
												<input type="password" id="p" name="p" class="inputstyle" />
											</div>
										</div>

										<div style="padding-left: 50px; margin-top: 20px;">
											<input type="submit" value="登 录" style="width: 150px;"
												class="button_blue" />
										</div>
									</form>
								</div>

							</div>

						</div>
						<!--登录end-->
					</div>

					<!--注册-->
					<div class="qlogin" id="qlogin" style="display: none;">

						<div class="web_login">
							<form name="form2" id="regUser" accept-charset="utf-8"
								action="registerservlet" method="post">
								<input type="hidden" name="to" value="reg" /> <input
									type="hidden" name="did" value="0" />
								<ul class="reg_form" id="reg-ul">
									<div id="userCue" class="cue">快速注册请注意格式</div>
									<li><label for="user" class="input-tips2">用户名：</label>
										<div class="inputOuter2">
											<input type="text" id="user" name="user" maxlength="16"
												class="inputstyle2" />
										</div></li>

									<li><label for="passwd" class="input-tips2">密码：</label>
										<div class="inputOuter2">
											<input type="password" id="passwd" name="passwd"
												maxlength="16" class="inputstyle2" />
										</div></li>
									<li><label for="passwd2" class="input-tips2">确认密码：</label>
										<div class="inputOuter2">
											<input type="password" id="passwd2" name="passwd2"
												maxlength="16" class="inputstyle2" />
										</div></li>
									<li><label for="qq" class="input-tips2">QQ：</label>
										<div class="inputOuter2">

											<input type="text" id="qq" name="qq" maxlength="10"
												class="inputstyle2" />
										</div></li>
									<li><label for="user" class="input-tips2">邮箱：</label>
										<div class="inputOuter2">
											<input type="text" id="user" name="user" maxlength="16"
												class="inputstyle2" />
										</div></li>



									<li>
										<div class="inputArea">
											<input type="button" id="reg"
												style="margin-top: 10px; margin-left: 85px;"
												class="button_blue" value="确认注册" />
										</div>

									</li>
									<div class="cl"></div>
								</ul>
							</form>


						</div>


					</div>
					<!--注册end-->
				</div>


				</table>
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
		</div>
		<div class="bottom1"></div>

	</div>
</body>
</html>