package com.javassem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javassem.service.Auction_infoService;
import com.javassem.service.Auction_ingService;
import com.javassem.service.CashService;
import com.javassem.service.WishListService;
import com.javassem.vo.Auction_infoVO;
import com.javassem.vo.Auction_ingVO;
import com.javassem.vo.AuctioninfoVO;
import com.javassem.vo.CashVO;
import com.javassem.vo.WishListVO;

@Controller
public class Auction_infoController {

	@Autowired
	private Auction_infoService auction_infoService;

	@Autowired
	private CashService cashservice;

	@Autowired
	private Auction_ingService auction_ingService;
	
	// 찜 리스트 서비스
	@Autowired
	private WishListService  wishListService;

	@RequestMapping(value = "/bid_Pc.do", params = {"A_NUM", "M_ID", "ING_BUYER"})
	private void selectProduct(Auction_infoVO vo,CashVO cashvo, Auction_ingVO ingvo, Model model) {
		System.out.println("상품 경매 가져오기");

		System.out.println("캐시VO 투스트링 : "+ cashvo.getM_ID());
		System.out.println("옥션VO 투투투투 : "+ vo.getA_NUM());

		//getMyAccount로 받은 CashVO cashinfo

		model.addAttribute("cash",cashservice.getMyAccount(cashvo));
		model.addAttribute("product", auction_infoService.selectByA(vo));
		model.addAttribute("ingproduct",auction_ingService.getAuction_ingInfo(ingvo) );
		model.addAttribute("ingproductmember",auction_ingService.getAuction_ingInfomember(ingvo) );
		// 상품 찜 인원 확인
		
		WishListVO wvo = new WishListVO();
		wvo.setW_ID(cashvo.getM_ID());
		wvo.setW_PRODUCT(vo.getA_NUM());
		model.addAttribute("wishcount", wishListService.WishListAllCount(wvo) );

		System.out.println("바나나바나나바나나"+auction_ingService.getAuction_ingInfo(ingvo).toString());
	}

	@RequestMapping(value = "/productList.do", params={"C_ID"})
	private void productList(Auction_infoVO vo, Model model) {
		System.out.println("카테고리에 따라 값 가져오기");
		model.addAttribute("productList", auction_infoService.selectByC(vo));
	}

	@RequestMapping("/searchItem.do")
	public String searchItem(AuctioninfoVO vo, Model model) {
		System.out.println("1. [searchItem.do](http://searchitem.do/) 요청 수락");

		List<AuctioninfoVO> result = auction_infoService.searchItem(vo);

		System.out.println(result);
		model.addAttribute("productList", result);
		System.out.println("4. [searchItem.do](http://searchitem.do/) 종료");
		return "productList";
	}

	@RequestMapping(value = "/event_list.do", params={"C_ID"})
	private void eve_productList(Auction_infoVO vo, Model model) {
		System.out.println("이벤트 경매 " +vo.getC_ID()+ "가져오기");
		model.addAttribute("productList", auction_infoService.selectByC(vo));
	}

	/**************************************************************************
	 * 찜 추가 기능
	 */
	@RequestMapping(value = "/addWishList.do", params = {"W_PRODUCT", "W_ID"})
	@ResponseBody
	private String addWishList(WishListVO vo) {
		System.out.println(vo.toString());
		
		int result = wishListService.WishListCk(vo);
		
		if (result == 0) {
			wishListService.NewWishList(vo);
			return "0";
		}else {
			return "1";
		}
	}

}
