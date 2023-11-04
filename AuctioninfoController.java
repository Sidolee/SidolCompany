
package com.javassem.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.service.AuctioninfoService;
import com.javassem.vo.AuctioninfoVO;


@Controller
public class AuctioninfoController {
	
	@Autowired
	private AuctioninfoService auctioninfoservice;
	
	
	
	
	// 이름 : insertAuctioninfo(bid_Wit페이지 insert함수)
	// 기능 : 경매게시글의 정보를 DB에 저장해주는 역할을 한다. (이미지 파일정보 3개 [이미지파일 이름, 사이즈, 실제파일이름] , 상품 상세정보, 시작입찰가 설정, 경매 진행시간, 경매 인원 , 최고가,최소가)
	@RequestMapping("/saveAuctioninfo.do")
	public String insertAuctioninfo(AuctioninfoVO vo)throws IOException {
		System.out.println("insertAuctioninfo 실행"+vo.toStringAcutioninfoinsert());
		 int result = auctioninfoservice.insertAuctioninfo(vo);
		 System.out.println("실행결과 확인 "+result);
		 return "redirect:/bid_List.do";
	}
	
	
	@RequestMapping("/bid_List.do")
	public void getAuctioninfoList(AuctioninfoVO vo, Model model) {
		System.out.println("===>  getAuctioninfoList 호출");
		List<AuctioninfoVO> result=auctioninfoservice.getAuctioninfoList(vo);
		model.addAttribute("auctioninfoList", result);
		
	}
	
	
	@RequestMapping("/bid_Ck_Pc.do")
	public void getAuctioninfo(AuctioninfoVO vo,Model model) {
		AuctioninfoVO result=auctioninfoservice.getAuctioninfo(vo);
		model.addAttribute("auctioninfo", result);
		System.out.println(result.toStringAcutioninfoinsert());
		 
	}

}
