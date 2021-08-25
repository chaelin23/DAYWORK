package com.kh.DAYWORK.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.DAYWORK.member.model.vo.Member;

@Repository("mDAO")
public class MemberDAO {

	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("member-mapper.insertMembers", m);
	}

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("member-mapper.loginMember", m);
	}

	public Member selectMno(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("member-mapper.selectMno", m);
	}

	public Member selectMember(SqlSessionTemplate sqlSession, int selectMno) {
		return sqlSession.selectOne("member-mapper.selectMember", selectMno);
	}

	public int insertProfile(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("member-mapper.insertProfile", m);
	}

	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
//		int result = 0;
//		int result2 = 0;
		return sqlSession.update("member-mapper.updateMember", m);
//		if(result > 0) {
//			result2 = sqlSession.update("member-mapper.updateProfile", m);
//		}
//		
//		return result + result2;
	}

}
