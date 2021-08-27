package com.kh.DAYWORK.calendar.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.DAYWORK.calendar.model.dao.CalendarDAO;
import com.kh.DAYWORK.calendar.model.vo.Calendar;
import com.kh.DAYWORK.calendar.model.vo.Commute;

@Service("cService")
public class CalendarService {
	
	@Autowired
	private CalendarDAO cDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertCal(Calendar cal) {

		return cDAO.insertCal(sqlSession, cal);
		
	}

	public ArrayList<Calendar> selectCal(Calendar cal) {
		return cDAO.selectCal(sqlSession, cal);
	}

	public int updateCal(Calendar cal) {
		return cDAO.updateCal(sqlSession, cal);
	}

	public int deleteCal(int calNo) {
		return cDAO.deleteCal(sqlSession, calNo);
	}

	public int workStart(int mNo) {
		return cDAO.workStart(sqlSession, mNo);
	}

	public HashMap<String, String> selectTime(int mNo) {
		return cDAO.selectCom(sqlSession, mNo);
	}

	public int updateCom(int comNo) {
		return cDAO.updateCom(sqlSession, comNo);
	}
}
