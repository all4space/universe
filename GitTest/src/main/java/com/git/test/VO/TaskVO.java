package com.git.test.VO;

public class TaskVO {

	private int projectNo;
	private int userNo;
	private int taskNo;
	private String taskName;
	private String taskContent;
	private String taskPriority;
	private String taskStatus;
	private String startDate;
	private String dueDate;
	
	public TaskVO(){}
	
	public TaskVO(int projectNo, int userNo, int taskNo, String taskName, String taskContent, String taskPriority,
			String taskStatus, String startDate, String dueDate) {
		super();
		this.projectNo = projectNo;
		this.userNo = userNo;
		this.taskNo = taskNo;
		this.taskName = taskName;
		this.taskContent = taskContent;
		this.taskPriority = taskPriority;
		this.taskStatus = taskStatus;
		this.startDate = startDate;
		this.dueDate = dueDate;
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

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getTaskContent() {
		return taskContent;
	}

	public void setTaskContent(String taskContent) {
		this.taskContent = taskContent;
	}

	public String getTaskPriority() {
		return taskPriority;
	}

	public void setTaskPriority(String taskPriority) {
		this.taskPriority = taskPriority;
	}

	public String getTaskStatus() {
		return taskStatus;
	}

	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getDueDate() {
		return dueDate;
	}

	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}

	@Override
	public String toString() {
		return "TaskVO [projectNo=" + projectNo + ", userNo=" + userNo + ", taskNo=" + taskNo + ", taskName=" + taskName
				+ ", taskContent=" + taskContent + ", taskPriority=" + taskPriority + ", taskStatus=" + taskStatus
				+ ", startDate=" + startDate + ", dueDate=" + dueDate + "]";
	}
	
}
