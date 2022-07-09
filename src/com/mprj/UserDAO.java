package com.mprj;

import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.Date;
import java.util.stream.Collectors; 


public class UserDAO {
	private static UserDAO dao = new UserDAO();
	
	public UserDAO() {}
    
	public static UserDAO getInstance() {return dao;}
    
	/////////////////////////////////////////////////
    
    // insert user, Admin �Ѵ� (ȸ�����Խ�)
    public int insertUserTable(UserVO userObj, Connection conn) {
    	ArrayList<String> str = new ArrayList<String>();
    	String arrayOf;
    	UserVO uvo = new UserVO();
    	
    	int resultCount = 0;

    	DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date time = new Date(); 

    	
    	try {
    		String sql = "insert into UserTable values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1,format1.format(time));
    		pstmt.setString(2, userObj.getUserId());
    		pstmt.setString(3, userObj.getUserPwd());
    		pstmt.setString(4, userObj.getUserPwdCheck());
    		pstmt.setString(5, userObj.getUserName());
    		pstmt.setString(6, userObj.getUserRegNum1());
    		pstmt.setString(7, userObj.getUserRegNum2());
    		pstmt.setString(8, userObj.getUserNick());
    		pstmt.setString(9, userObj.getUserGender());
    		pstmt.setString(10, userObj.getUserPhoneNumber1());
    		pstmt.setString(11, userObj.getUserPhoneNumber2());
    		pstmt.setString(12, userObj.getUserPhoneNumber3());
    		pstmt.setString(13, userObj.getUserEmail1());
    		pstmt.setString(14, userObj.getUserEmail2());
    		pstmt.setString(15, userObj.getUserCity());
    		pstmt.setString(16, userObj.getUserGames());
	
    		
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		System.out.println(e.getMessage());
    	}
    	return resultCount;
    }
    public int DeleteUserTable(String UserId, String UserPwd, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "delete from UserTable where (UserId = ? and UserPwd = ?)";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, UserId);
    		pstmt.setString(2, UserPwd);
    		
