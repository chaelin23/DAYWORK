package com.kh.DAYWORK.calendar.controller;


import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.DAYWORK.calendar.model.exception.CalendarException;
import com.kh.DAYWORK.calendar.model.service.CalendarService;
import com.kh.DAYWORK.calendar.model.vo.Calendar;
import com.kh.DAYWORK.member.model.vo.Member;

@Controller
@SessionAttributes("comTime")
public class CalendarController {
	
	@Autowired
	private CalendarService calService;
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;
	
	@RequestMapping("calendar.ca")
	public String calendarForm() {
		return "calendarForm";
	}
	
	@RequestMapping("insertCal.ca")
	public String insertCal(@ModelAttribute Calendar cal, HttpServletRequest request) {
		Member m = (Member)request.getSession().getAttribute("loginUser");
		cal.setmNo(m.getmNo());
		cal.setdCode(m.getdCode());		
		
		System.out.println(cal);
		
		int result = calService.insertCal(cal);
		
		if(result > 0) {
			return "redirect:calendar.ca";
		} else {
			throw new CalendarException("일정 추가에 실패하였습니다.");
		}
	}
	
	@RequestMapping(value = "selectCal.ca", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String selectCal(HttpServletRequest request) {
		
		Calendar cal = new Calendar();
		Member m = (Member)request.getSession().getAttribute("loginUser");
		
		cal.setmNo(m.getmNo());
		cal.setdCode(m.getdCode());
		
		ArrayList<Calendar> cList = calService.selectCal(cal);
		
		JSONArray jArr = new JSONArray();
		
		for(Calendar c : cList) {
			JSONObject job = new JSONObject();
			
			job.put("calNo", Integer.toString(c.getCalNo()));
			job.put("calCate", c.getCalCate());
			job.put("calStart", c.getCalStart());
			job.put("calEnd", c.getCalEnd());
			job.put("calContent", c.getCalContent());
			job.put("calAllDay", c.getCalAllDay());
			job.put("calStatus", c.getCalStatus());
			job.put("mNo", c.getmNo());
			job.put("dCode", c.getdCode());
			
			jArr.add(job);
		}
		
		return jArr.toJSONString();
	}
	
	@RequestMapping("updateCal.ca")
	public String updateCal(@ModelAttribute Calendar cal) {
		
		int result = calService.updateCal(cal);
		
		if(result > 0) {
			return "redirect:calendar.ca";
		} else {
			throw new CalendarException("일정 수정에 실패하였습니다.");
		}
	}
	
	@RequestMapping("deleteCal.ca")
	public String deleteCal(@RequestParam("calNo") int calNo) {
		
		int result = calService.deleteCal(calNo);
		
		if(result > 0) {
			return "redirect:calendar.ca";
		} else {
			throw new CalendarException("일정 삭제에 실패하였습니다.");
		}
	}
	
	@RequestMapping("workManage.ca")
	public String workManage() {
		return "workManagement";
	}
	
	@RequestMapping("workStart.ca")
	public String workStart(HttpServletRequest request, Model model) {
		int mNo = ((Member)request.getSession().getAttribute("loginUser")).getmNo();		
		
		int result = calService.workStart(mNo);
				
		if(result > 0) {
			HashMap<String, String> comTime = calService.selectTime(mNo);		
			
			model.addAttribute("comTime", comTime);
			
			return "redirect:calendar.ca";
			
		} else {
			throw new CalendarException("출근 등록에 실패하였습니다.");
		}
	}
	
	@RequestMapping("workEnd.ca")
	public String workEnd(HttpServletRequest request, Model model) {
		HttpSession hs = request.getSession();
		String comNo = (String)((HashMap)hs.getAttribute("comTime")).get("COMNO");	
		int mNo = ((Member)hs.getAttribute("loginUser")).getmNo();		
		int result = calService.updateCom(Integer.parseInt(comNo));
		
		if(result > 0) {
			HashMap<String, String> comTime = calService.selectTime(mNo);		
			
			model.addAttribute("comTime", comTime);
			
			return "redirect:calendar.ca";
			
		} else {
			throw new CalendarException("퇴근 등록에 실패하였습니다.");
		}
		
	}

}

