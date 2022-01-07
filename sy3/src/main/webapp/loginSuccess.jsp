<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String usern = (String) session.getAttribute("username");
	%>
	欢迎你！
	<font color="red"><%=usern%></font>
	<br> 现在是北京时间
	<%
	java.util.Date date = new java.util.Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		out.println(df.format(date));
		response.setHeader("refresh", "1");
	%>
</body>
</html>