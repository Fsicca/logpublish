<%@page import="com.bean.LogInfo"%>
<%@page import="com.dao.impl.LogDaoImpl"%>
<%@page import="com.dao.LogDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发表日志</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />

</head>
<body>
<div class="menu">
         <ul>
         <li><a href="index.jsp">首页</a></li>
            <li><a href="usermessage.html">用户管理</a></li>
            <li><a href="register.jsp">个人资料</a></li>
            <li><a href="addLog.jsp">发表日志</a></li>
            <li><a href="exit.jsp">退出系统</a></li>
         </ul>
     </div>

<div class="contents">
<div class="bgtop"></div>
<h3 class="title">发表日志</h3>
<form action="saveLog.jsp" method="post">
	<table align="center" width="50%" cellpadding="5" cellspacing="1" style="background:none;">
	
	   <tr>
	      <td> 日志标题:</td><td><input name="title" type="text" size="40"/></td></tr>
	      <tr><td valign="top">日志内容:</td>
	      <td><textarea name="content" cols="40" rows="20"></textarea></td>
	   </tr>
	   <tr align="center">
	      <td colspan="2"><input type="submit" value="发表日志" /><input type="button" value="返回" /></td>
	   </tr>
	</table>
</form>

  <div class="bgbottom"></div>
</div>
</body>
</html>
