package com.kh.DAYWORK.approval.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
//import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.DAYWORK.approval.model.exception.ApprovalException;
import com.kh.DAYWORK.approval.model.vo.Approval;
import com.kh.DAYWORK.approval.model.vo.ApprovalForm;
import com.kh.DAYWORK.approval.model.vo.ApprovalStatus;
import com.kh.DAYWORK.approval.service.ApprovalService;
import com.kh.DAYWORK.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class ApprovalController {

	@Autowired
	private ApprovalService aService;

	@RequestMapping("goList.ap")
	public ModelAndView goList(@ModelAttribute Approval ap, ModelAndView mv, @ModelAttribute Member member, HttpSession session, @ModelAttribute ApprovalStatus approvalStatus) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		List<Approval> list = aService.selecList();
//		List<ApprovalStatus> as = aService.asList();
		
		if(list != null) {
			mv.addObject("loginUser", loginUser);
			mv.addObject("list", list);
			mv.setViewName("approvalList");
		}else {
			throw new ApprovalException("결재리스트 조회에 실패하였습니다.");
		}
		return mv;

	}

	//결재문서select
	@RequestMapping("goInsert.ap")
	public String goInsert(@RequestParam("title") String title, Model model, @ModelAttribute Member member,
			HttpServletRequest request, HttpSession session) {

		Member loginUser = (Member) session.getAttribute("loginUser");
		ApprovalForm approvalForm = aService.selectApForm(title);

		model.addAttribute("loginUser", loginUser);
		model.addAttribute("approvalForm", approvalForm);
		return "approvalInsert";

	}

	
	
	//조직도 멤버가져오기 
	@RequestMapping("selectMemebers.ap")
	public void selectMembers(@ModelAttribute Member member,HttpServletResponse response) {
		
//		
//		Gson gson = new Gson();
//		String mList = gson.toJson(members);
		List<Member> members = aService.selectMembers();
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("application/json");
			response.getWriter().print(mapper.writeValueAsString(members));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//내가 입력한 결재문서 등록
	@RequestMapping("goInsert2.ap")
	public String goInsert2(@ModelAttribute Approval ap, HttpServletRequest request, @ModelAttribute ApprovalStatus as  ) {
		
		int result1 = aService.insertAp(ap);
		int apNo = aService.selectApNo();
		System.out.println(apNo);
		as.setAsApNo(apNo);
		
		if(result1 > 0) {
			int result2= aService.insertAs(as);
			System.out.println(result2);
			return "redirect: goList.ap";
		}else {
			throw new ApprovalException("결재 등록에 실패하였습니다.");
		}
	}
	
	//결재상세
	@RequestMapping("apDetail.ap")
	public ModelAndView apDetail(@RequestParam("apNo") int apNo, ModelAndView mv, @ModelAttribute Member member, HttpSession session, @ModelAttribute ApprovalStatus as) {
		
		Member loginUser = (Member) session.getAttribute("loginUser");
		Approval approval = aService.apDetail(apNo);
		List<ApprovalStatus> approvalStatus = aService.asList();
		
		if(approval != null) {
			mv.addObject("approval", approval);
			mv.addObject("approvalStatus", approvalStatus);
			mv.addObject("logiunUser", loginUser);
			mv.setViewName("approvalDetail");
		}else {
			throw new ApprovalException("결재 상세 조회에 실패하였습니다.");
		}
		return mv;
		
		
	}
	//결재상태 업데이트(대기/결재/반려)
	@RequestMapping("goUpdate.ap")
	public String apUpdate(@RequestParam("apNo") int apNo, @ModelAttribute Approval approval) {
		
		int result = aService.apUpdate(apNo);
		if(result > 0) {
			return"redirect: goList.ap";
		}else {
			throw new ApprovalException("결재 반려에 실패하였습니다.");
		}
		
	
	}
}