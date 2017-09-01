package com.git.test;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.git.test.VO.ProjectVO;
import com.git.test.VO.TaskVO;
import com.git.test.VO.UsersVO;
import com.git.test.service.GanttServiceImpl;
import com.git.test.service.ProjectServiceImpl;
import com.git.test.service.UsersServiceImpl;

@RequestMapping("/project")
@Controller
public class ProjectController {
	
	@Autowired
	ProjectServiceImpl service;
	@Autowired
	GanttServiceImpl service_G;
	
	@Autowired
	UsersServiceImpl userService;

	// 1 Gantt 불러오기
	@RequestMapping(value = "GanttForm")
	public ModelAndView GanttForm(UsersVO vo,HttpSession session,Model model) {
		String userId = (String) session.getAttribute("loginId");
		String userName = (String) session.getAttribute("userName");
		vo.setUserId(userId);
		vo.setUserName(userName);
		
		ModelAndView mav = new ModelAndView("/ui");
		ArrayList<TaskVO> taskList = service_G.taskList(vo);
		
		
		// 요기에 집어넣음 밑에 
		mav.addObject("taskList",taskList);
		return mav;
	}
	
	@RequestMapping(value = "MonthChart", method = RequestMethod.GET)
	public ModelAndView MonthStack(TaskVO vo){
		ModelAndView mav = new ModelAndView("/chart");
		ArrayList<TaskVO> monthTaskList = service_G.taskSerialize(vo,"month");
		return mav;
	}
	
	
	

	@RequestMapping(value = "projectForm", method = RequestMethod.GET)
	public ModelAndView projectForm() {
		ModelAndView mov = new ModelAndView("/projectForm");
		mov.addObject("groupNameList", userService.groupNameList());
		System.out.println("mov? " + mov.toString());
		
		return mov;
	}
	@RequestMapping(value = "groupMemberList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<UsersVO> groupMemberList(String groupName) {
		
		System.out.println("여기는요"
				+ userService.groupMemberList(groupName));
		return userService.groupMemberList(groupName);
	}
	@RequestMapping(value = "projectAdd", method = RequestMethod.POST) // 프로젝트 생성
	public String projectAdd(ProjectVO pvo, String userName) 
	{
		System.out.println("Project ADD!!!");
		System.out.println(pvo.toString());
		System.out.println(userName);
		
		return "taskForm";
	}
}

