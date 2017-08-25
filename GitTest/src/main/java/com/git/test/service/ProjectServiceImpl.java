package com.git.test.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.test.VO.ProjectVO;
import com.git.test.VO.UsersVO;
import com.git.test.dao.ProjectDAOImpl;

@Service
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	ProjectDAOImpl dao;
	
	@Override
	public void projectAdd(UsersVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean projectModify(UsersVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean projectDelete(UsersVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<ProjectVO> getProjectList(UsersVO vo) {
		dao.getProjectList(vo);
		return null;
	}

}
