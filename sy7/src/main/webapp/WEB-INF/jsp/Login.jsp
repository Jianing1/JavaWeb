<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#kk
{
color:black;
position:absolute;
bottom:0px;
right:425px;
font-size:40px;}

.btn {
	width: 80px;
	height: 50px;
	border-radius: 2px;
	font-size: 22px;
	background-color: transparent;
}


input {
	outline-style: none;
	border: 1px solid #ccc;
	border-radius: 3px;
	padding: 10px 10px;
	width: 320px;
	font-size: 24px;
}

p {
	color: green;
	font-size: 40px;
	font-weight: bolder;
	text-shadow: 15px 5px 2px yellow
}
.p1{
	color:red;
}


span {
	font-family: 楷体;
	font-size: 24px
}
form{
	background:#F8F8F8;
	width:500px;
	margin:0 auto;
	border:3px solid #FB943A;
	border-radius:5px;
}

</style>
</head>
<body>
	<p class="p1" align="center">
		<%
if(request.getAttribute("msg")!=null){
	out.print(request.getAttribute("msg"));
}

%>
	</p>
	<form id="userForm" name="user" method="post" action="firstController">
		<p align="center">登录</p>
		<table align="center">

			<tr>
				<td><span id="用户名">用户</span></td>
				<td><input name="username" type="text"></input></td>
			</tr>

			<tr>
				<td><span id="密码">密码</span></td>
				<td><input name="userpwd" type="password"></input></td>
			</tr>


			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="submit" value="提交" class="btn" /> &nbsp; &nbsp; <input
					type="reset" name="reset" value="重置" class="btn" /></td>
			</tr>

		</table>
	</form>
</body>
</html>