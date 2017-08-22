package com.git.test.service;

import com.git.test.VO.ProjectVO;
import com.git.test.VO.UsersVO;


public interface ProjectMemberService {
			public ProjectVO MemberInvite(UsersVO vo); //프로젝트 멤버 초대
			
			public boolean MemberInviteApproval(ProjectVO vo); //프로젝트에 초대받은 멤버가 승인
			
			public boolean MemberDrop(UsersVO vo); // 프로젝트 멤버 삭제
			
			public ProjectVO DropRequest(ProjectVO vo); //프로젝트 '멤버'가 탈퇴 요청
			
			public boolean MemberDropApproval(ProjectVO vo); // 프로젝트 '매니저'가 멤버 탈퇴 승인
}
