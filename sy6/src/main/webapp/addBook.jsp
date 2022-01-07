<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提交书籍信息</title>
</head>
<body>
	<form action="bookServlet" method="post">
		<fieldset
			style="border-width: 3px; border-color: #00CCFF; width: 25%; margin: auto;">
			<table align="center">
				<tr>
					<td style="text-align: right">图书名：<input
						style="background: #FFFFF0" name="bookname" type="text"></input></td>
				</tr>
				<tr>
					<td style="text-align: right">图书价格：<input
						style="background: #FFFFF0" name="bookprice" type="text"></input></td>
				</tr>
				<tr>
					<td style="text-align: right">图书作者：<input
						style="background: #FFFFF0" name="bookwriter" type="text"></input></td>
				</tr>
				<tr>
					<td style="text-align: right">出版社：<input
						style="background: #FFFFF0" name="bookpublic" type="text"></input></td>
				</tr>
				<tr>
					<td style="text-align: right">存放数量：<input
						style="background: #FFFFF0" name="number" type="text"></input></td>
				</tr>
				<tr>
					<td style="text-align: center"><input name="submit" value="保存"
						type="submit" /></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>