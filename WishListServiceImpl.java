package com.javassem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.WishListDAO;
import com.javassem.vo.WishListVO;

@Service
public class WishListServiceImpl implements WishListService{
	
	@Autowired
	private WishListDAO wishListDAO;
	
	@Override
	public int WishListCk(WishListVO vo) {
		return wishListDAO.WishListCk(vo);
	}

	@Override
	public void NewWishList(WishListVO vo) {
		wishListDAO.NewWishList(vo);
	}

	@Override
	public WishListVO WishListAllCount(WishListVO vo) {
		return wishListDAO.WishListAllCount(vo);
	}

}
