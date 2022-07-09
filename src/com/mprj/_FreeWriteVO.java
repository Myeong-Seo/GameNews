package com.mprj;

import java.text.SimpleDateFormat;
import java.util.Date;

public class _FreeWriteVO {
	
	private int BoardNum;
	private int BoardRef;
	private int BoardSeq;
	private String BoardWriter;
	private String BoardSubject;
	private String BoardContent;
	private int BoardHits;
	private String DelYn;
	private String UserId;
	private String InsDate;
	private String UpdUserId;
	private String UpdDate;
	
	public _FreeWriteVO(){}
	public _FreeWriteVO(int BoardNum, int BoardRef, int BoardSeq, String BoardWriter, String BoardSubject, String BoardContent, int BoardHits, String DelYn, String UserId, String InsDate, String UpdUserId, String UpdDate){            
		
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date time1 = new Date();
		Date time2 = new Date();
		
		
		this.BoardNum = BoardNum;
		this.BoardRef = BoardRef;
		this.BoardSeq = BoardSeq;
		this.BoardWriter = BoardWriter;
		this.BoardSubject = BoardSubject;
		this.BoardContent = BoardContent;
		this.BoardHits = BoardHits;
		this.DelYn = DelYn;
		this.UserId = UserId;
		this.InsDate = format1.format(time1);
		this.UpdUserId = UpdUserId;
		this.UpdDate = format1.format(time2);
		
	}
	
	public int getBoardNum() {
		return BoardNum;
	}
	public void setBoardNum(int boardNum) {
		BoardNum = boardNum;
	}
	public int getBoardRef() {
		return BoardRef;
	}
	public void setBoardRef(int boardRef) {
		BoardRef = boardRef;
	}
	public int getBoardSeq() {
		return BoardSeq;
	}
	public void setBoardSeq(int boardSeq) {
		BoardSeq = boardSeq;
	}
	public String getBoardWriter() {
		return BoardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		BoardWriter = boardWriter;
	}
	public String getBoardSubject() {
		return BoardSubject;
	}
	public void setBoardSubject(String boardSubject) {
		BoardSubject = boardSubject;
	}
	public String getBoardContent() {
		return BoardContent;
	}
	public void setBoardContent(String boardContent) {
		BoardContent = boardContent;
	}
	public int getBoardHits() {
		return BoardHits;
	}
	public void setBoardHits(int boardHits) {
		BoardHits = boardHits;
	}
	public String getDelYn() {
		return DelYn;
	}
	public void setDelYn(String delYn) {
		DelYn = delYn;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getInsDate() {
		return InsDate;
	}
	public void setInsDate(String insDate) {
		InsDate = insDate;
	}
	public String getUpdUserId() {
		return UpdUserId;
	}
	public void setUpdUserId(String updUserId) {
		UpdUserId = updUserId;
	}
	public String getUpdDate() {
		return UpdDate;
	}
	public void setUpdDate(String updDate) {
		UpdDate = updDate;
	}

	
	
}
