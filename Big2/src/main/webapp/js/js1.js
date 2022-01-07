/**
 * 
 */$(document).ready(function() {
    $("button1").click(function(){
		alert("重置成功！");
		});
});

//setTimeout
function baoming(){
	alert("报名成功！点击确定返回首页");
	setTimeout("window.open('main.jsp')");
}

//表单重置：
function formReset(){
	document.getElementById("myform").reset();
}

//鼠标事件
function mouseOver_inland(){
	document.getElementById("inland").src = "images/tao.jpg";
}
			
function mouseOut_inland(){
	document.getElementById("inland").src = "images/bao.jpg";
}

function mouseOver_foregin(){
	document.getElementById("foregin").src = "images/jing.jpg";
}
			
function mouseOut_foregin(){
	document.getElementById("foregin").src = "images/dong.jpg";
}

function mouseOver_popular(){
	document.getElementById("popular").src = "images/food_1.jpg";
}
			
function mouseOut_popular(){
	document.getElementById("popular").src = "images/henu.jpg";
}


//表单验证：
function checkFields(formobj){
	if(formobj.name.value==""){
		alert("姓名不能为空");
			formobj.name.onfocus();
		return false;
	}
	
	
	if(formobj.address.value==""){
		alert("地址不能为空");
			formobj.address.onfocus();
		return false;
	}
		alert("注册成功！");
}

//请求确认对话框
function Check(){
	if(confirm("是否提交？") == true){
	   alert("已成功提交！");
	   }else{
		   alert("已取消提交！");
	   }
}

//判断
function checkPassword()
{
    var password = document.getElementById("PASSWORD").value;    
    return true;
}
function checkPassword2()
{
     var id=document.getElementById("PASSWORD");
     var id2=document.getElementById("PASSWORD2");
     var password = id.value;    
     var password2 = id2.value;
     if(password!=password2)
     {
        document.getElementById(id.name).innerHTML="密码不一致";
        return false;
     }
     return true;    
}
