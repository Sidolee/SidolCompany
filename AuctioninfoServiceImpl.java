package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.dao.AuctioninfoDAO;
import com.javassem.vo.AuctioninfoVO;

@Repository("auctioninfoservice")
public class AuctioninfoServiceImpl implements AuctioninfoService {

	@Autowired
	private AuctioninfoDAO auctioninfoDAO;
	
	@Override
	public int insertAuctioninfo(AuctioninfoVO vo) {
		return auctioninfoDAO.insertAuctioninfo(vo);
	}

	@Override
	public List<AuctioninfoVO> getAuctioninfoList(AuctioninfoVO vo) {
		return auctioninfoDAO.getAuctioninfoList(vo);
	}

	@Override
	public AuctioninfoVO getAuctioninfo(AuctioninfoVO vo) {
		return auctioninfoDAO.getAuctioninfo(vo);
	}

}
