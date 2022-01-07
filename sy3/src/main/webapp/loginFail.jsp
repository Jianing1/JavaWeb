<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录失败</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String user = request.getParameter("user");
	String pass = request.getParameter("password");
	Connection connection = null;
	ResultSet rs = null;
	Statement statement = null;
	Statement statement1 = null;
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/login?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";
	connection = DriverManager.getConnection(url);
	statement = connection.createStatement();
	statement1 = connection.createStatement();
	ResultSet sq1 = statement.executeQuery("SELECT user from user WHERE user = '" + user + "'");
	ResultSet sq2 = statement1.executeQuery("SELECT password from user WHERE password = '" + pass + "'");
	if (sq1.next()) {
		out.println("密码错误，请重新登陆");
	%>
	<br>
	<a href="login.jsp">返回登录页面</a>
	<%
	} else {
	out.println("该用户不存在，请注册！");
	%>
	<br>
	<a href="login.jsp">返回登录页面</a>
	<br>
	<a href="zhuce.jsp">现在就去注册</a>
	<%
	}
	%>
</body>
</html>