<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  String username=request.getParameter("username");
  String password=request.getParameter("password");
  if(username==null)
  {
	  %>
	  alert("用户名不能为空，请重新输入");
	  <% 
  }
  else if(username.equals("admin")&&password.equals("123"))
  {
	  session.setAttribute("username", username);
	  response.sendRedirect("sucess.jsp");
  }
  else{
	  response.sendRedirect("Login.jsp");
  }
%>
</body>
</html>


