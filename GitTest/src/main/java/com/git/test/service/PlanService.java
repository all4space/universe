package com.git.test.service;

import java.util.ArrayList;

import com.git.test.VO.MemberVO;
import com.git.test.VO.WorkVO;

public interface PlanService {
	
 public void getPlan(); // 일정 달력 표시.
 
 public void updatePlan(); // 일정 달력 수정.
 
 public void deletePlan();// 일정 달력 삭제.
 
 public ArrayList<WorkVO>Day(WorkVO work); // 일별 달력 표시.
 
 public ArrayList<WorkVO>Week(WorkVO work); // 주별 달력 표시.
 
 public ArrayList<WorkVO>Month(WorkVO work);// 월별 달력 표시.
 
 public ArrayList<WorkVO>Search(WorkVO work); // 검색 표시.
 
 public ArrayList<WorkVO>Insert(WorkVO work); // 일정 생성.
 
 public void DownLoad(WorkVO work); // 다운로드.
 
 public ArrayList<MemberVO>ContactInfo();//컨텍드 표시. 

}
