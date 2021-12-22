<%@page import="com.mprj.*"%>
<%@page import= "java.sql.*" %>
<%@page import= "java.util.*" %>
<%@page import= "java.text.*" %>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	Connection conn = DBConn.getConnection();
	UserVO uvo = new UserVO();
	UserDAO udao = new UserDAO();
	
	AdminVO avo = new AdminVO();
	AdminDAO adao = new AdminDAO();
	
	 try {
	     conn = DBConn.getConnection();
	 }
	 catch(Exception e){
	         System.out.println(e.getMessage());
	 }

	 

String Member = request.getParameter("Member_Class");
String lId = request.getParameter("Login_Id");
String lPwd = request.getParameter("Login_Pwd");
String Acode = request.getParameter("AdminCode");
String Login = request.getParameter("User_Login");

String Admincode = "1234";


if(Member.equals("Member_User") && lId.equals(udao.LoginIdUserTable(lId, conn)) && lPwd.equals(udao.LoginPwdUserTable(lPwd, conn)) && Login.equals("로그인")){
	session.setAttribute("lId", lId);%>
   	<script>
   	alert('<%=lId%>님 환영합니다.')
    location.href='UserMain.jsp'
    </script>
<%}
else if(Member.equals("Member_Admin") && lId.equals(adao.LoginIdAdminTable(lId, conn)) && lPwd.equals(adao.LoginPwdAdminTable(lPwd, conn)) && Acode.equals(Admincode) && Login.equals("로그인")){
	session.setAttribute("lId", lId);
	session.setAttribute("Acode", Acode);%>
   	<script>
    alert('<%=lId%>관리자님 환영합니다.')
    location.href='AdminMain.jsp'
    </script>
<%}
else if(Login.equals("아이디찾기")){%>
	<script>
    location.href='LostIdForm.jsp'
    </script>
<%}
else if(Login.equals("비밀번호찾기")){%>
	<script>
    location.href='LostPwdForm.jsp'
    </script>
<%}
else if(Login.equals("메인")){%>
	<script>
    location.href='Home_Main.jsp'
    </script>
<%}else{%>
	<script>
    alert("아이디나비밀번호가 잘못되었습니다. 다시 입력해주세요.")
    history.go("-1")
    </script>


<%}


%>