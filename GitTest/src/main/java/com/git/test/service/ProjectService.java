package com.git.test.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.git.test.VO.HistoryVO;
import com.git.test.VO.ProjectVO;
import com.git.test.VO.TaskVO;
import com.git.test.VO.UsersVO;

public interface ProjectService { //생성
	
	public void projectAdd(UsersVO vo);
	public boolean projectModify(UsersVO vo);
	public boolean projectDelete(UsersVO vo);
	public ArrayList<ProjectVO> getProjectList(UsersVO vo);
}
