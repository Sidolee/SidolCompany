package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.MemberDAO;
import com.javassem.vo.MemberVO;
@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberVO vo) {
		memberDAO.insertMember(vo);
		
	}

	@Override
	public void updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MemberVO> selectAllMember(MemberVO vo) {
		return memberDAO.selectAllMember(vo);
		
	}

}
