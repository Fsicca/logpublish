<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<style type="text/css">
 .contents{background:none;}
 table {background-color:#e6f4d0}
table tr td {
	background-color:#e6f4d0;
}
</style>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
function newImg() {
	var time=new Date().getTime();
	console.log(time);
	//console.log(time)
	document.getElementById("img").src="code/checkNum.jsp?time="+time;
}
function validate(){
	var code=$("#code").val();
	//Ajax
	//$.post("请求的地址",{"参数名":参数值},回调方法,返回值类型);
	$.post("codeValidate.jsp",{"code":code},function(result){
		//alert(result);
		if(result.indexOf("true")!=-1){
			$("#form1").submit();
		}else{
			alert("验证码错误");
			newImg();
		}
	},"text")
}
</script>
</head>

<body>
<div class="contents">
   <div class="login">
   <form id="form1" action="doLogin.jsp" method="post">
	   <table align="center" cellpadding="5" width="50%">
	    <tr align="center"><td colspan="2" class="title">登录页面</td></tr>
	     <tr>
	        <td width="30%" align="right">用户名:</td>
	        <td width="70%"><input type="text" name="name"/></td>
	     </tr>
	       <tr>
	        <td  align="right">密　码:</td>
	        <td><input type="text" name="pwd"/></td>
	     </tr>
	       <tr>
	        <td align="right">验证码:</td>
	        <td style="cursor: pointer;">
	        <input type="text" id="code" name="code"/>
		       <img id="img" src="code/checkNum.jsp" alt="" onclick="newImg()" />
		       <a onclick="newImg()">看不清换一张</a>
	        </td>
	     </tr>
	     <tr align="center">
	        <td colspan="2">
	       <input type="button" value="登录" onclick="validate()" />
	        <input type="button" value="取消" />
	        </td>
	     </tr>
	    </table>
   </form>
    
    </div>
    </div>
</body>
</html>
    