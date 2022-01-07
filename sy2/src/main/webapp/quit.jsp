<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
<%
  out.print("您已经成功退出，3秒后即将跳转");
  response.setHeader("refresh","3;URL=first.jsp");
%>
	</div>
</body>
</html>