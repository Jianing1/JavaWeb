<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>留言板</title>
</head>
<body>
	<h1 align="center">留言板</h1>
	<div align="center">
		<%
		List<String> messageList = (List<String>) application.getAttribute("msgList");
		for (int i = 0; i < messageList.size(); i++) {
			out.print(messageList.get(i) + "<br>");
		}
		%>
	</div>
</body>
</html>
