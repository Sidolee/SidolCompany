package com.javassem.dao;

import com.javassem.vo.WishListVO;

public interface WishListDAO {
	
	public int WishListCk(WishListVO vo);
	
	public void NewWishList(WishListVO vo);
	
	public WishListVO WishListAllCount(WishListVO vo);

}
