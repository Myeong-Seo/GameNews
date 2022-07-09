package com.mprj;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date; 
import java.util.TimeZone;
import java.text.DateFormat;


public class _DebateWriteDAO {
	private static _DebateWriteDAO dao = new _DebateWriteDAO();
    
	private _DebateWriteDAO() {}
    
	public static _DebateWriteDAO getInstance() {return dao;}
    
	/////////////////////////////////////////////////
    
    
    //  �� insert, update, delete ���� �ϰ� �����
	public int insertDebateWriteTable(_DebateWriteVO debatewriteObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
      //SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    	Date time1 = new Date();
    	Date time2 = new Date();
    	
    	try {
    		String sql = "insert into DebateWriteTable value(?,?,?,?,?,?,?,?,?,?,?,?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setInt(1, debatewriteObj.getBoardNum());
    		pstmt.setInt(2, debatewriteObj.getBoardRef());
    		pstmt.setInt(3, debatewriteObj.getBoardSeq());
    		pstmt.setString(4, debatewriteObj.getBoardWriter());
    		pstmt.setString(5, debatewriteObj.getBoardSubject());
    		pstmt.setString(6, debatewriteObj.getBoardContent());
    		pstmt.setInt(7, debatewriteObj.getBoardHits());
    		pstmt.setString(8,  debatewriteObj.getDelYn());
    		pstmt.setString(9, debatewriteObj.getUserId());
    		pstmt.setString(10, format1.format(time1));
    		pstmt.setString(11, debatewriteObj.getUpdUserId());
    		pstmt.setString(12, format1.format(time2));
    		
    		resultCount = pstmt.executeUpdate();
     	    
     	    pstmt.close();
        }
    	catch(SQLException e) {
    		System.out.println("DebateWirteTable insert 안됨");
    	}
    	return resultCount;
    }
    
	public int updateDebateWriteTable(_DebateWriteVO debatewriteObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        //SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
      	Date time1 = new Date();
      	try {
      		String sql = "update DebateWriteTable set BoardContent = ?, UpdUserId = ?, UpdDate = ? where (BoardNum = ?)";
      		PreparedStatement pstmt = conn.prepareStatement(sql);
      		
    		pstmt.setString(1, debatewriteObj.getBoardContent());
    		pstmt.setString(2, debatewriteObj.getUpdUserId());
    		pstmt.setString(3, format1.format(time1));
    		pstmt.setInt(4, debatewriteObj.getBoardNum());
      		
    		resultCount = pstmt.executeUpdate();
     	    
     	    pstmt.close();
      	}
      	catch(SQLException e) {
      		System.out.println("DebateWirteTable update ����ȵ�");
      	}
      	return resultCount;
    }
    
	public int deleteDebateWriteTable(_DebateWriteVO debatewriteObj, Connection conn) {
    	
    	int resultCount = 0;
    	try {
    	String sql = "delete from DebateWriteTable where (BoardNum = ?)";
    	PreparedStatement pstmt = conn.prepareStatement(sql);
    	pstmt.setInt(1, debatewriteObj.getBoardNum());
		
		resultCount = pstmt.executeUpdate();
		
		pstmt.close();
    	
    	
    	}
    	catch(SQLException e) {
    		System.out.println("DebateWirteTable delete ����ȵ�");
    	}
    	return resultCount;
    }
      
}
