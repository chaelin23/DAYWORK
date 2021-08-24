package com.kh.DAYWORK.collabo.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.DAYWORK.board.model.vo.Board;
import com.kh.DAYWORK.collabo.model.dao.CollaboDAO;
import com.kh.DAYWORK.collabo.model.vo.Collabo;
import com.kh.DAYWORK.collabo.model.vo.Feedback;

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

	public void updateCollabo(Collabo co) {
		cDAO.updateCollaboB(sqlSession, co);
		
		cDAO.updateCollaboC(sqlSession, co);
		
	}

	public ArrayList<Collabo> selectCollaboCate(Collabo co) {
		ArrayList<Collabo> cList = new ArrayList<Collabo>();
		String cBctNo = co.getcBctNo();
		String cMNo = co.getcMNo() + "";
		
		if(!cMNo.equals("") && cBctNo.equals("")) {
			cList = cDAO.selectCateCMNo(sqlSession, cMNo);
		} else if(cMNo.equals("0")){
			cList = cDAO.selectCateCBctNo(sqlSession, cBctNo);
		}
		
		
		return cList;
	}

	public int insertFeedback(Feedback fb) {
//		int fCNo = fb.getfCNo();
//		Collabo c = cDAO.selcetCollabo(sqlSession, fCNo);
//		if(c.getFbStatus().equals('N')){
//		}
		int updateResult = 0;
		int result = 0;
		updateResult = cDAO.updateFBStatus(sqlSession, fb);
		if(updateResult > 0) {
			result = cDAO.insertFeedback(sqlSession, fb);
		}
		return result;
	}

	public ArrayList<Feedback> selectFeedback(int fCNo) {
		return cDAO.selectFeedback(sqlSession, fCNo);
	}


}
