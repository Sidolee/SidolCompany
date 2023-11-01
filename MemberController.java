package com.javassem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.service.MemberService;
import com.javassem.vo.MemberVO;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/insertMember.do")
	public String
	
	
	
	insertMember(MemberVO vo) {
		System.out.println("insertMember.do 요청 수령");
		System.out.println(vo.toString());
		memberService.insertMember(vo); 
		return "redirect:main_logout";
	}
	
	@RequestMapping("/selectAllMember.do")
	public void selectAllMember(MemberVO vo, Model model) {
		System.out.println("selectAllMember.do 요청 수령");
		System.out.println(vo.toString());
		model.addAttribute("memberList", memberService.selectAllMember(vo));
	}
	@RequestMapping("/main_login.do")
	public String login() {
		System.out.println("main_login 화면 요청 넘어가라고 제발 ㅜㅜ");
		return "redirect:main_login";
	}
	
	@RequestMapping("/join.do")
	public String join() {
		System.out.println("insertMember jsp로 넘어가주세요 ,,");
		return "redirect:insertMember";
	}
	
}
