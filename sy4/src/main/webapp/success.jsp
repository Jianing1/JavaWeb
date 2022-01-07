<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>欢迎界面</title>
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