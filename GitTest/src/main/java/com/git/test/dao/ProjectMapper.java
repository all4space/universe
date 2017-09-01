package com.git.test.dao;

import java.util.ArrayList;

import com.git.test.VO.MemberVO;
import com.git.test.VO.ProjectVO;
import com.git.test.VO.TaskVO;
import com.git.test.VO.UsersVO;

public interface ProjectMapper {
	
	public void projectAdd(UsersVO vo);
	public int projectModify(UsersVO vo);
	public int projectDelete(UsersVO vo);
	public ArrayList<ProjectVO> getProjectList(UsersVO vo);
	
	
	public MemberVO getMemberNo(UsersVO vo);

	public ArrayList<TaskVO> taskSerialize(MemberVO vo);

	public ArrayList<TaskVO> taskSerialize(MemberVO vo, String action);
	
	public ArrayList<UsersVO> groupNameList();
}
