package com.javassem.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.vo.WishListVO;

@Repository
public class WishListDAOImpl implements WishListDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int WishListCk(WishListVO vo) {
		System.out.println("selectWishListAll 작업");
		if (mybatis.selectOne("wishList.selectWishListAll", vo) != null) {
			return 1;
		}else return 0;
	}

	@Override
	public void NewWishList(WishListVO vo) {
		System.out.println("insertWishList 작업");
		mybatis.selectOne("wishList.insertWishList", vo);
	}

	@Override
	public WishListVO WishListAllCount(WishListVO vo) {
		System.out.println("countWishListAll 작업");
		WishListVO wvo = mybatis.selectOne("wishList.countWishListAll", vo);
		System.out.println(wvo.getCOUNT());
		// null 처리
		if(wvo.getCOUNT() == null) {
			wvo.setCOUNT(0);
			return wvo;
		}else {return wvo;}
	}

}
