package com.kh.DAYWORK.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.DAYWORK.member.model.dao.MemberDAO;
import com.kh.DAYWORK.member.model.vo.Member;

@Service("mService")
public class MemberService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDAO mDAO;
	
	
	public int insertMember(Member m) {
		
		return mDAO.insertMember(sqlSession, m);
	}


	public Member loginMember(Member m) {
		return mDAO.loginMember(sqlSession, m);
	}


	public Member selectMno(Member m) {
		return mDAO.selectMno(sqlSession, m);
	}


	public Member selectMember(int selectMno) {
		return mDAO.selectMember(sqlSession, selectMno);
	}


//	public void insertProfile(Member m) {
//		int result = mDAO.insertProfile(sqlSession, m);
//		if(result > 0) {
//			updateMember(m);
//		}
//	}


	public int updateMember(Member m) {
		return mDAO.updateMember(sqlSession, m);
	}

}
