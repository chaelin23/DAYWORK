package com.kh.DAYWORK.member.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
		
		return "../calendar/workManagement";
	}
	
	public void returnLoginUser() {
		
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
	
	@RequestMapping("goMypage.me")
	public ModelAndView goMypage(ModelAndView mv, HttpSession session) {
		Member m = (Member)session.getAttribute("loginUser");
		
		mv.addObject("m", m);
		mv.setViewName("myPage");
		return mv;
	}
	
	@RequestMapping("update.me")
	public String updateMember(@ModelAttribute Member m, @RequestParam("uploadFile") MultipartFile uploadFile, HttpServletRequest request,
								HttpSession session, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int selectMno = loginUser.getmNo();
		String renameFileName = null;
		
		if(uploadFile != null && uploadFile.isEmpty()) {
			
			if(m.getmRenameProfile() != null) { // 이전 파일 존재한다면 삭제해줄 것
				deleteFile(request, m);
			} else if(m.getmRenameProfile() == null) {
				renameFileName = saveFile(uploadFile, request);
			}
			m.setmOriginProfile(uploadFile.getOriginalFilename());
			m.setmRenameProfile(renameFileName);
		}
		
		int result = mService.updateMember(m);
//		Member selectMember = mService.selectMember(selectMno);
//		model.addAttribute("m", selectMember);
		return "redirect:goMypage.me";
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\muploadFiles";
		
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) + "."
				+ originFileName.substring(originFileName.lastIndexOf(".")+1);
		
		String renamePath = folder + "\\" + renameFileName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return renameFileName;
	}
	
	public void deleteFile(HttpServletRequest request, Member m) {
		String root = request.getSession().getServletContext().getRealPath("resources"); //폴더접근
		String savePath = root + "\\buploadFiles";
		
		File f = new File(savePath + "\\" + m.getmRenameProfile());
		if(f.exists()) { // 파일 존재하면
			f.delete(); // 지워
		}
	}
	
}
