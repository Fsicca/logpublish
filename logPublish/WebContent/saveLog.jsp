<%@page import="com.dao.LogDao"%>
<%@page import="com.dao.impl.LogDaoImpl"%>
<%@page import="com.bean.LogInfo"%>
<%@page import="com.bean.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	UserInfo userInfo=(UserInfo)session.getAttribute("loginUser");
	LogInfo logInfo=new LogInfo(title,content,userInfo.getId());
	
	LogDao logDao= new LogDaoImpl();
	boolean flag=false;
	
	String id=request.getParameter("id");
	if(id!=null){
		String uId=request.getParameter("uId");
		logInfo.setId(Integer.parseInt(id));
		logInfo.setUserId(Integer.parseInt(uId));
		flag=logDao.updateLog(logInfo);
		response.sendRedirect("index.jsp");
	}else{
		flag=logDao.insertLog(logInfo);
		response.sendRedirect("index.jsp");
	}
	
%>