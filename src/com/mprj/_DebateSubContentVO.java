package com.mprj;

import java.text.SimpleDateFormat;
import java.util.Date;

public class _DebateSubContentVO {
	
	private String UserId;
	private String SubContent;
	private String SubContentDate;
	
	public _DebateSubContentVO(){}
	public _DebateSubContentVO(String UserId, String SubContent, String SubContentDate){
		
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    	Date time1 = new Date();
		
		this.UserId = UserId;
		this.SubContent = SubContent;
		this.SubContentDate = format1.format(time1);
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getSubContent() {
		return SubContent;
	}
	public void setSubContent(String subContent) {
		SubContent = subContent;
	}
	public String getSubContentDate() {
		return SubContentDate;
	}
	public void setSubContentDate(String subContentDate) {
		SubContentDate = subContentDate;
	}
	
	
	
	

}
