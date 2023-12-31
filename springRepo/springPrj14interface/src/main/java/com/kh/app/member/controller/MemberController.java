package com.kh.app.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.service.MemberServiceDeafult;
import com.kh.app.member.service.MemberServiceEncrypt;
import com.kh.app.member.vo.MemberVo;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("member")
@RequiredArgsConstructor
public class MemberController {
	
	private final MemberService ms;
	
	//회원가입 (화면)
	@GetMapping("join")
	public String join() {
		return "member/join";
	}
	
	//회원가입
	@PostMapping("join")
	public String join(MemberVo vo) throws Exception {
		int result = ms.join(vo);
		if(result != 1) {
			throw new Exception("회원가입 실패");
		}
		return "redirect:/main";
	}
	
	//로그인 (화면)
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	//로그인
	@PostMapping("login")
	public String login(MemberVo vo , HttpSession session) {
		MemberVo loginMember = ms.login(vo);
		if(loginMember == null) {
			throw new RuntimeException("로그인 실패 ...");
		}
		session.setAttribute("loginMember", loginMember);
		return "redirect:/main";
	}

}//class





















