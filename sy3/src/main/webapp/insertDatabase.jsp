	<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>插入数据库</title>
</head>
<body>
	<%
	String username = request.getParameter("user1");
	String password = request.getParameter("password1");
	Connection connection = null;
	ResultSet rs = null;
	Statement statement = null;

	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/login?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";
	connection = DriverManager.getConnection(url);
	statement = connection.createStatement();
	String sql = "insert into user(user,password) values('" + username + "','" + password + "')";
	out.println(sql);

	statement.executeUpdate(sql);

	response.sendRedirect("loginSuccess.jsp");
	%>
</body>
</html>