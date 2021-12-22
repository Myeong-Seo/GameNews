<%@page import="com.mprj.*"%>
<%@page import= "java.sql.*" %>
<%@page import= "java.util.*" %>
<%@page import= "java.text.*" %>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.mprj.*"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("Utf-8"); 
	Connection conn = DBConn.getConnection();

 try {
     conn = DBConn.getConnection();
 }
 catch(Exception e){
         System.out.println(e.getMessage());
 }

%>
<jsp:UseBean id="User" class="com.mprj.UserVO" scope="page" />
<jsp:setProperty name="User" property="UserDate" />
<jsp:setProperty name="User" property="UserId" />
<jsp:setProperty name="User" property="UserPwd" />
<jsp:setProperty name="User" property="UserPwdCheck" />
<jsp:setProperty name="User" property="UserName" />
<jsp:setProperty name="User" property="UserRegNum1" />
<jsp:setProperty name="User" property="UserRegNum2" />
<jsp:setProperty name="User" property="UserNick" />
<jsp:setProperty name="User" property="UserGender" />
<jsp:setProperty name="User" property="UserPhoneNumber1" />
<jsp:setProperty name="User" property="UserPhoneNumber2" />
<jsp:setProperty name="User" property="UserPhoneNumber3" />
<jsp:setProperty name="User" property="UserEmail1" />
<jsp:setProperty name="User" property="UserEmail2" />
<jsp:setProperty name="User" property="UserCity" />
<jsp:setProperty name="User" property="UserGames" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game News</title>
</head>
<body>
	<%
		UserVO uvo = new UserVO();
		// 현재 세션 상태를 체크한다
		String UserId = null;
		if(session.getAttribute("lId") != null){
			UserId = (String)session.getAttribute("lId");
		}
		// 이미 로그인했으면 회원가입을 할 수 없게 한다
		if(UserId != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어 있습니다')");
			script.println("location.href='UserMain.jsp'");
			script.println("</script>");
		}
		else{
			//UserDAO UserDAO = new UserDAO();
			
			//int result = UserDAO.insertUserTable(UserDAO, conn);
			//if(result == -1){
			//	PrintWriter script = response.getWriter();
			//	script.println("<script>");
			//	script.println("alert('이미 존재하는 아이디입니다')");
			//	script.println("history.back()");
			//	script.println("</script>");
			//}else {
			//	session.setAttribute("lId", uvo.getUserId());
			//	PrintWriter script = response.getWriter();
			//	script.println("<script>");
			//	script.println("alert('회원가입 성공')");
			//	script.println("location.href='Home_Main.jsp'");
			//	script.println("</script>");
			//}
			conn.close();
		}
	%>
</body>
</html>