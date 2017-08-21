package com.git.test.VO;

public class MemberVO {

	private int memberNo;
	private int projectNo;
	private int userNo;
	private int taskNo;
	private int workNo;
	private int canWork;
	private int mustWork;
	
	public MemberVO(){}

	public MemberVO(int memberNo, int projectNo, int userNo, int taskNo, int workNo, int canWork, int mustWork) {
		super();
		this.memberNo = memberNo;
		this.projectNo = projectNo;
		this.userNo = userNo;
		this.taskNo = taskNo;
		this.workNo = workNo;
		this.canWork = canWork;
		this.mustWork = mustWork;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getTaskNo() {
		return taskNo;
	}

	public void setTaskNo(int taskNo) {
		this.taskNo = taskNo;
	}

	public int getWorkNo() {
		return workNo;
	}

	public void setWorkNo(int workNo) {
		this.workNo = workNo;
	}

	public int getCanWork() {
		return canWork;
	}

	public void setCanWork(int canWork) {
		this.canWork = canWork;
	}

	public int getMustWork() {
		return mustWork;
	}

	public void setMustWork(int mustWork) {
		this.mustWork = mustWork;
	}

	@Override
	public String toString() {
		return "MemberVO [memberNo=" + memberNo + ", projectNo=" + projectNo + ", userNo=" + userNo + ", taskNo="
				+ taskNo + ", workNo=" + workNo + ", canWork=" + canWork + ", mustWork=" + mustWork + "]";
	}
	
	
}
