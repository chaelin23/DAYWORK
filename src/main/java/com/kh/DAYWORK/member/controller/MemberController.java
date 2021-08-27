package com.kh.DAYWORK.member.controller;

import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import com.kh.DAYWORK.member.model.vo.MemberPageInfo;
import com.kh.DAYWORK.member.model.vo.MemberPagination;

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
		System.out.println(loginUser);
		System.out.println(m);
		boolean match = bcrypt.matches(m.getmPwd(), loginUser.getmPwd());
		
		if(match) {
			model.addAttribute("loginUser", loginUser);
		} else {
			throw new MemberException("로그인에 실패했습니다.");
<<<<<<< HEAD
		}		
		return "redirect:home.do";
	}
=======
		}
		
		return "../calendar/workManagement";
	}	
>>>>>>> 3559d9fa76a6a791d82a19fa75c998503e76f69a
	
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
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		mv.addObject("m", loginUser);
		mv.setViewName("myPage");
		return mv;
	}
	
	@RequestMapping("update.me")
	public String updateMember(@ModelAttribute Member m,  
							   @RequestParam("post") String post,
							   @RequestParam("address1") String address1,
							   @RequestParam("address2") String address2,
							   @RequestParam("uploadFile") MultipartFile uploadFile, 
							   HttpServletRequest request,
							   HttpSession session, Model model) throws MemberException {
		int result = 0;
		
		m.setmAddress(post + "/" + address1 + "/" + address2);
		int selectMno = m.getmNo();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(uploadFile.getOriginalFilename() != "") {
			if(loginUser.getmRenameProfile() != null) { // 파일 있었는데 바꿀 때
				deleteFile(request, m);
			}  
			String renameFileName = saveFile(uploadFile, request);
			if(renameFileName != null) {
				m.setmOriginProfile(uploadFile.getOriginalFilename());
				m.setmRenameProfile(renameFileName);
			}
			result = mService.updateMember(m);
		} else if(uploadFile.getOriginalFilename() == ""){// 파일 아예 없을 때
			result = mService.updateMemberProfile(m);
		}
			
		if(result > 0) {
			m = mService.selectMember(selectMno);
			model.addAttribute("loginUser", m);
			return "redirect:goMypage.me";
		}else {
			throw new MemberException("변경실패");
		}
		
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) { 
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\mProfileFiles"; 
		
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdirs(); 
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) + "."
									+ originFileName.substring(originFileName.lastIndexOf(".") +1); 
		
		String renamePath = folder + "\\" + renameFileName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러");
			e.printStackTrace();
		}
		
		return renameFileName;
	}
	
	public void deleteFile(HttpServletRequest request, Member m) {
		String root = request.getSession().getServletContext().getRealPath("resources"); //폴더접근
		String savePath = root + "\\mProfileFiles";
		
		File f = new File(savePath + "\\" + m.getmRenameProfile());
		if(f.exists()) { 
			f.delete(); 
		}
	}
	
	// 관리자 페이지
	
	@RequestMapping("goAdmin.me")
	public ModelAndView goAdmin(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) throws MemberException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = mService.getListCount();
		MemberPageInfo mpi = MemberPagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Member>mList = mService.selectMemberList(mpi);
		
		if(mList != null) {
			mv.addObject("mList", mList).addObject("mpi",mpi);
			mv.setViewName("adminPage");
		} else {
			throw new MemberException("사원 조회에 실패하였습니다.");
		}
		
		return mv;
	}
	
	@RequestMapping("updateMember.me")
	public String updateMember(@ModelAttribute Member m ) {
		return null;
	}
	
	// 퇴사처리
	@RequestMapping("updateBtnN.me")
	public String updateBtnN(@RequestParam("mNo")int mNo) throws MemberException {
		int result = mService.updateBtnN(mNo);
		
		if(result>0) {
			return "redirect:goAdmin.me";
		} else {
			throw new MemberException("퇴사 처리에 실패하였습니다.");
		}
	}
	
	//입사처리
	@RequestMapping("updateBtnY.me")
	public String updateBtnY(@RequestParam("mNo")int mNo) throws MemberException {
		int result = mService.updateBtnY(mNo);
		
		if(result>0) {
			return "redirect:goAdmin.me";
		} else {
			throw new MemberException("퇴사 처리에 실패하였습니다.");
		}
	}
	

}
