package com.test;

import java.util.List;

import com.bean.LogInfo;
import com.dao.LogDao;
import com.dao.impl.LogDaoImpl;

public class TestLogDao {
	public static void main(String[] args) {
        //���		
//		  LogDao logDao=new LogDaoImpl();
//		    LogInfo logInfo=new LogInfo("aa", "aa", 2);
//		    boolean  flag=logDao.insertLog(logInfo);
//		    if(flag) {
//		    	System.out.println("�ɹ�");
//		    }else {
//		    	System.out.println("ʧ��");
//		    }
		
		//�޸�	
//		  LogDao logDao=new LogDaoImpl();
//		    LogInfo logInfo=new LogInfo("bb", "bb", 2);
//		    logInfo.setId(3);
//		    boolean  flag=logDao.updateLog(logInfo);
//		    if(flag) {
//		    	System.out.println("�ɹ�");
//		    }else {
//		    	System.out.println("ʧ��");
//		    }
		
		//ɾ��	
//		  LogDao logDao=new LogDaoImpl();
//		    boolean  flag=logDao.deleteLog(3);
//		    if(flag) {
//		    	System.out.println("�ɹ�");
//		    }else {
//		    	System.out.println("ʧ��");
//		    }
		
		//��ѯ�б�
//		  LogDao logDao=new LogDaoImpl();
//		  List<LogInfo> logInfos=logDao.getLogList();
//		  for (LogInfo logInfo : logInfos) {
//			System.out.println(logInfo.getTitle());
//		}
		
		//����ID��ѯ
//		  LogDao logDao=new LogDaoImpl();
//		  LogInfo logInfo=logDao.getLogById(2);
//		  System.out.println(logInfo.getTitle());
		
		//��ѯ�б�
//		  LogDao logDao=new LogDaoImpl();
//		  List<LogInfo> logInfos=logDao.getLogListByuserId(1);
//		  for (LogInfo logInfo : logInfos) {
//			System.out.println(logInfo.getUserName());
//		}

	}
 
}
