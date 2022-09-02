package com.dao;

import java.util.List;

import com.bean.LogInfo;

public interface LogDao {
    //添加
	boolean insertLog(LogInfo log);
	//修改
	boolean updateLog(LogInfo logInfo);
	//删除
	boolean deleteLog(int id);
	//查询所有
	List<LogInfo> getLogList();
	//根据ID查询
	LogInfo getLogById(int id);
	//根据用户ID查询所有
	List<LogInfo> getLogListByuserId(int userId);
}
