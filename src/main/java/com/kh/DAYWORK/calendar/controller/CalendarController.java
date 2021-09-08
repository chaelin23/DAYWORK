package com.kh.DAYWORK.calendar.controller;


import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.DAYWORK.calendar.model.exception.CalendarException;
import com.kh.DAYWORK.calendar.model.service.CalendarService;
import com.kh.DAYWORK.calendar.model.vo.Calendar;
import com.kh.DAYWORK.member.model.vo.Member;

@Controller
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
			throw new CalendarException("�씪�젙 異붽��뿉 �떎�뙣�븯���뒿�땲�떎.");
		}
	}
	
	@RequestMapping(value = "selectCal.ca", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String selectCal(HttpServletRequest request) {
		
		Calendar cal = new Calendar();
		Member m = (Member)request.getSession().getAttribute("loginUser");
		
		cal.setmNo(m.getmNo());
		cal.setdCode(m.getdCode());
		cal.setjCode(m.getjCode());
		
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
			job.put("jCode", c.getjCode());
			
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
			throw new CalendarException("�씪�젙 �닔�젙�뿉 �떎�뙣�븯���뒿�땲�떎.");
		}
	}
	
	@RequestMapping("deleteCal.ca")
	public String deleteCal(@RequestParam("calNo") int calNo) {
		
		int result = calService.deleteCal(calNo);
		
		if(result > 0) {
			return "redirect:calendar.ca";
		} else {
			throw new CalendarException("�씪�젙 �궘�젣�뿉 �떎�뙣�븯���뒿�땲�떎.");
		}
	}
	
	
	public Calendar setCalendar(Calendar cal, String cate, HttpServletRequest request) {
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		String userJcode = loginUser.getjCode();
		
		String jName = calService.selectJname(userJcode);
		String calJcode = null;
		
		cal.setmNo(loginUser.getmNo());
		cal.setdCode(loginUser.getdCode());
		cal.setCalContent("(��湲�) " + loginUser.getmName() + " " + jName + " " + cate + " : " + cal.getCalContent());
		
		switch(userJcode) {
		case "J3": calJcode = "J4"; break;
		case "J4": calJcode = "J5"; break;
		case "J5": calJcode = "J5"; break;
		default : calJcode = "J3"; break;
		}
		
		cal.setjCode(calJcode);
		
		return cal;
	}
	
	@RequestMapping("insertVac.ca")
	public String insertVac(@ModelAttribute Calendar cal, @RequestParam("vacCate") String vacCate, HttpServletRequest request) {
				
		cal = setCalendar(cal, vacCate, request);
		
		int result = calService.insertVac(cal);
		
		if(result > 0) {
			return "redirect:calendar.ca";
		} else {
			throw new CalendarException("�쑕媛� �떊泥��뿉 �떎�뙣�븯���뒿�땲�떎.");
		}
		
	}
	
	@RequestMapping("acceptVac.ca")
	public String acceptVac(@ModelAttribute Calendar cal) {
		int result = calService.acceptVac(cal);
		
		if(result > 1) {
			return "redirect:calendar.ca";
		} else {
			throw new CalendarException("�쑕媛� 寃곗옱�뿉 �떎�뙣�븯���뒿�땲�떎.");
		}
	}
	
	@RequestMapping("updateVac.ca")
	public String updateVac(@ModelAttribute Calendar cal, @RequestParam("vacCate") String vacCate, HttpServletRequest reqeust) {
		
		cal = setCalendar(cal, vacCate, reqeust);
		
		int result = calService.updateVac(cal);
		
		if(result > 0) {
			return "redirect:calendar.ca";
		} else {
			throw new CalendarException("�쑕媛� �닔�젙�뿉 �떎�뙣�븯���뒿�땲�떎.");
		}
	}
	
	

}

