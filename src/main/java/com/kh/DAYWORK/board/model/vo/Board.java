package com.kh.DAYWORK.board.model.vo;

import java.sql.Date;

public class Board {
	private int bNo;
	private String bDept;
	private String bTitle;
	private String bContent;
	private Date bCreateDate;
	private Date bModifyDate;
	private int bCount;
	private String bType;
	private String bStatus;
	private int bMNo;
	private String mName;
<<<<<<< HEAD
=======
	private String originalFileName;
	private String renameFileName;
>>>>>>> 3559d9fa76a6a791d82a19fa75c998503e76f69a
	
	public Board() {}

	public Board(int bNo, String bDept, String bTitle, String bContent, Date bCreateDate, Date bModifyDate, int bCount,
<<<<<<< HEAD
			String bType, String bStatus, int bMNo, String mName) {
=======
			String bType, String bStatus, int bMNo, String mName, String originalFileName, String renameFileName) {
>>>>>>> 3559d9fa76a6a791d82a19fa75c998503e76f69a
		super();
		this.bNo = bNo;
		this.bDept = bDept;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bCreateDate = bCreateDate;
		this.bModifyDate = bModifyDate;
		this.bCount = bCount;
		this.bType = bType;
		this.bStatus = bStatus;
		this.bMNo = bMNo;
		this.mName = mName;
<<<<<<< HEAD
=======
		this.originalFileName = originalFileName;
		this.renameFileName = renameFileName;
>>>>>>> 3559d9fa76a6a791d82a19fa75c998503e76f69a
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getbDept() {
		return bDept;
	}

	public void setbDept(String bDept) {
		this.bDept = bDept;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public Date getbCreateDate() {
		return bCreateDate;
	}

	public void setbCreateDate(Date bCreateDate) {
		this.bCreateDate = bCreateDate;
	}

	public Date getbModifyDate() {
		return bModifyDate;
	}

	public void setbModifyDate(Date bModifyDate) {
		this.bModifyDate = bModifyDate;
	}

<<<<<<< HEAD
	public String getbStatus() {
		return bStatus;
	}

	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

=======
>>>>>>> 3559d9fa76a6a791d82a19fa75c998503e76f69a
	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public String getbType() {
		return bType;
	}

	public void setbType(String bType) {
		this.bType = bType;
	}

<<<<<<< HEAD
=======
	public String getbStatus() {
		return bStatus;
	}

	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}

>>>>>>> 3559d9fa76a6a791d82a19fa75c998503e76f69a
	public int getbMNo() {
		return bMNo;
	}

	public void setbMNo(int bMNo) {
		this.bMNo = bMNo;
	}
<<<<<<< HEAD
=======

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
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
>>>>>>> 3559d9fa76a6a791d82a19fa75c998503e76f69a

	@Override
	public String toString() {
		return "Board [bNo=" + bNo + ", bDept=" + bDept + ", bTitle=" + bTitle + ", bContent=" + bContent
				+ ", bCreateDate=" + bCreateDate + ", bModifyDate=" + bModifyDate + ", bCount=" + bCount + ", bType="
<<<<<<< HEAD
				+ bType + ", bStatus=" + bStatus + ", bMNo=" + bMNo + ", mName=" + mName + "]";
	}
	
=======
				+ bType + ", bStatus=" + bStatus + ", bMNo=" + bMNo + ", mName=" + mName + ", originalFileName="
				+ originalFileName + ", renameFileName=" + renameFileName + "]";
	}
	
	
>>>>>>> 3559d9fa76a6a791d82a19fa75c998503e76f69a
}
