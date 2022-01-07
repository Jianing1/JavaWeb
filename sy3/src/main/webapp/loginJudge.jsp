<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*,java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String user = request.getParameter("user");
	String pass = request.getParameter("password");
	Connection connection = null;
	ResultSet rs = null;
	Statement statement = null;

	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/login?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";
	connection = DriverManager.getConnection(url);
	statement = connection.createStatement();
	if (statement != null) {
		ResultSet sq1 = statement
		.executeQuery("SELECT * from user WHERE user = '" + user + "'AND password = '" + pass + "'");
		if (sq1.next()) {
			session.setAttribute("username", user);
			response.sendRedirect("loginSuccess.jsp");
		} else {
			response.sendRedirect("loginFail.jsp");
		}
		sq1.close();
	}

	if (connection != null) {
		connection.close();
	}
	if (statement != null) {
		connection.close();

	}
	%>

</body>
</html>