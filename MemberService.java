package com.javassem.service;

import java.util.List;

import com.javassem.vo.MemberVO;

public interface MemberService {
	
	void insertMember(MemberVO vo);
	
	void updateMember(MemberVO vo);
	
	void deleteMember(MemberVO vo);
	
	List<MemberVO> selectAllMember(MemberVO vo);

}
