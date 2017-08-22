package com.git.test.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.test.VO.UsersVO;
import com.git.test.dao.UsersDAOImpl;

@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	UsersDAOImpl dao;
	
	
	@Override
	public void join(UsersVO vo) {
		dao.join(vo); 		
	}

	@Override
	public void Login(UsersVO vo, HttpSession session) {
		if(dao.Login(vo) != null){
			session.setAttribute("LoginId", vo.getUserId());
			session.setAttribute("username", vo.getUserName());
		}
	}

	@Override
	public UsersVO Checking(UsersVO vo) {
		return null;
	}

	@Override
	public void Logout(HttpSession session) {
	}

}


	




