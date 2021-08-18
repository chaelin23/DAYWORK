package com.kh.DAYWORK.collabo.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.DAYWORK.board.model.vo.Board;
import com.kh.DAYWORK.collabo.model.dao.CollaboDAO;
import com.kh.DAYWORK.collabo.model.vo.Collabo;

@Service("cService")
public class CollaboService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private CollaboDAO cDAO;

	public int insertCollabo(Collabo co, Board bo) {
		int result = cDAO.insertCollaboB(sqlSession, bo);
		int bNo = cDAO.selectBNo(sqlSession, bo);
		co.setcBNo(bNo);
		if(result > 0) {
			result = cDAO.insertCollaboC(sqlSession, co);
		}
		return result;
		
	}

	public ArrayList<Collabo> selectListC(String mName) {
		return cDAO.selectListC(sqlSession, mName);
	}

	public int updateBtn(Collabo co) {
		return cDAO.updateBtn(sqlSession, co);
	}


}
