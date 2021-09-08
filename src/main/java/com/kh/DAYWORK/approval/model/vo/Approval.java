package com.kh.DAYWORK.approval.model.vo;

import java.sql.Date;

public class Approval {

	private int apNo;
	private String apKeep;
	private Date apDate;
	private int apReceiver;
	private int apSender;
	private String apStatus;
	private String apCate;
	
	
	public Approval(){}
	
	public Approval(int apNo, String apKeep, Date apDate, int apReceiver, int apSender, String apStatus,
			String apCate) {
		super();
		this.apNo = apNo;
		this.apKeep = apKeep;
		this.apDate = apDate;
		this.apReceiver = apReceiver;
		this.apSender = apSender;
		this.apStatus = apStatus;
		this.apCate = apCate;
	}

	public int getApNo() {
		return apNo;
	}

	public void setApNo(int apNo) {
		this.apNo = apNo;
	}

	public String getApKeep() {
		return apKeep;
	}

	public void setApKeep(String apKeep) {
		this.apKeep = apKeep;
	}

	public Date getApDate() {
		return apDate;
	}

	public void setApDate(Date apDate) {
		this.apDate = apDate;
	}

	public int getApReceiver() {
		return apReceiver;
	}

	public void setApReceiver(int apReceiver) {
		this.apReceiver = apReceiver;
	}

	public int getApSender() {
		return apSender;
	}

	public void setApSender(int apSender) {
		this.apSender = apSender;
	}

	public String getApStatus() {
		return apStatus;
	}

	public void setApStatus(String apStatus) {
		this.apStatus = apStatus;
	}

	public String getApCate() {
		return apCate;
	}

	public void setApCate(String apCate) {
		this.apCate = apCate;
	}

	@Override
	public String toString() {
		return "aprroval [apNo=" + apNo + ", apKeep=" + apKeep + ", apDate=" + apDate + ", apReceiver=" + apReceiver
				+ ", apSender=" + apSender + ", apStatus=" + apStatus + ", apCate=" + apCate + "]";
	}
}
