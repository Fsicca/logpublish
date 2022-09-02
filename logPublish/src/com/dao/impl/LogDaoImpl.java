package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.LogInfo;
import com.dao.LogDao;
import com.util.DBUtil;

public class LogDaoImpl implements LogDao {
	
	public boolean insertLog(LogInfo log) {
		boolean flag=false;
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=DBUtil.getConn();
			String sql="insert into loginfo(title,content,userId)"+
			" values(?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, log.getTitle());
			pstmt.setString(2, log.getContent());
			pstmt.setInt(3, log.getUserId());
			int rowNum=pstmt.executeUpdate();
			if(rowNum==1) {
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(conn, pstmt, null);
		}
		
		return flag;
	}
	
	public boolean updateLog(LogInfo logInfo) {
		boolean flag=false;
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=DBUtil.getConn();
			String sql="update loginfo set title=?,content=?,userId=?"+
			" where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, logInfo.getTitle());
			pstmt.setString(2, logInfo.getContent());
			pstmt.setInt(3, logInfo.getUserId());
			pstmt.setInt(4, logInfo.getId());
			int rowNum=pstmt.executeUpdate();
			if(rowNum==1) {
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(conn, pstmt, null);
		}
		
		return flag;
	}
	
	public boolean deleteLog(int id) {
		boolean flag=false;
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=DBUtil.getConn();
			String sql="delete from loginfo where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			int rowNum=pstmt.executeUpdate();
			if(rowNum==1) {
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(conn, pstmt, null);
		}
		
		return flag;
	}
	
	public List<LogInfo> getLogList() {
		List<LogInfo> logList=new ArrayList<LogInfo>();
		boolean flag=false;
		Connection conn=null;
		Statement statement=null;
		ResultSet rs=null;
		try {
			conn=DBUtil.getConn();
			String sql="select * from logInfo";
			statement=conn.createStatement();
			rs=statement.executeQuery(sql);
			while(rs.next()) {
				String title=rs.getString("title");
				String content=rs.getString("content");
				String createTime=rs.getString("createTime");
				int logId=rs.getInt("ID");
				int userId=rs.getInt("userId");
				LogInfo logInfo=new LogInfo(logId, title, content, createTime, userId);
				logList.add(logInfo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(conn, statement, rs);
		}
		
		return logList;
	}
	
	public LogInfo getLogById(int id) {
		LogInfo log=null;
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=DBUtil.getConn();
			String sql="select * from logInfo where ID=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				String title=rs.getString("title");
				String content=rs.getString("content");
				String createTime=rs.getString("CreateTime");
				int logId=rs.getInt("ID");
				int userId=rs.getInt("userId");
				log=new LogInfo(logId, title, content, createTime, userId);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(conn, pstmt, null);
		}
		
		return log;
	}

	@Override
	public List<LogInfo> getLogListByuserId(int userId) {
		List<LogInfo> logList=new ArrayList<LogInfo>();
		boolean flag=false;
		Connection conn=null;
//		Statement statement=null;
		PreparedStatement pStatement=null;
		ResultSet rs=null;
		try {
			conn=DBUtil.getConn();
			String sql="select l.*,u.name from loginfo l LEFT JOIN userinfo u on l.userId=u.id where l.userId=?";
			pStatement=conn.prepareStatement(sql);
			pStatement.setInt(1, userId);
			
			rs=pStatement.executeQuery();
//			statement=conn.createStatement();
//			rs=statement.executeQuery(sql);
			while(rs.next()) {
				String title=rs.getString("title");
				String content=rs.getString("content");
				String createTime=rs.getString("createTime");
				int logId=rs.getInt("ID");
//				int userId=rs.getInt("userId");
				LogInfo logInfo=new LogInfo(logId, title, content, createTime, userId);
				logInfo.setUserName(rs.getString("name"));
				logList.add(logInfo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(conn,pStatement, rs);
		}
		
		return logList;
	}

}
