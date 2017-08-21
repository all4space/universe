package com.git.test.VO;

public class UsersVO {

	private int userNo;
	private String userId;
	private String userName;
	private String userPwd;
	private String authority;
	
	public UsersVO(){}
	
	public UsersVO(int userNo, String userId, String userName, String userPwd, String authority) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.authority = authority;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Override
	public String toString() {
		return "UserVO [userNo=" + userNo + ", userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd
				+ ", authority=" + authority + "]";
	}
	
	
}
