package com.git.test.dao;

import javax.servlet.http.HttpSession;

import com.git.test.VO.UsersVO;

public interface UsersMapper {
	public int join(UsersVO vo); // 회원 가입
	public UsersVO Login(UsersVO vo); // 로그인
	public UsersVO Checking(UsersVO vo); // 중복 검사
}
