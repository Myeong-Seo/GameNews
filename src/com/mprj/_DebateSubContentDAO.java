package com.mprj;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date; 
import java.util.TimeZone;
import java.text.DateFormat;


public class _DebateSubContentDAO {
	private static _DebateSubContentDAO dao = new _DebateSubContentDAO();
    
	private _DebateSubContentDAO() {}
    
	public static _DebateSubContentDAO getInstance() {return dao;}
    
	/////////////////////////////////////////////////
    
	public int insertDebateSubContentTable(_DebateSubContentVO debatesubcontentObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    	Date time1 = new Date();
    	
    	try {
    		String sql = "insert into DebateSubContentTable value = (?,?,?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, debatesubcontentObj.getUserId());
    		pstmt.setString(2, debatesubcontentObj.getSubContent());
    		pstmt.setString(3, format1.format(time1));
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("DebateSubContentTable insert ����ȵ�");
    	}
    	return resultCount;
    }
 
	public int updateDebateSubContentTable(_DebateSubContentVO debatesubcontentObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    	Date time1 = new Date();
    	
    	try {
    		String sql = "update DebateSubContentTable set SubContent = ?, SubContentDate = ? where(UserId = ?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, debatesubcontentObj.getSubContent());
    		pstmt.setString(2, format1.format(time1));
    		pstmt.setString(3, debatesubcontentObj.getUserId());
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("DebateSubContentTable update ����ȵ�");
    	}
    	return resultCount;
    }
    
	public int deleteDebateSubContentTable(_DebateSubContentVO debatesubcontentObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "delete from DebateSubContentTable where(UserId = ?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, debatesubcontentObj.getUserId());
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("DebateSubContentTable delete ����ȵ�");
    	}
    	return resultCount;
    }
    
}
