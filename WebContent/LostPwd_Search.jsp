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
String lName = request.getParameter("Login_Name");
String SearchPwd = request.getParameter("LostPwd");
String Acode = request.getParameter("AdminCode");

String rName = "abcd";
String rId = "1234";
String Admincode = "1234";

if(Member.equals("Member_User") && lId.equals(udao.LostPwd1UserTable(lId, conn)) && lName.equals(udao.LostPwd2UserTable(lName, conn)) && SearchPwd.equals("비밀번호 찾기")){%>
   	<script>
   	alert('비밀번호는 <%=udao.LostPwd3UserTable(lId, lName, conn)%>입니다.')
   	history.go('-1')
    </script>
<%}
else if(Member.equals("Member_Admin") && lId.equals(adao.LostPwd1AdminTable(lId, conn)) && lName.equals(adao.LostPwd2AdminTable(lName, conn)) && Acode.equals(Admincode) && SearchPwd.equals("비밀번호 찾기")){%>
	<script>
   	alert('비밀번호는 <%=adao.LostPwd3AdminTable(lId,lName,conn)%>입니다.')
   	history.go('-1')
    </script>
<%}
else if(SearchPwd.equals("메인")){%>
   	<script>
   	alert('메인으로 이동합니다.')
    location.href='Home_Main.jsp'
    </script>
<%}
else if((lName.equals("") || lId.equals(""))){%>
	<script>
	alert('이름이나 아이디가 잘못되었습니다. 다시 입력해주세요.')
	history.go("-1")
	</script>
<%}
else if(!(Acode.equals(Admincode))){%>
<script>
alert('관리자코드가 잘못되었습니다. 다시 입력해주세요.')
history.go("-1")
</script>
<%}


%>