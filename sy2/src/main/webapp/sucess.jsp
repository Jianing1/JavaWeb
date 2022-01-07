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
		Object object = session.getAttribute("username");
		if (object == null) {
			response.sendRedirect("first.jsp");

		} else {
			out.println("欢迎您" + object);
		}
		%>
		<Button onclick="Quit()" />退出
		<script type="text/javascript">
			function Quit() {
				window.location.href = "quit.jsp";
				return false;
			}
		</script>
</body>
</html>