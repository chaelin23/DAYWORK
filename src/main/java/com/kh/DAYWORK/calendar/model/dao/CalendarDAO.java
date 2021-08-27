package com.kh.DAYWORK.calendar.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.DAYWORK.calendar.model.vo.Calendar;
import com.kh.DAYWORK.calendar.model.vo.Commute;

@Repository("cDAO")
public class CalendarDAO {

	public int insertCal(SqlSessionTemplate sqlSession, Calendar cal) {
		return sqlSession.insert("calendar-mapper.insertCal", cal);
	}

	public ArrayList<Calendar> selectCal(SqlSessionTemplate sqlSession, Calendar cal) {
		return (ArrayList)sqlSession.selectList("calendar-mapper.selectCal", cal);
	}

	public int updateCal(SqlSessionTemplate sqlSession, Calendar cal) {
		return sqlSession.update("calendar-mapper.updateCal", cal);
	}

	public int deleteCal(SqlSessionTemplate sqlSession, int calNo) {
		return sqlSession.update("calendar-mapper.deleteCal", calNo);
	}

	public int workStart(SqlSessionTemplate sqlSession, int mNo) {
		return sqlSession.insert("calendar-mapper.workStart", mNo);
	}

	public HashMap<String, String> selectCom(SqlSessionTemplate sqlSession, int mNo) {
		return sqlSession.selectOne("calendar-mapper.selectTime", mNo);
	}

	public int updateCom(SqlSessionTemplate sqlSession, int comNo) {
		return sqlSession.update("calendar-mapper.updateCom", comNo);
	}

}
