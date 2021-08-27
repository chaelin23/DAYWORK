package com.kh.DAYWORK.approval.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.DAYWORK.approval.DAO.ApprovalDAO;
import com.kh.DAYWORK.approval.model.vo.ApprovalForm;

@Service("aService")
public class ApprovalService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ApprovalDAO aDAO;

	public ApprovalForm selectApForm(String title) {
		
		return aDAO.selectApForm(sqlSession, title);
	}

	public int insertAp(int apNo) {
		return aDAO.insertAp(sqlSession, apNo);
	}

	
	
}
