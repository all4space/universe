package com.git.test;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.git.test.VO.UsersVO;
import com.git.test.service.UsersServiceImpl;

@RequestMapping("/users")
@Controller
public class UsersController {
	
	@Autowired
	UsersServiceImpl service;
	
	@RequestMapping(value = "loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(UsersVO vo,HttpSession session) {
		service.Login(vo,session);
		return "redirect:/";
	}
}
