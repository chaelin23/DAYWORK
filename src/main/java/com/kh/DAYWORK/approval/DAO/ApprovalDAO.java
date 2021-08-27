package com.kh.DAYWORK.approval.DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.DAYWORK.approval.model.vo.ApprovalForm;

@Repository("aDAO")
public class ApprovalDAO {

	public ApprovalForm selectApForm(SqlSessionTemplate sqlSession, String title) {
		return sqlSession.selectOne("approval-mapper.selectApForm",title);
	}

	public int insertAp(SqlSessionTemplate sqlSession, int apNo) {
		return sqlSession.insert("approval-mapper.insertAp",apNo);
	}

}
