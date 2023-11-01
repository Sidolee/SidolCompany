package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertMember(MemberVO vo) {
		System.out.println("===> Mybatis insertMember() 호출");
		System.out.println(vo.toString());
		int result = mybatis.insert("member.insertMember", vo); 
		System.out.println("입력결과 : " + result); 
		
	}

	@Override
	public List<MemberVO> selectAllMember(MemberVO vo) {
		System.out.println("==> Mybatis selectAllMember() 호출");
		return mybatis.selectList("member.selectAllMember", vo);
		
	}

	@Override
	public void updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

}
