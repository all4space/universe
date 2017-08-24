package com.git.test.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.git.test.VO.UsersVO;

@Repository
public class UsersDAOImpl implements UsersDAO{
	
	@Autowired
	SqlSession Sqlsession;
	
	@Override
	public void join(UsersVO vo) {
		UsersMapper mapper = Sqlsession.getMapper(UsersMapper.class);
		mapper.join(vo);
	}
	
	@Override
	public UsersVO idCheck(String userId) {
		UsersMapper mapper = Sqlsession.getMapper(UsersMapper.class);
		return mapper.idCheck(userId);
	}
	
	@Override
	public UsersVO ctoCheck(UsersVO vo) {
		UsersMapper mapper = Sqlsession.getMapper(UsersMapper.class);
		return mapper.ctoCheck(vo);
	}
	
	@Override
	public UsersVO login(UsersVO vo) {
		UsersMapper mapper = Sqlsession.getMapper(UsersMapper.class);
		return mapper.login(vo);
	}



	




}
