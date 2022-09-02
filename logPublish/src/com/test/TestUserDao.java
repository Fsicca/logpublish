package com.test;

import java.util.List;

import com.bean.UserInfo;
import com.dao.UserInfoDao;
import com.dao.impl.UserInfoDaoImpl;

public class TestUserDao {
public static void main(String[] args) {
	UserInfoDao userInfoDao=new UserInfoDaoImpl();
//	UserInfo userInfo=userInfoDao.getUserByPwd("aa", "123456");
//	if (userInfo!=null) {
//		System.out.println("�ɹ�");
//	} else {
//        System.out.println("ʧ��");
//	}
	
//	UserInfoDao userInfoDao=new UserInfoDaoImpl();
//	UserInfo userInfo=userInfoDao.getUserById(2);
//	if (userInfo!=null) {
//		System.out.println(userInfo.getName());
//	} else {
//        System.out.println("ʧ��");
//	}
	
	List<UserInfo> userInfos=userInfoDao.getAllUser();
	for (UserInfo userInfo : userInfos) {
		System.out.println(userInfo);
	}
	
//	UserInfo userInfo=new UserInfo("aa", "aa", "2020-02-20", "", "", "", "", 1);
//	boolean flag=userInfoDao.addUser(userInfo);
//	if (flag) {
//		System.out.println("�ɹ�");
//	} else {
//		System.out.println("ʧ��");
//	}

//	UserInfo userInfo=new UserInfo("bb", "bb", "2020-02-20", "", "", "", "", 1);
//	userInfo.setId(4);
//	userInfo.setIdstatus(1);
//	boolean flag=userInfoDao.updateUser(userInfo);
//	if (flag) {
//		System.out.println("�ɹ�");
//	} else {
//		System.out.println("ʧ��");
//	}

//	boolean flag=userInfoDao.deleteUser(4);
//	if (flag) {
//		System.out.println("�ɹ�");
//	} else {
//		System.out.println("ʧ��");
//	}
//	
}
}
