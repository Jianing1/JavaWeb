<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="com.javabean.Book"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>图书信息录入及展示</title>
<style type="text/css">
h2 {
	color: #00CCFF;
	font-size: 18px;
	text-align: center;
	text-shadow: 3px 3px 3px rgb(134, 134, 134);
}

td {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
</style>
<link rel="stylesheet" type="text/css" href="MyStyle.css" />
</head>
<body>
	<h2>图书信息</h2>
	<table style="table-layout: fixed; width: 80%; margin: auto;"
		class=curr_table>
		<tr>
			<th>图书名称</th>
			<th>图书价格</th>
			<th>图书作者</th>
			<th>出版社</th>
			<th>存放数量</th>
			<th>修改数量</th>
			<th>删除</th>
		</tr>
		<c:forEach items="${booklist}" var="book">
			<tr>
				<td>${book.bookname}</td>
				<td>${book.bookprice}</td>
				<td>${book.bookwriter}</td>
				<td>${book.bookpublic}</td>
				<td>${book.number}</td>
				<td>
					<form action="updateServlet" onsubmit="return confirm('确定修改吗?')"
						method="post">
						<input name="newnum" type="text" size=2></input> <input
							type="hidden" name="bookid" value=${ book.bookid}></input> <input
							name="submit" value="修改" type="submit" />
					</form>
				</td>
				<td>
					<form action="deleteServlet" onsubmit="return confirm('确定删除吗?')"
						method="post">
						<input type="hidden" name="bookid" value=${ book.bookid}></input>
						<input name="submit" value="删除" type="submit" />
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	<div style="table-layout: fixed; width: 80%; margin: auto;">
		<a href="addBook.jsp">添加图书信息</a>
	</div>
</body>
</html>