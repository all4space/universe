package com.git.test.service;

import java.util.ArrayList;

import com.git.test.VO.HistoryVO;
import com.git.test.VO.TaskVO;
import com.git.test.VO.WorkVO;

public interface GanttService {
	public void taskAdd(TaskVO vo); //업무 추가
	public boolean taskModify(TaskVO t_vo,WorkVO w_vo); //업무 수정 & 완료(==업데이트)
	public boolean taskDelete(TaskVO vo); // 업무 삭제
	/*업무 그래프 : 시각화(일,주,달)는 컨트롤러에서 명령받을 것
	 **			서비스는 하나에서 일,주,달로 쪼개어 리턴함. 명령값(action) 받을거임
	 */
	public ArrayList<WorkVO> getWorkList(TaskVO vo, String action);
	
	//히스토리 가져오기
	public ArrayList<HistoryVO> getHistoryList();
	public void historyAdd(HistoryVO vo); //히스토리 추가 (log 는 sysdate)
}
