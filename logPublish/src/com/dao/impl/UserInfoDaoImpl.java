package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.UserInfo;
import com.dao.UserInfoDao;
import com.util.DBUtil;

public class UserInfoDaoImpl implements UserInfoDao{

	
	public UserInfo getUserByPwd(String name, String pwd) {
		UserInfo userInfo=null;
		try {
			Connection conn=DBUtil.getConn();
//			Statement statement=conn.createStatement();
//			String sql="select * from userinfo where name='"+name+"' and pwd='"+pwd+"'";
//			ResultSet rs=statement.executeQuery(sql);
			String sql="select * from userinfo where name=? and pwd=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				int id=rs.getInt("id");
				String bir=rs.getString("bir");
				String phone=rs.getString("phone");
				String email=rs.getString("email");
				String imgUrl=rs.getString("imgUrl");
				String address=rs.getString("address");
				int sex=rs.getInt("sex");
				int status=rs.getInt("status");
				userInfo=new UserInfo(id, name, pwd, bir, phone, email, address, imgUrl, sex, status);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userInfo;
	}

	
	public UserInfo getUserById(int id) {
		UserInfo userInfo=null;
		try {
			Connection conn=DBUtil.getConn();
			String sql="select * from userinfo where id=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				String name=rs.getString("name");
				String pwd=rs.getString("pwd");
				String bir=rs.getString("bir");
				String phone=rs.getString("phone");
				String email=rs.getString("email");
				String imgUrl=rs.getString("imgUrl");
				String address=rs.getString("address");
				int sex=rs.getInt("sex");
				int status=rs.getInt("status");
				userInfo=new UserInfo(id, name, pwd, bir, phone, email, address, imgUrl, sex, status);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userInfo;
	}

	
	public List<UserInfo> getAllUser() {
		List<UserInfo> logList=new ArrayList<UserInfo>();
	    Connection conn=null;
		Statement statement=null;
		ResultSet rs=null;
		try {
			conn=DBUtil.getConn();
			statement=conn.createStatement();
			String sql="select * from userinfo";
			rs=statement.executeQuery(sql);
			while(rs.next()) {
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String pwd=rs.getString("pwd");
				String bir=rs.getString("bir");
				String phone=rs.getString("phone");
				String email=rs.getString("email");
				String imgUrl=rs.getString("imgUrl");
				String address=rs.getString("address");
				int sex=rs.getInt("sex");
				int status=rs.getInt("status");
				UserInfo userInfo=new UserInfo(id, name, pwd, bir, phone, email, address, imgUrl, sex, status);
				logList.add(userInfo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.closeAll(conn, statement, rs);
		}
		
		
		return logList;
	}

	
	public boolean addUser(UserInfo userinfo) {
		boolean flag=false;
		 Connection conn=null;
			Statement statement=null;
			try {
				conn=DBUtil.getConn();
				statement=conn.createStatement();
				String sql="insert into userinfo(name,pwd,bir,phone,email,imgUrl,"
						+"address,sex) values(?,?,?,?,?,?,?,?) ";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1, userinfo.getName());
				ps.setString(2, userinfo.getPwd());
				ps.setString(3, userinfo.getBir());
				ps.setString(4, userinfo.getPhone());
				ps.setString(5, userinfo.getEmail());
				ps.setString(6, userinfo.getImgUrl());
				ps.setString(7, userinfo.getAddress());
				ps.setInt(8, userinfo.getSex());
				int rowNum=ps.executeUpdate();
				if(rowNum==1) {
					flag=true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBUtil.closeAll(conn, statement, null);
			}
		return flag;
	}

	
	public boolean updateUser(UserInfo userinfo) {
		boolean flag=false;
		 Connection conn=null;
			Statement statement=null;
			try {
				conn=DBUtil.getConn();
				statement=conn.createStatement();
				String sql="update userinfo set name=?,pwd=?,bir=?,phone=?,"
						+"email=?,imgUrl=?,address=?,sex=?,status=? where id=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1, userinfo.getName());
				ps.setString(2, userinfo.getPwd());
				ps.setString(3, userinfo.getBir());
				ps.setString(4, userinfo.getPhone());
				ps.setString(5, userinfo.getEmail());
				ps.setString(6, userinfo.getImgUrl());
				ps.setString(7, userinfo.getAddress());
				ps.setInt(8, userinfo.getSex());
				ps.setInt(9, userinfo.getIdstatus());
				ps.setInt(10, userinfo.getId());
				int rowNum=ps.executeUpdate();
				if(rowNum==1) {
					flag=true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBUtil.closeAll(conn, statement, null);
			}
		return flag;
	}

	
	public boolean deleteUser(int id) {
		boolean flag=false;
		 Connection conn=null;
			Statement statement=null;
			try {
				conn=DBUtil.getConn();
				statement=conn.createStatement();
				String sql="delete from userinfo where id=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setInt(1, id);
				int rowNum=ps.executeUpdate();
				if(rowNum==1) {
					flag=true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBUtil.closeAll(conn, statement, null);
			}
		return flag;
	}


	@Override
	public boolean getUserByName(String name) {
		boolean flag=false;
		try {
			Connection conn=DBUtil.getConn();
			String sql="select * from userinfo where name=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, name);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

}
