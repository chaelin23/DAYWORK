package com.kh.DAYWORK.calendar.model.vo;

import java.sql.Date;

public class Commute {
	private int comNo;
	private Date comStart;
	private Date comEnd;
	private String comVac;
	private String comStatus;
	private int mNo;
	
	public Commute() {
		
	}
	
	public Commute(int comNo, Date comStart, Date comEnd, String comVac, String comStatus, int mNo) {
		super();
		this.comNo = comNo;
		this.comStart = comStart;
		this.comEnd = comEnd;
		this.comVac = comVac;
		this.comStatus = comStatus;
		this.mNo = mNo;
	}

	public int getComNo() {
		return comNo;
	}

	public void setComNo(int comNo) {
		this.comNo = comNo;
	}

	public Date getComStart() {
		return comStart;
	}

	public void setComStart(Date comStart) {
		this.comStart = comStart;
	}

	public Date getComEnd() {
		return comEnd;
	}

	public void setComEnd(Date comEnd) {
		this.comEnd = comEnd;
	}

	public String getComVac() {
		return comVac;
	}

	public void setComVac(String comVac) {
		this.comVac = comVac;
	}

	public String getComStatus() {
		return comStatus;
	}

	public void setComStatus(String comStatus) {
		this.comStatus = comStatus;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	@Override
	public String toString() {
		return "Commute [comNo=" + comNo + ", comStart=" + comStart + ", comEnd=" + comEnd + ", comVac=" + comVac
				+ ", comStatus=" + comStatus + ", mNo=" + mNo + "]";
	}
	
	
	
	
}
