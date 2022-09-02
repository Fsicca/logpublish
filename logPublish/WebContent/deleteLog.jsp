<%@page import="com.dao.LogDao"%>
<%@page import="com.dao.impl.LogDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id=request.getParameter("id");
	LogDao logDao=new LogDaoImpl();
	boolean flag=logDao.deleteLog(Integer.parseInt(id));
	if(flag){
		response.sendRedirect("index.jsp");
	}else{
		out.print("fail!!!");
	}
%>