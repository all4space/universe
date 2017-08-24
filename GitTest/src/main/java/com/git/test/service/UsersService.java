package com.git.test.service;

import javax.servlet.http.HttpSession;

import com.git.test.VO.UsersVO;

public interface UsersService {
	public void join(UsersVO vo); // 회원 가입
    public boolean idCheck(String userId); // ID 중복 체크
    public boolean ctoCheck(UsersVO vo); // CTO 중복 체크 
	public void login(UsersVO vo, HttpSession session); // 로그인
}
