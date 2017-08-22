package com.git.test.VO;

public class WorkVO {

	private int taskNo;
	private int workNo;
	private int totalWork;
	private int doneWork;
	
	public WorkVO(){}

	public WorkVO(int taskNo, int workNo, int totalWork, int doneWork) {
		super();
		this.taskNo = taskNo;
		this.workNo = workNo;
		this.totalWork = totalWork;
		this.doneWork = doneWork;
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

	public int getTotalWork() {
		return totalWork;
	}

	public void setTotalWork(int totalWork) {
		this.totalWork = totalWork;
	}

	public int getDoneWork() {
		return doneWork;
	}

	public void setDoneWork(int doneWork) {
		this.doneWork = doneWork;
	}

	@Override
	public String toString() {
		return "WorkVO [taskNo=" + taskNo + ", workNo=" + workNo + ", totalWork=" + totalWork + ", doneWork=" + doneWork
				+ "]";
	}
	
	
}
