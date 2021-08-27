package com.kh.DAYWORK.approval.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.DAYWORK.approval.model.exception.ApprovalException;
import com.kh.DAYWORK.approval.model.vo.Approval;
import com.kh.DAYWORK.approval.model.vo.ApprovalForm;
import com.kh.DAYWORK.approval.service.ApprovalService;
import com.kh.DAYWORK.member.model.service.MemberService;
import com.kh.DAYWORK.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class ApprovalController {

	@Autowired
	private ApprovalService aService;

	@RequestMapping("goList.ap")
	public String goList() {

		return "approvalList";
	}

	@RequestMapping("goInsert.ap")
	public String goInsert(@RequestParam("title") String title, Model model, @ModelAttribute Member member,
			HttpServletRequest request, HttpSession session) {

		Member loginUser = (Member) session.getAttribute("loginUser");
		ApprovalForm approvalForm = aService.selectApForm(title);

		model.addAttribute("loginUser", loginUser);
		model.addAttribute("approvalForm", approvalForm);
		return "approvalInsert";

	}

	@RequestMapping("insertAp.ap")
	public String InsertAp(Model model, @ModelAttribute Approval approval, @RequestParam int apNo) {
		
		int result = aService.insertAp(apNo);
		model.addAttribute("approval", approval);
		
		return "approvalList";

	}

}
