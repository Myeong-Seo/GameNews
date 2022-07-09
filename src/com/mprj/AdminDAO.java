package com.mprj;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import java.text.DateFormat;


public class AdminDAO {
	private static AdminDAO dao = new AdminDAO();
    
	public AdminDAO() {}
    
	public static AdminDAO getInstance() {return dao;}
    
	/////////////////////////////////////////////////
    
    // insert user, Admin �Ѵ� (ȸ�����Խ�)
    
	public int insertAdminTable(AdminVO adminObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "insert into AdminTable values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, adminObj.getAdminId());
    		pstmt.setString(2, adminObj.getAdminPwd());
    		pstmt.setString(3, adminObj.getAdminPwdCheck());
    		pstmt.setString(4, adminObj.getAdminName());
    		pstmt.setString(5, adminObj.getAdminRegNum1());
    		pstmt.setString(6, adminObj.getAdminRegNum2());
    		pstmt.setString(7, adminObj.getAdminPhoneNumber1());
    		pstmt.setString(8, adminObj.getAdminPhoneNumber2());
    		pstmt.setString(9, adminObj.getAdminPhoneNumber3());
    		pstmt.setString(10, adminObj.getAdminGender());
    		pstmt.setString(11, adminObj.getAdminEmail1());
    		pstmt.setString(12, adminObj.getAdminEmail2());
    		pstmt.setString(13, adminObj.getAdminAdress());
    	    resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("AdminTable insert ���� �ȵ�");
    	}
    	return resultCount;
    }   
    
    // delete �Ѵ�(ȸ��Ż���) 
	public int deleteAdminTable(AdminVO adminObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "delete from AdminTable where (AdminId = ?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, adminObj.getAdminId());
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch (SQLException e) {
    		System.out.println("AdminTable delete ����ȵ�");
        }
    	return resultCount;
    }
    
    // update ������(�������� ����)   
	public int updateAdminTable(AdminVO adminObj, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "update AdminTable set AdminPwd = ?, AdminPwdCheck = ? where (AdminId = ?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, adminObj.getAdminPwd());
    		pstmt.setString(2, adminObj.getAdminPwdCheck());
    		pstmt.setString(3, adminObj.getAdminId());
    		
    		resultCount = pstmt.executeUpdate();
    		
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println("AdminTable update ����ȵ�");
    	}
    	return resultCount;
    }
    public int CheckIdAdminTable(String AdminId, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	int check = 0;
    	
    	try {
    		String sql = "select * from AdminTable where AdminId = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminId);    
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		check = 1;
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public int CheckEmailAdminTable(String AdminEmail1, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	int check = 0;
    	
    	try {
    		String sql = "select * from AdminTable where AdminEmail1 = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminEmail1);    
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		check = 1;
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public int CheckPwdAdminTable(String AdminPwd, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	int check = 0;
    	
    	try {
    		String sql = "select * from AdminTable where AdminPwd = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminPwd);    
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		check = 1;
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public String LoginIdAdminTable(String AdminId, Connection conn){
    	List<UserVO> AdminTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from AdminTable where AdminId = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminId);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(AdminId.equals(rs.getString(1))) {
     	   			check = rs.getString(1);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public String LoginPwdAdminTable(String AdminPwd, Connection conn){
    	List<UserVO> AdminTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from AdminTable where AdminPwd = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminPwd);    
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		if(AdminPwd.equals(rs.getString(2))) {
     	   			check = rs.getString(2);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}

    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public String LostId1AdminTable(String AdminName, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from AdminTable where AdminName = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminName);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(AdminName.equals(rs.getString(4))) {
     	   			check = rs.getString(4);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public String LostId2AdminTable(String AdminRegiNum1, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from AdminTable where AdminRegNum1 = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminRegiNum1);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(AdminRegiNum1.equals(rs.getString(5))) {
     	   			check = rs.getString(5);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public String LostId3AdminTable(String AdminRegiNum2, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from AdminTable where AdminRegNum2 = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);

     	    pstmt.setString(1, AdminRegiNum2);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(AdminRegiNum2.equals(rs.getString(6))) {
     	   			check = rs.getString(6);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public String LostId4AdminTable(String AdminName, String AdminRegiNum1, String AdminRegiNum2, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from AdminTable where (AdminName = ? and AdminRegNum1 = ? and AdminRegNum2 = ?)";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminName);
     	    pstmt.setString(2, AdminRegiNum1);
     	    pstmt.setString(3, AdminRegiNum2);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(AdminName.equals(rs.getString(4)) && AdminRegiNum1.equals(rs.getString(5)) && AdminRegiNum2.equals(rs.getString(6))) {
     	   			check = rs.getString(1);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public String LostPwd1AdminTable(String AdminId, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from AdminTable where AdminId = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminId);
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		if(AdminId.equals(rs.getString(1))) {
     	   			check = rs.getString(1);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}

    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public String LostPwd2AdminTable(String AdminName, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from AdminTable where AdminName = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminName);
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		if(AdminName.equals(rs.getString(4))) {
     	   			check = rs.getString(4);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}

    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public String LostPwd3AdminTable(String AdminId, String AdminName, Connection conn){
    	List<AdminVO> AdminTableList = new ArrayList<AdminVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from AdminTable where (AdminId = ? && AdminName = ?)";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, AdminId);
     	    pstmt.setString(2, AdminName);
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		if(AdminId.equals(rs.getString(1)) && AdminName.equals(rs.getString(4))) {
     	   			check = rs.getString(3);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}

    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }

 
}
