<%@page import="com.bean.LogInfo"%>
<%@page import="com.dao.impl.LogDaoImpl"%>
<%@page import="com.dao.LogDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>日志发布系统</title>
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
<%
	String id=request.getParameter("id");
	LogDao logDao=new LogDaoImpl();
	LogInfo logInfo=logDao.getLogById(Integer.parseInt(id));
%>
<div class="bgtop"></div>
 <h3 class="title">日志</h3>
  <div class="ricon">
     <h3><%=logInfo.getTitle() %></h3>
     <p>
     <%=logInfo.getContent() %>
     </p>
  </div> 
  <div class="return">
     <h3 class="title">评论列表</h3>
     <img src="images/user.gif" />
     <div class="rec">
       <h3><span>王水2010-5-7</span><a href="#">回复</a><a href="#">删除</a></h3>
       <p>这篇新闻太好了，正是我所希望看到的</p>
       <h3>我的回复</h3>
       <p>这正是学校最近的一段新闻</p>
     </div>
     
  </div> 
   <div class="return">
     <h3 class="title">发表评论</h3>

     <div class="rec">
       柘城震压顶无可奈何花落去压顶无可奈何花落去夺
     </div>
    <p><input type="button"  value="发表评论"/><input type="button" value="取消" /> </p> 
  </div>  
    <div class="bgbottom"></div>
</div>
</body>
</html>
    