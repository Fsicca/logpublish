package com.dao;

import java.util.List;

import com.bean.UserInfo;

public interface UserInfoDao {
public UserInfo getUserByPwd(String name, String pwd);
public UserInfo getUserById(int id);
public List<UserInfo> getAllUser();
public boolean addUser(UserInfo userinfo);
public boolean updateUser(UserInfo userinfo);
public boolean deleteUser(int id);
public boolean getUserByName(String name);//通过名字获取用户
}
