<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"> 
function countDown(secs,surl){ 
 var jumpTo = document.getElementById('jumpTo');
 jumpTo.innerHTML=secs; 
 if(--secs>0){ 
  setTimeout("countDown("+secs+",'"+surl+"')",1000); 
 }
 else
 {  
  location.href=surl; 
 } 
} 
</script>
</head>
<body>
	您输入的信息不完整，添加失败，请重新添加。
	<span id="jumpTo">5</span>秒后自动跳转到首页
	<script type="text/javascript">
countDown(5,'book.jsp');
</script>
</body>
</html>