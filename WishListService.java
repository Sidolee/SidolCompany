package com.javassem.service;

import com.javassem.vo.WishListVO;

public interface WishListService {
	
	public int WishListCk(WishListVO vo);
	
	public void NewWishList(WishListVO vo);

	public WishListVO WishListAllCount(WishListVO vo);
	
}
