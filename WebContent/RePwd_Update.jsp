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


String UserId = request.getParameter("UserId");
String BePwd = request.getParameter("BePwd");
String AfPwd1 = request.getParameter("AfPwd1");
String AfPwd2 = request.getParameter("AfPwd2");
String RePwd = request.getParameter("RePwd");

if(!(udao.UpdatePwdUserTable(UserId, BePwd, AfPwd1, AfPwd2, conn) == 0) && RePwd.equals("변경완료")){%>
	<script>
	alert('정상적으로 변경되었습니다.')
	location.href='Info.jsp'
	</script>
<%}
else if((udao.UpdatePwdUserTable(UserId, BePwd, AfPwd1, AfPwd2, conn) == 0) && RePwd.equals("변경완료")){%>
	<script>
	alert('기존의 아이디나 비밀번호나 변경할 비밀번호가 잘못되었습니다. 다시 입력해주세요.')
	history.go("-1")
	</script>
<%}
else if(RePwd.equals("뒤로가기")){%>
<script>
alert('회원정보페이지로 이동합니다.')
location.href='Info.jsp'
</script>
<%}


%>