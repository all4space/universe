package com.git.test;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	// 1 Gantt 불러오기
	@RequestMapping(value = "Gantt", method = RequestMethod.GET)
	public ModelAndView GanttForm(UsersVO vo,HttpSession session,Model model) {
		String userId = (String) session.getAttribute("loginId");
		String userName = (String) session.getAttribute("userName");
		vo.setUserId(userId);
		vo.setUserName(userName);
		
		ModelAndView mav = new ModelAndView("/ui");
		ArrayList<TaskVO> taskList = service_G.taskSerialize(vo);
		mav.addObject("taskList",taskList);
		return mav;
	}
	
}

