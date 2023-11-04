package com.javassem.dao;

import java.util.List;

import com.javassem.vo.AuctioninfoVO;

public interface AuctioninfoDAO {
	public int insertAuctioninfo(AuctioninfoVO vo);
	public List<AuctioninfoVO> getAuctioninfoList(AuctioninfoVO vo);
	public AuctioninfoVO getAuctioninfo(AuctioninfoVO vo);
}
