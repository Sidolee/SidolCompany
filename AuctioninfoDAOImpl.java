package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.vo.AuctioninfoVO;

@Repository("auctioninfoDAO")
public class AuctioninfoDAOImpl implements AuctioninfoDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int insertAuctioninfo(AuctioninfoVO vo) {
		System.out.println("AuctioninfoDAOImple 실행결과"+vo.toStringAcutioninfoinsert());
		return mybatis.insert("auctioninfo.insertAuctioninfo",vo);
	}

	@Override
	public List<AuctioninfoVO> getAuctioninfoList(AuctioninfoVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("auctioninfo.getAuctioninfoList", vo);
	}

	@Override
	public AuctioninfoVO getAuctioninfo(AuctioninfoVO vo) {
		System.out.println("===> Mybatis getAuctioninfo() 호출");
		return mybatis.selectOne("auctioninfo.getAuctioninfo", vo);
	}

}
