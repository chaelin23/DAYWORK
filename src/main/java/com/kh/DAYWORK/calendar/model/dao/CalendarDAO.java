package com.kh.DAYWORK.calendar.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.DAYWORK.calendar.model.vo.Calendar;

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

}
