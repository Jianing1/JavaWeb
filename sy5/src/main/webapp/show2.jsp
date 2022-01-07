<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
    %>
<jsp:useBean id="book" class="bean.BookBean"></jsp:useBean>
<jsp:setProperty property="*" name="book" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>图书名称</td>
			<td>图书价格</td>
			<td>图书作者</td>
			<td>出版社</td>
			<td>存放数量</td>
		</tr>
		<tr>
			<td><jsp:getProperty property="bookName" name="book" /></td>
			<td><jsp:getProperty property="bookPrice" name="book" /></td>
			<td><jsp:getProperty property="author" name="book" /></td>
			<td><jsp:getProperty property="bookConcern" name="book" /></td>
			<td><jsp:getProperty property="counts" name="book" /></td>
		</tr>
	</table>
</body>
</html>