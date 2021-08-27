package com.kh.DAYWORK.address.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.DAYWORK.address.model.dao.AddressDAO;
import com.kh.DAYWORK.address.model.vo.Address;
import com.kh.DAYWORK.address.model.vo.PageInfo;
import com.kh.DAYWORK.member.model.vo.Member;

@Service
public class AddressService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private AddressDAO aDAO = new AddressDAO();
	
//	public ArrayList<Address> selectAddress(PageInfo pi, int mNo) {
//		return aDAO.selectAddress(sqlSession, pi, mNo);
//	}

//	public int getListCount(int getmNo) {
//		return aDAO.getListCount(sqlSession, getmNo);
//	}

	public Address detailAddress(Integer aNo) {
		return aDAO.detailAddress(sqlSession, aNo);
	}

	public int deleteAddress(String[] list) {
		return aDAO.deleteAddress(sqlSession, list);
	}

	public int insertAddress(Address a) {
		return aDAO.insertAddress(sqlSession, a);
	}

	public int updateAddress(Address a) {
		return aDAO.updateAddress(sqlSession, a);
	}

	public ArrayList<Address> searchAddress(PageInfo pi, HashMap map) {
		return aDAO.searchAddress(sqlSession, pi, map);
	}

//	public int getListCount(HashMap map) {
//		return aDAO.getSearchListCount(sqlSession, map);
//	}

//	public int getListCount2() {
//		return aDAO.getListCount2(sqlSession);
//	}

//	public ArrayList<Address> selectAddress2(PageInfo pi) {
//		return aDAO.selectAddress2(sqlSession, pi);
//	}

	public Member detailMember(Integer mNo) {
		return aDAO.detailMember(sqlSession, mNo);
	}
	
	public int getListCount(HashMap map) {
		return aDAO.getListCount(sqlSession, map);
	}

	public ArrayList<Address> selectAddress(PageInfo pi, HashMap map) {
		return aDAO.selectAddress(sqlSession, pi, map);
	}

	public int getListCount2(HashMap map) {
		return aDAO.getListCount2(sqlSession, map);
	}

	public ArrayList<Address> selectAddress2(PageInfo pi, HashMap map) {
		return aDAO.selectAddress2(sqlSession, pi, map);
	}


}
