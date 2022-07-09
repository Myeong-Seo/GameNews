package com.mprj;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date; 
import java.util.TimeZone;
import java.text.DateFormat;


public class _SubContentDAO {
	private static _SubContentDAO dao = new _SubContentDAO();
    
	private _SubContentDAO() {}
    
	public static _SubContentDAO getInstance() {return dao;}
    
	/////////////////////////////////////////////////
    
    
	public int insertSubContentTable(_SubContentVO subcontentObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    	Date time1 = new Date();
    	
    	try {
    		String sql = "insert into SubContentTable value = (?,?,?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, subcontentObj.getUserId());
    		pstmt.setString(2, subcontentObj.getSubContent());
    		pstmt.setString(3, format1.format(time1));
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("SubContentTable insert ����ȵ�");
    	}
    	return resultCount;
    }
    
	public int updateSubContentTable(_SubContentVO subcontentObj, Connection conn) {
    	
        int resultCount = 0;
    	
    	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    	Date time1 = new Date();
    	
    	try {
    		String sql = "update SubContentTable set SubContent = ?, SubContentDate = ? where =(UserId = ?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, subcontentObj.getSubContent());
    		pstmt.setString(2, format1.format(time1));
    		pstmt.setString(3, subcontentObj.getUserId());
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("SubContentTable update ����ȵ�");
    	}
    	return resultCount;
    }

	public int deleteSubContentTable(_SubContentVO subcontentObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "delete from SubContentTable where(UserId = ?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, subcontentObj.getUserId());
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("SubContentTable delete ����ȵ�");
    	}
	    return resultCount;
	}
    
    
}
