package com.kh.DAYWORK.address.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.DAYWORK.address.model.vo.Address;
import com.kh.DAYWORK.address.model.vo.PageInfo;
import com.kh.DAYWORK.member.model.vo.Member;

@Repository
public class AddressDAO {

//	public ArrayList<Address> selectAddress(SqlSessionTemplate sqlSession, PageInfo pi, int mNo) {
//		
//		int offset = pi.getBoardLimit() * (pi.getCurrentPage() - 1);
//		RowBounds row = new RowBounds(offset, pi.getBoardLimit());
//
//		return (ArrayList)sqlSession.selectList("address-mapper.selectAddress", mNo, row);
//	}

	public int getListCount(SqlSessionTemplate sqlSession, int getmNo) {
		return sqlSession.selectOne("address-mapper.getListCount", getmNo);
	}

	public Address detailAddress(SqlSessionTemplate sqlSession, Integer aNo) {
		return sqlSession.selectOne("address-mapper.detailAddress", aNo);
	}

	public int deleteAddress(SqlSessionTemplate sqlSession, String[] list) {
		int result = 0;
		
		for(int i = 0 ; i < list.length ; i++) {
			result += sqlSession.update("address-mapper.deleteAddress", list[i]);
		}
		
		return result;
	}

	public int insertAddress(SqlSessionTemplate sqlSession, Address a) {
		return sqlSession.insert("address-mapper.insertAddress", a);
	}

	public int updateAddress(SqlSessionTemplate sqlSession, Address a) {
		return sqlSession.update("address-mapper.updateAddress", a);
	}

	public ArrayList<Address> searchAddress(SqlSessionTemplate sqlSession, PageInfo pi, HashMap map) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds row = new RowBounds(offset, pi.getBoardLimit()); 
		
		return (ArrayList)sqlSession.selectList("address-mapper.searchList", map, row);
	}

	public int getSearchListCount(SqlSessionTemplate sqlSession, HashMap map) {
		return sqlSession.selectOne("address-mapper.getSearchListCount", map);
	}

//	public int getListCount2(SqlSessionTemplate sqlSession) {
//		return sqlSession.selectOne("address-mapper.getListCount2");
//	}

//	public ArrayList<Address> selectAddress2(SqlSessionTemplate sqlSession, PageInfo pi) {
//		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
//		RowBounds row = new RowBounds(offset, pi.getBoardLimit()); 
//		
//		return (ArrayList)sqlSession.selectList("address-mapper.selectAddress2", null, row);
//	}

	public Member detailMember(SqlSessionTemplate sqlSession, Integer mNo) {
		return sqlSession.selectOne("address-mapper.detailMember", mNo);
	}

	/////////////////////
	public int getListCount(SqlSessionTemplate sqlSession, HashMap map) {
		return sqlSession.selectOne("address-mapper.getListCount", map);
	}

	public ArrayList<Address> selectAddress(SqlSessionTemplate sqlSession, PageInfo pi, HashMap map) {
		int offset = pi.getBoardLimit() * (pi.getCurrentPage() - 1);
		RowBounds row = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("address-mapper.selectAddress", map, row);
	}

	public int getListCount2(SqlSessionTemplate sqlSession, HashMap map) {
		return sqlSession.selectOne("address-mapper.getListCount2", map);
	}

	public ArrayList<Address> selectAddress2(SqlSessionTemplate sqlSession, PageInfo pi, HashMap map) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds row = new RowBounds(offset, pi.getBoardLimit()); 
		return (ArrayList)sqlSession.selectList("address-mapper.selectAddress2", map, row);
	}

}
