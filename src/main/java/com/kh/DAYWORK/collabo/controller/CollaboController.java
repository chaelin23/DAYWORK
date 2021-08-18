package com.kh.DAYWORK.collabo.controller;


import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.GregorianCalendar;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.DAYWORK.board.model.vo.Board;
import com.kh.DAYWORK.collabo.exception.CollaboException;
import com.kh.DAYWORK.collabo.model.service.CollaboService;
import com.kh.DAYWORK.collabo.model.vo.Collabo;
import com.kh.DAYWORK.member.model.vo.Member;

@Controller
public class CollaboController {
	
	@Autowired
	private CollaboService cService;
	
	@RequestMapping("workBox.co")
	public ModelAndView goWorkBox (ModelAndView mv, HttpSession session) {
		Member m = (Member)session.getAttribute("loginUser");
		String mName = m.getmName();
		
		ArrayList<Collabo> cList = cService.selectListC(mName);
		
		if(cList != null ) {
			mv.addObject("cList", cList);
			mv.setViewName("collaboWorkBox");
		} else {
			throw new CollaboException("게시글 전체 조회에 실패했습니다.");
		}
		
		return mv;
	}
	
	@RequestMapping("gocollaboList.co")
	public ModelAndView gocollaboList(ModelAndView mv, HttpSession session) {
		Date dat = new Date(new GregorianCalendar().getTimeInMillis());
		mv.addObject("dat",dat);
		
		Member m = (Member)session.getAttribute("loginUser");
		String mName = m.getmName();
		
		ArrayList<Collabo> cList = cService.selectListC(mName);
		
		mv.addObject("cList", cList);
		mv.setViewName("collaboList");
		
		return mv;
	}
	
	@RequestMapping("insertCollabo.co")
	@ResponseBody 
	public String insertCollabo(@ModelAttribute Collabo co,
								@ModelAttribute Board bo) {
		int result = cService.insertCollabo(co, bo);
		if(result>0) {
			return"success";
		} else {
			throw new CollaboException("게시글 작성에 실패했습니다.");
		}
	}
	
	@RequestMapping("gocollaboListAjax.co")
	@ResponseBody
	public void selectCollaboList(HttpServletResponse response, HttpSession session) {
		response.setContentType("application/json; charset=UTF-8");
		
		Member m = (Member)session.getAttribute("loginUser");
		String mName = m.getmName();
		
		ArrayList<Collabo> cList = cService.selectListC(mName);
		
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson  = gb.create();
		
		try {
			gson.toJson(cList, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("updateBtn.co")
	@ResponseBody
	public String updateBtn(@ModelAttribute Collabo co) {
		int result = cService.updateBtn(co);
		if(result > 0) {
			return "success";
		} else {
			throw new CollaboException("상태변경에 실패하였습니다.");
		}
	}
}
