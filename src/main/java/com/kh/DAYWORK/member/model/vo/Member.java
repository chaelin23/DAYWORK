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
	private String jCode;
	private String dCode;
	private String originalFileName;
	private String renameFileName;

	public Member() {}
	
	public Member(int mNo, String mPwd) {
		super();
		this.mNo = mNo;
		this.mPwd = mPwd;
	}
	
	public Member(int mNo, String mPwd, String mName, String mGender, Date mBirthDay, String mPhone, String mEmail,
			String mAddress, Date mEntDate, Date mHireDate, String mStatus, int mAdmin, String jCode, String dCode,
			String originalFileName, String renameFileName) {
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
		this.jCode = jCode;
		this.dCode = dCode;
		this.originalFileName = originalFileName;
		this.renameFileName = renameFileName;
	}

	public Member(int mNo, String mPwd, String mName, String mGender, Date mBirthDay, String mPhone, String mEmail,
			String mAddress, Date mEntDate, Date mHireDate, String mStatus, int mAdmin, String jCode, String dCode) {
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
		this.jCode = jCode;
		this.dCode = dCode;
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

	public String getjCode() {
		return jCode;
	}

	public void setjCode(String jCode) {
		this.jCode = jCode;
	}

	public String getdCode() {
		return dCode;
	}

	public void setdCode(String dCode) {
		this.dCode = dCode;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getRenameFileName() {
		return renameFileName;
	}

	public void setRenameFileName(String renameFileName) {
		this.renameFileName = renameFileName;
	}

	@Override
	public String toString() {
		return "Member [mNo=" + mNo + ", mPwd=" + mPwd + ", mName=" + mName + ", mGender=" + mGender + ", mBirthDay="
				+ mBirthDay + ", mPhone=" + mPhone + ", mEmail=" + mEmail + ", mAddress=" + mAddress + ", mEntDate="
				+ mEntDate + ", mHireDate=" + mHireDate + ", mStatus=" + mStatus + ", mAdmin=" + mAdmin + ", jCode="
				+ jCode + ", dCode=" + dCode + ", originalFileName=" + originalFileName + ", renameFileName="
				+ renameFileName + "]";
	}
	
	
}
