<%@page import="com.dao.impl.UserInfoDaoImpl"%>
<%@page import="com.dao.UserInfoDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    UserInfoDao userInfoDao=new UserInfoDaoImpl();
    out.print(userInfoDao.getUserByName(name));
%>
