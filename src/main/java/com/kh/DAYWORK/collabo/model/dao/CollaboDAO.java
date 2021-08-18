package com.kh.DAYWORK.collabo.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.DAYWORK.board.model.vo.Board;
import com.kh.DAYWORK.collabo.model.vo.Collabo;

@Repository("cDAO")
public class CollaboDAO {

	public int insertCollaboB(SqlSessionTemplate sqlSession, Board bo) {
		return sqlSession.insert("collabo-mapper.insertBoardC", bo);
	}
	
	public int selectBNo(SqlSessionTemplate sqlSession, Board bo) {
		return sqlSession.selectOne("collabo-mapper.selectBNo", bo);
	}

	public int insertCollaboC(SqlSessionTemplate sqlSession, Collabo co) {
		return sqlSession.insert("collabo-mapper.insertCollabo", co);
	}

	public ArrayList<Collabo> selectListC(SqlSessionTemplate sqlSession, String mName) {
		String mName2 = "%"+mName+"%";
		return (ArrayList)sqlSession.selectList("collabo-mapper.selectListC", mName2);
	}

//	public ArrayList<Collabo> selectListB(SqlSessionTemplate sqlSession) {
//		return (ArrayList)sqlSession.selectList("collabo-mapper.selectListB");
//	}

	

}
