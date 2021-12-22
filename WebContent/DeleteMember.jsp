<%@page import= "java.sql.*" %>
<%@page import= "java.util.*" %>
<%@page import= "java.text.*" %>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.mprj.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	Connection conn = DBConn.getConnection();
	UserVO uvo = new UserVO();
	UserDAO udao = new UserDAO();
	
	 try {
	     conn = DBConn.getConnection();
	 }
	 catch(Exception e){
	         System.out.println(e.getMessage());
	 }
     
	 String Id = request.getParameter("Id");
	 String Pwd = request.getParameter("Pwd");
	 String del = request.getParameter("delete");
	 
	 if(del.equals("탈퇴") && Id.equals(udao.deleteUser1Table(Id, conn)) && Pwd.equals(udao.deleteUser2Table(Pwd, conn)) && (udao.deleteUser3Table(Id, Pwd, conn) == 1)){
	 		session.invalidate();%>
		   	<script>
		    alert('<%=Id%>회원님 탈퇴가 정상적으로 처리되었습니다.')
		    location.href='Home_Main.jsp'
		    </script>
	<%}
	 
	 


%>