    		ResultSet rs = pstmt.executeQuery();
    		while(rs.next()) {
     	   		if(UserId.equals(rs.getString(2))) {
     	   			
     	   		}                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();

    	}
    	catch (SQLException e) {
    		System.out.println("UserTable Delete 안됨");
    	}
    	return resultCount;
    }
   
    public String deleteUser1Table(String id, Connection conn) {
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where UserId = ?";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, id);
    		
    		
    		ResultSet rs = pstmt.executeQuery();
    		while(rs.next()) {
     	   		if(id.equals(rs.getString(2))) {
     	   			check = rs.getString(2);
     	   		}                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();

    	}
    	catch (SQLException e) {
    		System.out.println("UserTable select 안됨");
    	}
    	return check;
    }
    public String deleteUser2Table(String Pwd, Connection conn) {
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where UserPwd = ?";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, Pwd);
    		
    		
    		ResultSet rs = pstmt.executeQuery();
    		while(rs.next()) {
     	   		if(Pwd.equals(rs.getString(3))) {
     	   			check = rs.getString(3);
     	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16),rs.getString(17)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();

    	}
    	catch (SQLException e) {
    		System.out.println("UserTable select 안됨");
    	}
    	return check;
    }
    public int deleteUser3Table(String Id, String Pwd, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "delete from UserTable where UserId = ? and UserPwd = ?";
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, Id);
    		pstmt.setString(2, Pwd);
    		
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();

    	}
    	catch (SQLException e) {
    		System.out.println("UserTable delete 안됨");
    	}
    	return resultCount;
    }

    public int UpdatePwdUserTable(String UserId, String BePwd,String AfPwd1, String AfPwd2, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "update UserTable set UserPwd = ?, UserPwdCheck = ? where (UserId = ? and UserPwd = ?)";
    	    PreparedStatement pstmt = conn.prepareStatement(sql);
    	    pstmt.setString(1, AfPwd1);
    	    pstmt.setString(2, AfPwd2);
    	    pstmt.setString(3, UserId);
    	    pstmt.setString(4, BePwd);
    	    
    	    resultCount = pstmt.executeUpdate();
    	    
    	    pstmt.close();
     	}
    	catch(SQLException e) {
    		System.out.println("UserPwdTable update 안됨");
        }
    	return resultCount;
    }
    public int UpdateNickUserTable(String Nick, Connection conn) {
    	
    	int resultCount = 0;
    	
    	try {
    		String sql = "update UserTable set UserNick = ? where UserNick = ?";
    	    PreparedStatement pstmt = conn.prepareStatement(sql);
    	    pstmt.setString(1, Nick);
    	    pstmt.setString(2, Nick);
    	    
    	    resultCount = pstmt.executeUpdate();
    	    
    	    pstmt.close();
     	}
    	catch(SQLException e) {
    		System.out.println("UserNickTable update 안됨");
        }
    	return resultCount;
    }
    public List<UserVO> SelectUserTable(Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	ArrayList<String> str = new ArrayList<String>();
    	
    	try {
    		String sql = "select * from UserTable";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		ResultSet rs = pstmt.executeQuery();
    		
    		while(rs.next()) {
//    			UserTableList.add(new UserVO(rs.getString(1), rs.getString(2),
//    					rs.getString(3), rs.getString(4), rs.getString(5),
//    					rs.getString(6), rs.getString(7), rs.getString(8),
//    					rs.getString(9), rs.getString(10), rs.getString(11),
//    					rs.getString(12), rs.getString(13), rs.getString(14),
//    					rs.getString(15), rs.getString(16)));                 
    		}
    	}
    	catch(SQLException e) {
    		System.out.println("UserTable select 연결안됨");
    	}
    	return UserTableList;
    }
    public int CheckIdUserTable(String UserId, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	int check = 0;
    	
    	try {
    		String sql = "select * from UserTable where UserId = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, UserId);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
	     	   	if(UserId.equals(rs.getString(2))) {
	 	   			check = 1;
	 	   		}
   			//UserTableList.add(new UserVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15), rs.getString(16)));                 
     	   }
    		
    		resultCount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		//System.out.println("UserTable select 연결안됨");
    	}
    	return check;
    }
    public int CheckNickUserTable(String UserNick, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	int check = 0;
    	
    	try {
    		String sql = "select * from UserTable where UserNick = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, UserNick);    
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
    public int CheckEmailUserTable(String Email1, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	int check = 0;
    	
    	try {
    		String sql = "select * from UserTable where UserEmail1 = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, Email1);    
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
    public String LoginIdUserTable(String UserId, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where UserId = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, UserId);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(UserId.equals(rs.getString(2))) {
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
    public String LoginPwdUserTable(String UserPwd, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where UserPwd = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, UserPwd);    
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		if(UserPwd.equals(rs.getString(3))) {
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
    public String LostId1UserTable(String UserName, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where UserName = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, UserName);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(UserName.equals(rs.getString(5))) {
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
    public String LostId2UserTable(String RegiNum1, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where UserRegNum1 = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, RegiNum1);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(RegiNum1.equals(rs.getString(6))) {
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
    public String LostId3UserTable(String RegiNum2, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where UserRegNum2 = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, RegiNum2);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(RegiNum2.equals(rs.getString(7))) {
     	   			check = rs.getString(7);
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
    public String LostId4UserTable(String UserName, String RegiNum1, String RegiNum2, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where (UserName = ? and UserRegNum1 = ? and UserRegNum2 = ?)";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, UserName);
     	    pstmt.setString(2, RegiNum1);
     	    pstmt.setString(3, RegiNum2);
     	    ResultSet rs = pstmt.executeQuery();
     	    
     	   	while(rs.next()) {
     	   		if(UserName.equals(rs.getString(5)) && RegiNum1.equals(rs.getString(6)) && RegiNum2.equals(rs.getString(7))) {
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
    public String LostPwd1UserTable(String UserId, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where UserId = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, UserId);
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		if(UserId.equals(rs.getString(2))) {
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
    public String LostPwd2UserTable(String UserName, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where UserName = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, UserName);
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		if(UserName.equals(rs.getString(5))) {
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
    public String LostPwd3UserTable(String UserId, String UserName, Connection conn){
    	List<UserVO> UserTableList = new ArrayList<UserVO>();
    	
    	int resultCount = 0;
    	String check = "";
    	
    	try {
    		String sql = "select * from UserTable where (UserId = ? && UserName = ?)";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
     	    pstmt.setString(1, UserId);
     	    pstmt.setString(2, UserName);
     	    ResultSet rs = pstmt.executeQuery();
   		
     	   	while(rs.next()) {
     	   		if(UserId.equals(rs.getString(2)) && UserName.equals(rs.getString(5))) {
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

    public UserVO SelectInfoTable(String UserId, UserVO uvo, Connection conn){
    	
    	int resultcount = 0;
    	
    	try {
    		String sql = "select * from UserTable where UserId = ?";
    		
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, UserId);
    		ResultSet rs = pstmt.executeQuery();
    		
    		while(rs.next()) {

        		uvo.setUserId(rs.getString(2));
        		uvo.setUserName(rs.getString(5));
        		uvo.setUserRegNum1(rs.getString(6));
        		uvo.setUserRegNum2(rs.getString(7));
        		uvo.setUserNick(rs.getString(8));
        		uvo.setUserGender(rs.getString(9));
        		uvo.setUserPhoneNumber1(rs.getString(10));
        		uvo.setUserPhoneNumber2(rs.getString(11));
        		uvo.setUserPhoneNumber3(rs.getString(12));
        		uvo.setUserEmail1(rs.getString(13));
        		uvo.setUserEmail2(rs.getString(14));
        		uvo.setUserCity(rs.getString(15));
        		uvo.setUserGames(rs.getString(16));
     	   }
    		
 
    		resultcount = pstmt.executeUpdate();
    		pstmt.close();
    	}
    	catch(SQLException e) {
    		
    	}
    	return uvo;
    }
    /*public int join(User user) {
		String sql = "insert into user values(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}*/


}
 