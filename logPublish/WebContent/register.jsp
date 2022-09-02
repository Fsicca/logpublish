<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册页面</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<style type="text/css">
 .contents{background:none;}
 table {background-color:#e6f4d0}
table tr td {
	background-color:#e6f4d0;
}

</style>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/datePicker/WdatePicker.js"></script>
</head>

<body>
<div class="contents">
   <div class="login">
	   <form action="doRegister.jsp" id="form1" method="post" enctype="multipart/form-data">
	 <%--上传数据中有文件时必须用multype对数据进行编码 --%>  
		  <table align="center" cellpadding="5" width="50%">
		     <tr align="center"><td colspan="2" class="title">注册页面</td></tr>
		     <tr>
		        <td align="right">用户名:</td>
		        <td>
		        	<input type="text" name="name" id="name" onblur="testName(false)"/>
		            <span id="name_prompt" style="color: red"></span>
		        </td>
		     </tr>
		        <tr>
		        <td align="right">密码:</td>
		        <td><input type="text" name="pwd"/></td>
		     </tr>
		     <tr>
		        <td align="right">生日:</td>
		        <td><input type="text" name="bir" onclick="WdatePicker()"/></td>
		     </tr>
		     <tr>
		        <td align="right">手机:</td>
		        <td><input type="text" name="phone"/></td>
		     </tr>
		     <tr>
		        <td align="right">邮箱:</td>
		        <td><input type="text" name="email"/></td>
		     </tr>
		     <tr>
		        <td align="right">城市:</td>
		        <td><input type="text" name="address"/></td>
		     </tr>
		     <tr>
		        <td align="right">头像:</td>
		        <td><input type="file" name="imgUrl"/> </td>
		     </tr>
		         <tr>
		            <td align="right">性别:</td>
			        <td>
				        <input type="radio" name="sex" value="1" checked="checked" />男
				        <input type="radio" name="sex" value="2"/>女
			        </td>
		         </tr>
		     </tr>
		     <tr align="center">
		        <td colspan="2">
		       <input type="button" value="注册"  onclick="toSubmit()"/>
		        <input type="button" value="登录" onclick="toLogin()"/>
		        </td>
		     </tr>
		    </table>
	    </form>
    </div>
    </div>
</body>
	<script type="text/javascript">
	   function toSubmit() {
		   testName(true)
		   
	}
	   function toLogin() {
		window.location.href=("login.jsp");
	}
	   function testName(isSubmit) {
		var name=$("#name").val();
		if(name!=""){
			$.post("uNameValidate.jsp",{"name":name},function(result){
				if(result.indexOf("true")!=-1){
					$("#name_prompt").html("用户名已存在！");
				}else{
					$("#name_prompt").html("");
					$("#form1").submit();
				}
			},"text");
		}else{
			$("#name_prompt").html("用户名不能为空!");
		}
		
	}
	</script>
</html>
    