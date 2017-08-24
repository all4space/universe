package com.git.test.dao;

import javax.servlet.http.HttpSession;

import com.git.test.VO.UsersVO;

public interface UsersDAO {
	public void join(UsersVO vo); // 회원 가입
	public UsersVO idCheck(String userId); // ID 중복 체크  
	public UsersVO ctoCheck(UsersVO vo); // ID 중복 체크  
	public UsersVO login(UsersVO vo); // 로그인
}
