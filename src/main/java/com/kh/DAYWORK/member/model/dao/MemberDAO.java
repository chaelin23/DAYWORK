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

}
