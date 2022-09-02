package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestConn {
	public static void main(String[] args) {
//	test();
		DBUtil();
	}
	public static void test() {
		try {
			//1.加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			//2.创建链接
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/logpublish", "root", "ROOT");
			if(conn!=null) {
				System.out.println("连接成功");
			}
			//3.创建statement
			Statement statement=conn.createStatement();
			//4.执行sql语句，使用ResultSet接受结果集
			ResultSet rs=statement.executeQuery("select * from userinfo");
			//5.
			while (rs.next()) {
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String pwd=rs.getString(3);
				System.out.println(id+"-"+name+"-"+pwd);
			}
			rs.close();
			statement.close();
			conn.close();
					
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void DBUtil() {
		try {
			Connection conn=com.util.DBUtil.getConn();//获取链接
			//3.创建statement
			Statement statement=conn.createStatement();
			//4.执行sql语句，使用ResultSet接受结果集
			ResultSet rs=statement.executeQuery("select * from userinfo");
			//5.
			while (rs.next()) {
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String pwd=rs.getString(3);
				System.out.println(id+"-"+name+"-"+pwd);
			}
			//5.关闭资源
			com.util.DBUtil.closeAll(conn, statement, rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
