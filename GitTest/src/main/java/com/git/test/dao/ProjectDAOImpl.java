package com.git.test.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.git.test.VO.MemberVO;
import com.git.test.VO.ProjectVO;
import com.git.test.VO.TaskVO;
import com.git.test.VO.UsersVO;

@Repository
public class ProjectDAOImpl implements ProjectDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void projectAdd(UsersVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int projectModify(UsersVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int projectDelete(UsersVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<ProjectVO> getProjectList(UsersVO vo) {
		ProjectMapper mapper = sqlSession.getMapper(ProjectMapper.class);
		return mapper.getProjectList(vo);
	}

	@Override
	public MemberVO getMemberNo(UsersVO vo) {
		System.out.println("들어오냐고");
		ProjectMapper mapper = sqlSession.getMapper(ProjectMapper.class);
		return mapper.getMemberNo(vo);
	}

	@Override
	public ArrayList<TaskVO> taskSerialize(MemberVO vo) {
		ProjectMapper mapper = sqlSession.getMapper(ProjectMapper.class);
		return mapper.taskSerialize(vo);
	}
	

}
