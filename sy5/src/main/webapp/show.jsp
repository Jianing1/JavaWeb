<%@page import="java.util.ArrayList"%>
<%@page import="bean.BookBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<%
			List<BookBean> whole = new ArrayList<BookBean>();
			BookBean abook;
			String s1, s2, s3, s4, s5;
			//abook = (BookBean)session.getAttribute("book");
			whole = (List<BookBean>) session.getAttribute("allbook");
		%>
		<tr>
			<td>书名</td>
			<td>价格</td>
			<td>作者</td>
			<td>出版社</td>
			<td>数量</td>
		</tr>
		<%
			for (int i = 0; i < whole.size(); i++) {
		%>
		<tr>
			<%
				abook = whole.get(i);

					s1 = abook.getBookName();
					s2 = abook.getBookPrice() + "";
					s3 = abook.getAuthor();
					s4 = abook.getBookConcern();
					s5 = abook.getCounts() + "";
					out.print("<td>" + s1 + "</td><td>" + s2 + "</td><td>" + s3 + "</td><td>" + s4 + "</td><td>" + s5
							+ "</td>");
			%>
		</tr>
		<%
			}
		whole.clear();
		%>

	</table>
</body>
</html>