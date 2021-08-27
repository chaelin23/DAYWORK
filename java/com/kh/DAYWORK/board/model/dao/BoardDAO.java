package com.kh.DAYWORK.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.DAYWORK.board.model.vo.Board;
import com.kh.DAYWORK.common.BMsgFile;

@Repository("bDAO")
public class BoardDAO {

	public int getListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("board-mapper.getListCount");
	}

	public ArrayList<Board> selectBList(SqlSessionTemplate sqlSession, int currentPage) {
		return (ArrayList)sqlSession.selectList("board-mapper.selectBList", currentPage);
	}

	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("board-mapper.insertBoard", b);
	}
	
	public int selectBNo(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("board-mapper.selectBNo");
	}

	public int insertFile(SqlSessionTemplate sqlSession, ArrayList<BMsgFile> fileList) {
		
		int result = 0;
		for(BMsgFile f : fileList) {
			result += sqlSession.insert("board-mapper.insertFile", f);
		}
		
		return result;
	}

	public int plusCount(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.insert("board-mapper.plusCount", bNo);
	}

	public Board selectBoard(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("board-mapper.selectBoard", bNo);
	}

	public ArrayList<BMsgFile> selectFile(SqlSessionTemplate sqlSession, int bNo) {
		return (ArrayList)sqlSession.selectList("board-mapper.selectFile", bNo);
	}

	public int updateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("board-mapper.updateBoard", b);
	}

	public int deleteFile(SqlSessionTemplate sqlSession, String[] beforeFile) {
		
		int result = 0;
		for(String f : beforeFile) {
			result += sqlSession.delete("board-mapper.deleteFile", f);
		}
		
		return result;
	}


}
