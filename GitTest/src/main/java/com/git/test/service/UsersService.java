package com.git.test.service;

import javax.servlet.http.HttpSession;

import com.git.test.VO.UsersVO;

public interface UsersService {
	public void Join(UsersVO vo); // 회원 가입
	public UsersVO Login(UsersVO vo); // 로그인
	public UsersVO Checking(UsersVO vo); // 중복 검사
	public void Logout(HttpSession session); // 로그 아웃
}
