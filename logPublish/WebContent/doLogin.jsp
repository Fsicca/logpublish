<%@page import="com.bean.UserInfo"%>
<%@page import="com.dao.impl.UserInfoDaoImpl"%>
<%@page import="com.dao.UserInfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	UserInfoDao userInfoDao=new UserInfoDaoImpl();
	UserInfo userInfo= userInfoDao.getUserByPwd(name, pwd);
	
	if(userInfo==null){
		response.sendRedirect("login.jsp");
	}else{
		session.setAttribute("loginUser", userInfo);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
%>