<%@page import="com.bean.LogInfo"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.dao.LogDao"%>
<%@page import="com.dao.impl.LogDaoImpl"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.bean.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>日志发布系统</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<%
UserInfo userInfo=(UserInfo)session.getAttribute("loginUser");
if(userInfo==null){
	response.sendRedirect("login.jsp");
}
%>
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
  <div class="left">
  
        <%if(userInfo!=null){ %>
             <h3>欢迎<%=userInfo.getName() %>登录</h3>
        <%} %>
        <%
             Date date=new Date();
             SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
             pageContext.setAttribute("date", sdf.format(date));
        %>     
        <span class="data">${date}</span>
        <img width="80px" height="80px" src="${loginUser.imgUrl }" /><br />
        <span>姓名:${loginUser.name }</span>
        <span>性别:${loginUser.sex==1?"男":"女" }</span>
   

  </div>
  <div class="right">


     <table align="center" width="100%" cellpadding="5" cellspacing="1">
        <tr align="center">
           <td style="background:#e6f4d0">选项</td>
           <td style="background:#e6f4d0">作者</td>
           <td style="background:#e6f4d0">日志标题</td>
           <td style="background:#e6f4d0">评论次数</td>
           <td style="background:#e6f4d0">创建时间</td>
        
           <td style="background:#e6f4d0">操作</td>
        </tr>
        <%
        LogDao logDao=new LogDaoImpl();
        List<LogInfo> logInfos=logDao.getLogListByuserId(userInfo.getId());
        for(LogInfo logInfo:logInfos){
        %> 
           <tr>
	           <td><input type="checkbox" /></td>
	           <td><%=logInfo.getUserName() %></td>
	           <td><%=logInfo.getTitle() %></td>
	           <td>5</td>
	           <td><%=logInfo.getCreateTime()==null ? "" : logInfo.getCreateTime().substring(0, 10) %></td>
	           <td> 
	           <a href="editLog.jsp?id=<%=logInfo.getId()%>">编辑</a>
	           <a href="deleteLog.jsp?id=<%=logInfo.getId()%>">删除</a>
	           <a href="datail.jsp?id=<%=logInfo.getId()%>">查看详细</a>
	           </td>
           
        </tr>	
        <%
        }
        %>

        <tr>
        <td colspan="7">
        
        <span>总共3/7页 当前第3页</span><span style="margin-left:400px;">【首页】【下一页】【上一页】【末页】</span>
        </td>
        </tr>
        <tr>
           <td colspan="7"><input type="checkbox"  value="全选"/>全选&nbsp;&nbsp;&nbsp;<input type="button" value="删除所选项" /></td>
        </tr>
     </table>

     
  </div>
  <div class="bgbottom"></div>
</div>
</body>
</html>
