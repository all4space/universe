package com.git.test.service;

import java.util.ArrayList;

import com.git.test.VO.ProjectVO;
import com.git.test.VO.TaskVO;
import com.git.test.VO.UsersVO;
import com.git.test.VO.WorkVO;

public interface StaticService {
	//프로젝트 진행 현황
	public ArrayList<ProjectVO> getProjectList(UsersVO vo);
	//업무 할당 / 진행 현황
	public ArrayList<WorkVO> getTaskList(TaskVO vo);
	// 업무 효율 / 랭킹
	public ArrayList<WorkVO> getWorkeffencity(TaskVO vo);
}