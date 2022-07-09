package com.mprj;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date; 
import java.util.TimeZone;
import java.text.DateFormat;


public class _FreeWriteDAO {
	private static _FreeWriteDAO dao = new _FreeWriteDAO();
    
	private _FreeWriteDAO() {}
    
	public static _FreeWriteDAO getInstance() {return dao;}
    
	/////////////////////////////////////////////////
    
	public int insertFreeWriteTable(_FreeWriteVO freewriteObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    	Date time1 = new Date();
    	Date time2 = new Date();
    	
    	try {
    		String sql = "insert into FreeWriteTable value =(?,?,?,?,?,?,?,?,?,?,?,?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setInt(1, freewriteObj.getBoardNum());
    		pstmt.setInt(2, freewriteObj.getBoardRef());
    		pstmt.setInt(3, freewriteObj.getBoardSeq());
    		pstmt.setString(4, freewriteObj.getBoardWriter());
    		pstmt.setString(5, freewriteObj.getBoardSubject());
    		pstmt.setString(6, freewriteObj.getBoardContent());
    		pstmt.setInt(7, freewriteObj.getBoardHits());
    		pstmt.setString(8, freewriteObj.getDelYn());
    		pstmt.setString(9, freewriteObj.getUserId());
    		pstmt.setString(10, format1.format(time1));
    		pstmt.setString(11, freewriteObj.getUpdUserId());
    		pstmt.setString(12, format1.format(time2));
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("FreeWriteTable insert ����ȵ�");
    	}
    	return resultCount;
    }
    
	public int updateFreeWriteTable(_FreeWriteVO freewriteObj, Connection conn) {
        
    	int resultCount = 0;
    	
    	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    	Date time1 = new Date();
    	
    	try {
    		String sql = "update FreeWriteTable value set BoardContent = ?, UpdUserId = ?, UpdDate = ? where(BoardNum = ?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, freewriteObj.getBoardContent());
    		pstmt.setString(2, freewriteObj.getUpdUserId());
    		pstmt.setString(3, format1.format(time1));
    		pstmt.setInt(4, freewriteObj.getBoardNum());
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("FreeWriteTable update ����ȵ�");
    	}
    	return resultCount;
    }
    
	public  int deleteFreeWriteTable(_FreeWriteVO freewriteObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "delete from FreeWriteTable where(BoardNum = ?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setInt(1, freewriteObj.getBoardNum());
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("FreeWriteTable delete ����ȵ�");
    	}
    	return resultCount;
    }
    
    
    
}
