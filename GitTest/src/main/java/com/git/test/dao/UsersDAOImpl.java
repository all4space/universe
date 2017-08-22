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
	public UsersVO Login(UsersVO vo) {
		UsersMapper mapper = Sqlsession.getMapper(UsersMapper.class);
		return mapper.Login(vo);
	}

	@Override
	public UsersVO Checking(UsersVO vo) {
		// TODO Auto-generated method stub
		return null;
	}


}
