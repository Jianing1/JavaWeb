<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书信息录入</title>
<link rel="stylesheet" href="css/mystyle.css">
<script type="text/javascript">
function add(){
	document.form1.action="BookServlet?type=add";
	document.form1.submit();
}

</script>
</head>
<body>
	<h1>图书信息录入</h1>
	<div class="collect">
		<form action="" id="bookform" name="form1" method="post">
			<label>书名：</label> <input type="text" name="bookName"><br>
			<br> <label>单价：</label> <input type="text" name="bookPrice"><br>
			<br> <label>作者：</label> <input type="text" name="author"><br>
			<br> <label>出版社：</label> <input type="text" name="bookConcern"><br>
			<br> <label>数量：</label> <input type="text" name="counts"><br>
			<br> <input type="button" name="bookinfo" value="添加书籍信息"
				onclick="add()">
		</form>
	</div>

</body>
</html>