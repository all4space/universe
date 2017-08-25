package com.git.test;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.git.test.VO.TaskVO;
import com.git.test.VO.UsersVO;
import com.git.test.service.GanttServiceImpl;
import com.git.test.service.ProjectServiceImpl;

@RequestMapping("/project")
@Controller
public class ProjectController {
	
	@Autowired
	ProjectServiceImpl service;
	@Autowired
	GanttServiceImpl service_G;
	
	@RequestMapping(value = "Gantt", method = RequestMethod.GET)
	public ModelAndView GanttForm(UsersVO vo,HttpSession session) {
		String userid = (String) session.getAttribute("loginId");
		System.out.println(userid);
		String username = (String) session.getAttribute("userName");
		System.out.println(username);
		vo.setUserId(userid);
		vo.setUserName(username);

		ModelAndView mav = new ModelAndView("/ui");
		mav.addObject("taskList",service_G.taskSerialize(vo, "none"));
		
		return mav;
	}
	
}

