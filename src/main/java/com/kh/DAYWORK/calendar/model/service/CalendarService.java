package com.kh.DAYWORK.calendar.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.DAYWORK.calendar.model.dao.CalendarDAO;
import com.kh.DAYWORK.calendar.model.vo.Calendar;
import com.kh.DAYWORK.calendar.model.vo.Commute;

@Service("calService")
public class CalendarService {
	
	@Autowired
	private CalendarDAO calDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertCal(Calendar cal) {

		return calDAO.insertCal(sqlSession, cal);
		
	}

	public ArrayList<Calendar> selectCal(Calendar cal) {
		return calDAO.selectCal(sqlSession, cal);
	}

	public int updateCal(Calendar cal) {
		return calDAO.updateCal(sqlSession, cal);
	}

	public int deleteCal(int calNo) {
		return calDAO.deleteCal(sqlSession, calNo);
	}

	public int workStart(int mNo) {
		return calDAO.workStart(sqlSession, mNo);
	}

	public HashMap<String, String> selectTime(int mNo) {
		return calDAO.selectCom(sqlSession, mNo);
	}

	public int updateCom(int comNo) {
		return calDAO.updateCom(sqlSession, comNo);
	}
}
