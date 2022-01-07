<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>购物车</title>
<script src="js/jquery-1.9.	0.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="css/reset.css" type="text/css" />
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link href="css/all.css" type="text/css" rel="stylesheet" />
<style>
body {
	background-color: grey;
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

font {
	color: #3164af;
	font-size: 18px;
	font-weight: normal;
	padding: 0 10px;
}

table {
	width: 800px;
}

table td {
	text-align: center;
}
</style>
</head>

<body>
	<div class="container">
		<c:if test="${empty cars }">
			<div class="row">
				<div class="col-md-12">
					<h1>快乐！啪！没完了</h1>
					<a href="sight.jsp">浏览景区</a>
				</div>
			</div>
		</c:if>

		<c:if test="${not empty cars }">
			<div class="banner">
				<div class="banner_ul">
					<ul>
						<li class="banner_ul1"><a href="main.jsp">首页</a></li>
						<li class="banner_ul2"><a href="sight.jsp">景区</a></li>
						<li class="banner_ul2"><a href="hotel?method=list">酒店</a></li>
						<li class="banner_ul5"><a href="login1.jsp">登录</a></li>
						<li class="banner_ul2"><a href="zhuxiao">注销</a></li>
					</ul>
				</div>
				<div class="banner_left">

					<a href="main.jsp" class="banner_1">旅游网 <span>User
							management</span></a>
				</div>
			</div>
			<div class="row">
				<div style="margin: 0 auto; margin-top: 10px; width: 950px;">
					<strong style="font-size: 16px; margin: 5px 0;">订单详情</strong>
					<table class="table table-bordered">
						<tbody>
							<tr class="warning">
								<th>图片</th>
								<th>类别</th>
								<th>商品</th>
								<th>数量</th>
								<th>小计</th>
								<th>操作</th>
							</tr>
							<c:forEach items="${cars}" var="item">
								<tr class="active">
									<td width="60" width="40%"><input type="hidden" name="id"
										value="${item.id}"> <img src="${item.imgUrl}"
										width="70" height="60"></td>
									<td width="20%" style="line-height: 59px;">${item.type}</td>
									<td width="30%" style="line-height: 59px;">${item.content }</td>
									<td width="10%" style="line-height: 59px;">${item.count}</td>
									<td width="15%" style="line-height: 59px;"><span
										class="subtotal">￥${item.total}</span></td>
									<td><a href="car?method=delete&id=${item.id }"
										class="delete" style="line-height: 59px;">删除</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<div style="margin-right: 130px;">
				<div style="text-align: right;">
					<em style="color: #ff6600;"> 登录后确认是否享有优惠&nbsp;&nbsp; </em> 赠送积分: <em
						style="color: #ff6600;">${tot}</em>&nbsp; 商品金额: <strong
						style="color: #ff6600;">￥${tot}元</strong>
				</div>
				<div
					style="text-align: right; margin-top: 10px; margin-bottom: 10px;">
					<a
						href="${pageContext.request.contextPath}/CartServlet?method=clearCart"
						id="clear" class="clear">清空购物车</a> <a href="order.jsp"> <%--提交表单 --%>
						<input type="submit" width="100" value="提交订单" name="submit"
						border="0"
						style="background: url('${pageContext.request.contextPath}/img/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
								height:35px;width:100px;color:white;">
					</a>
				</div>
			</div>

		</c:if>


	</div>


</body>
<script>
$(function(){
	//页面加载完毕之后获取到class的值为delete元素,为其绑定点击事件
	$(".delete").click(function(){
		if(confirm("确认删除?")){
			//获取到被删除商品pid
			var pid=this.id;
			window.location.href="/store_v5/CartServlet?method=removeCartItem&id="+pid;
		}
	});
});
</script>
</html>