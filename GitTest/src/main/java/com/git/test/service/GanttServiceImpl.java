package com.git.test.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.test.VO.HistoryVO;
import com.git.test.VO.MemberVO;
import com.git.test.VO.TaskVO;
import com.git.test.VO.UsersVO;
import com.git.test.dao.ProjectDAOImpl;

@Service
public class GanttServiceImpl implements GanttService{

	@Autowired
	ProjectDAOImpl dao;

	@Override
	public void taskAdd(TaskVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean taskModify(TaskVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean taskDelete(TaskVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<TaskVO> taskSerialize(UsersVO vo, String action) {
		ArrayList<TaskVO> taskList = null; 
		MemberVO m_vo = dao.getMemberNo(vo);
		if(m_vo != null){
			taskList = dao.taskSerialize(m_vo, action);
		}
		return taskList;
	}

	@Override
	public ArrayList<HistoryVO> getHistoryList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void historyAdd(HistoryVO vo) {
		// TODO Auto-generated method stub
		
	}


}
