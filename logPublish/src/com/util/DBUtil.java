package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
    public static Connection getConn() {
    	Connection conn=null;
    	try {
			//1.加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			//2.创建链接
		    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/logpublish", "root", "ROOT");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
    	
    }
    public static void closeAll(Connection conn,Statement statement,ResultSet rs) {
    	try {
			if (rs!=null) {
				rs.close();
			}
			if (statement!=null) {
				statement.close();
			}
			if (conn!=null) {
				conn.close();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
