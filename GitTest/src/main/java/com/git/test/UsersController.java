package com.git.test;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.git.test.VO.UsersVO;
import com.git.test.service.UsersServiceImpl;

@RequestMapping("/users")
@Controller
public class UsersController {
	
	@Autowired
	UsersServiceImpl service;
	
	// 로그인 양식 불러오기 
	@RequestMapping(value = "loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "login";
	}
	
	// 로그인 
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(UsersVO vo, HttpSession session) {
		service.login(vo, session);
		return "redirect:/";
	}
	
	// 회원 가입 양식 불러오기 
	@RequestMapping(value = "joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "joinForm";
	}
	
	// 회원 가입
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(UsersVO vo) {
		service.join(vo);
		return "redirect:/";
	}
	
	// ID 중복 체크 
	@RequestMapping(value = "idCheck", method = RequestMethod.POST)
	@ResponseBody
	public boolean idCheck(String userId) {
		System.out.println(userId);
        boolean result = service.idCheck(userId);
        System.out.println(result);
        return result;
	}
	
	// CTO 중복 체크 
	@RequestMapping(value = "ctoCheck", method = RequestMethod.POST)
	@ResponseBody
	public boolean ctoCheck(UsersVO vo) {
		System.out.println(vo.toString());
	    boolean result = service.ctoCheck(vo);
		
		System.out.println("cto 있어?" + result);
		return result;
	}
	
	// 로그아웃
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
        session.invalidate();
		return "redirect:/";
	}
        
}
