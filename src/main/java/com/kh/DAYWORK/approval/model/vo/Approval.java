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
	private String apTitle;
	private String apContent;
	private String apLine;
	private String apUpdate;
	private String apCtitle;
	
	
	public Approval(){}


	public Approval(int apNo, String apKeep, Date apDate, int apReceiver, int apSender, String apStatus, String apCate,
			String apTitle, String apContent, String apLine, String apUpdate, String apCtitle) {
		super();
		this.apNo = apNo;
		this.apKeep = apKeep;
		this.apDate = apDate;
		this.apReceiver = apReceiver;
		this.apSender = apSender;
		this.apStatus = apStatus;
		this.apCate = apCate;
		this.apTitle = apTitle;
		this.apContent = apContent;
		this.apLine = apLine;
		this.apUpdate = apUpdate;
		this.apCtitle = apCtitle;
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


	public String getApTitle() {
		return apTitle;
	}


	public void setApTitle(String apTitle) {
		this.apTitle = apTitle;
	}


	public String getApContent() {
		return apContent;
	}


	public void setApContent(String apContent) {
		this.apContent = apContent;
	}


	public String getApLine() {
		return apLine;
	}


	public void setApLine(String apLine) {
		this.apLine = apLine;
	}


	public String getApUpdate() {
		return apUpdate;
	}


	public void setApUpdate(String apUpdate) {
		this.apUpdate = apUpdate;
	}


	public String getApCtitle() {
		return apCtitle;
	}


	public void setApCtitle(String apCtitle) {
		this.apCtitle = apCtitle;
	}


	@Override
	public String toString() {
		return "Approval [apNo=" + apNo + ", apKeep=" + apKeep + ", apDate=" + apDate + ", apReceiver=" + apReceiver
				+ ", apSender=" + apSender + ", apStatus=" + apStatus + ", apCate=" + apCate + ", apTitle=" + apTitle
				+ ", apContent=" + apContent + ", apLine=" + apLine + ", apUpdate=" + apUpdate + ", apCtitle="
				+ apCtitle + "]";
	}


	


	
	

}
