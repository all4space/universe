package com.git.test.service;

import javax.jws.soap.SOAPBinding.Use;
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
	public boolean idCheck(String userId) {
		UsersVO vo = dao.idCheck(userId);
		if(vo != null) {
			return true;
		}
		return false;
	}
	
	@Override
	public boolean ctoCheck(UsersVO vo) {
		UsersVO cto = dao.ctoCheck(vo);
		if(cto != null) {
			return true;
		}
		return false;
	}
	
	@Override
	public void login(UsersVO vo, HttpSession session) {
		vo = dao.login(vo);
		if(vo != null){
			session.setAttribute("loginId", vo.getUserId());
			session.setAttribute("userName", vo.getUserName());
		}
	}

	@Override
	public boolean delete(UsersVO vo) {
       if(dao.delete(vo) == 1) {
    	   return true; 
       }
       return false;
	}

	
}



	






	




