package com.kh.DAYWORK.member.model.vo;

import java.sql.Date;

public class Member {
	private int mNo;
	private String mPwd;
	private String mName;
	private String mGender;
	private Date mBirthDay;
	private String mPhone;
	private String mEmail;
	private String mAddress;
	private Date mEntDate;
	private Date mHireDate;
	private String mStatus;
	private int mAdmin;
	private String jName;
	private String dName;

	public Member() {}
	
	public Member(int mNo, String mPwd) {
		super();
		this.mNo = mNo;
		this.mPwd = mPwd;
	}

	public Member(int mNo, String mPwd, String mName, String mGender, Date mBirthDay, String mPhone, String mEmail,
			String mAddress, Date mEntDate, Date mHireDate, String mStatus, int mAdmin, String jName, String dName) {
		super();
		this.mNo = mNo;
		this.mPwd = mPwd;
		this.mName = mName;
		this.mGender = mGender;
		this.mBirthDay = mBirthDay;
		this.mPhone = mPhone;
		this.mEmail = mEmail;
		this.mAddress = mAddress;
		this.mEntDate = mEntDate;
		this.mHireDate = mHireDate;
		this.mStatus = mStatus;
		this.mAdmin = mAdmin;
		this.jName = jName;
		this.dName = dName;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getmPwd() {
		return mPwd;
	}

	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmGender() {
		return mGender;
	}

	public void setmGender(String mGender) {
		this.mGender = mGender;
	}

	public Date getmBirthDay() {
		return mBirthDay;
	}

	public void setmBirthDay(Date mBirthDay) {
		this.mBirthDay = mBirthDay;
	}

	public String getmPhone() {
		return mPhone;
	}

	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	public Date getmEntDate() {
		return mEntDate;
	}

	public void setmEntDate(Date mEntDate) {
		this.mEntDate = mEntDate;
	}

	public Date getmHireDate() {
		return mHireDate;
	}

	public void setmHireDate(Date mHireDate) {
		this.mHireDate = mHireDate;
	}

	public String getmStatus() {
		return mStatus;
	}

	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}

	public int getmAdmin() {
		return mAdmin;
	}

	public void setmAdmin(int mAdmin) {
		this.mAdmin = mAdmin;
	}

	public String getjName() {
		return jName;
	}

	public void setjName(String jName) {
		this.jName = jName;
	}

	public String getdName() {
		return dName;
	}

	public void setdName(String dName) {
		this.dName = dName;
	}

	@Override
	public String toString() {
		return "Member [mNo=" + mNo + ", mPwd=" + mPwd + ", mName=" + mName + ", mGender=" + mGender + ", mBirthDay="
				+ mBirthDay + ", mPhone=" + mPhone + ", mEmail=" + mEmail + ", mAddress=" + mAddress + ", mEntDate="
				+ mEntDate + ", mHireDate=" + mHireDate + ", mStatus=" + mStatus + ", mAdmin=" + mAdmin + ", jName="
				+ jName + ", dName=" + dName + "]";
	}

	
	
}
