package com.mprj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	
		public static Connection getConnection() throws SQLException, ClassNotFoundException {
			Connection conn = null;
			
			String jdbcDriver = "com.mysql.jdbc.Driver";
			String jdbcUrl = "jdbc:mysql://localhost:3306/GameNews";
			String dbUser = "root";
			String dbPwd = "1234";
			
			Class.forName(jdbcDriver);
			conn = DriverManager.getConnection(jdbcUrl,dbUser,dbPwd);
			
			return conn;
		}
}
