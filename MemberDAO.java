package com.javassem.dao;

import java.util.List;

import com.javassem.vo.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO vo);
	
	public List<MemberVO> selectAllMember(MemberVO vo);
	
	public void updateMember(MemberVO vo);
	
	public void deleteMember(MemberVO vo);
	
	
}
