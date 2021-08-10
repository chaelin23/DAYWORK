package com.kh.DAYWORK.member.controller;

import java.sql.Date;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.DAYWORK.member.model.exception.MemberException;
import com.kh.DAYWORK.member.model.service.MemberService;
import com.kh.DAYWORK.member.model.vo.Member;

@SessionAttributes("loginUser") 
@Controller
public class MemberController {
	
	@Autowired 
	private MemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;
	
	@RequestMapping("joinMember.me")
	public String goJoinMember() {
		return "joinMember";
	}
	
	
	@RequestMapping("insert.me")
	public String insertMember(@ModelAttribute Member m,
							   @RequestParam("post") String post,
							   @RequestParam("address1") String address1,
							   @RequestParam("address2") String address2,
							   @RequestParam("year") int year,
							   @RequestParam("month") int month,
							   @RequestParam("date") int date) throws MemberException {
		Date birthDay = new Date(new GregorianCalendar(year, month-1, date).getTimeInMillis());
		
		m.setmBirthDay(birthDay);
		m.setmAddress(post + "/" + address1 + "/" + address2);
		
		String encPwd = bcrypt.encode(m.getmPwd());
		m.setmPwd(encPwd);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			return "redirect:home.do";
		} else {
			throw new MemberException("회원가입에 실패하였습니다.");
		}
	}
	
	@RequestMapping("login.me")
	public String loginMember(@ModelAttribute Member m, Model model) throws MemberException {
		Member loginUser = mService.loginMember(m);
		boolean match = bcrypt.matches(m.getmPwd(), loginUser.getmPwd());
		
		if(match) {
			model.addAttribute("loginUser", loginUser);
		} else {
			throw new MemberException("로그인에 실패했습니다.");
		}
		
		return "redirect:home.do";
	}
	
	@RequestMapping("/logout.me")
	public String logout(SessionStatus session) {
		session.setComplete();
		
		return "redirect:home.do";
	}
	
	@RequestMapping("gowhereMno.me")
	public String goWhereMno() {
		return "whereMno";
	}
	
	@RequestMapping("whereMno.me")
	public String whereMno(@ModelAttribute Member m, Model model) throws MemberException{
		Member member = mService.selectMno(m);
		
		if(member != null) {
//			if(member.getmAdmin() == 1 || member.getmAdmin() == 0) {
				model.addAttribute("member", member);
				return "whereMno";
//			} else if(member.getmAdmin() == 2) {
//				model.addAttribute("member", member);
//				return "redirect:home.do";
//			}
		}else {
			throw new MemberException("사번찾기에 실패했습니다.");
		}
	}
}
