package com.git.test.service;

import java.util.ArrayList;

import com.git.test.VO.ProjectVO;
import com.git.test.VO.TaskVO;
import com.git.test.VO.UsersVO;
import com.git.test.VO.WorkVO;

public interface StaticService {
	public ArrayList<ProjectVO> getProjectList(UsersVO vo);
	public ArrayList<WorkVO> getTaskList(TaskVO vo);
}
