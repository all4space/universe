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
	/*Gantt 업무 그래프 : 시각화(일,주,달)는 컨트롤러에서 명령받을 것
	 **			서비스는 하나에서 일,주,달로 쪼개어 리턴함. 명령값(action) 받을거임
	 */
	public ArrayList<TaskVO> taskList(MemberVO vo); // Gantt 차트 날짜 뽑는 메소드
	public TaskVO LastDate(MemberVO vo); // progress 100% 으로 나타내기 위해 맨처음 날짜와 맨마지막 날짜 뽑는 메소드
	
	public ArrayList<TaskVO> taskSerialize(TaskVO vo, String action); // 현황

	public ArrayList<TaskVO> taskSerialize(MemberVO vo);

	public ArrayList<TaskVO> taskSerialize(MemberVO vo, String action);
	
	public ArrayList<UsersVO> groupNameList();
}
