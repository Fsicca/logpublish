<%@page import="com.jspsmart.upload.File"%>
<%@page import="com.jspsmart.upload.Request"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@page import="com.dao.impl.UserInfoDaoImpl"%>
<%@page import="com.dao.UserInfoDao"%>
<%@page import="com.bean.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
        SmartUpload su=new SmartUpload();//创建文件上传的组件
        su.initialize(pageContext);//控件初始化
        Request suRequest=su.getRequest();//获取组件整理的请求信息
        su.setCharset("utf-8");//设置编码集
        su.upload();//将数据上传到组件中
        File file=su.getFiles().getFile(0);//从组件中获取一个文件
        
        String filePath="";//文件存储路径
        if(file.getSize()!=0){     //获取文件时，进行另存
            filePath="upLoad/"+file.getFileName();
            file.saveAs(filePath, SmartUpload.SAVE_VIRTUAL);
        }

		String name=suRequest.getParameter("name");
		String pwd=suRequest.getParameter("pwd");
		String bir=suRequest.getParameter("bir");
		String phone=suRequest.getParameter("phone");
		String email=suRequest.getParameter("email");
		String address=suRequest.getParameter("address");
	//	String imgUrl=suRequest.getParameter("imgUrl");
		String sex=suRequest.getParameter("sex");
		
		UserInfo userInfo=new UserInfo(name,pwd,bir,phone,email,address,filePath,Integer.parseInt(sex));
		UserInfoDao userInfoDao=new UserInfoDaoImpl();
		boolean flag=userInfoDao.addUser(userInfo);
		if (flag) {
			session.setAttribute("loginUser", userInfo);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			out.println("失败");
		}
%>