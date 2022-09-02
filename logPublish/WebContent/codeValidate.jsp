<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String code=request.getParameter("code");
    String rand=(String)session.getAttribute("rand");
    if(rand.equals(code)){
    	out.print(true);
    }else{
    	out.print(false);
    }
%>