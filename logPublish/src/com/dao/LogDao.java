package com.dao;

import java.util.List;

import com.bean.LogInfo;

public interface LogDao {
    //���
	boolean insertLog(LogInfo log);
	//�޸�
	boolean updateLog(LogInfo logInfo);
	//ɾ��
	boolean deleteLog(int id);
	//��ѯ����
	List<LogInfo> getLogList();
	//����ID��ѯ
	LogInfo getLogById(int id);
	//�����û�ID��ѯ����
	List<LogInfo> getLogListByuserId(int userId);
}
