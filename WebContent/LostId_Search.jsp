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
String lName = request.getParameter("Login_Name");
String lRegiNum1 = request.getParameter("Login_RegiNum1");
String lRegiNum2 = request.getParameter("Login_RegiNum2");
String SearchId = request.getParameter("LostId");
String Acode = request.getParameter("AdminCode");

String Admincode = "1234";


if(Member.equals("Member_User") && lName.equals(udao.LostId1UserTable(lName, conn))  && lRegiNum1.equals(udao.LostId2UserTable(lRegiNum1, conn)) && lRegiNum2.equals(udao.LostId3UserTable(lRegiNum2, conn)) && SearchId.equals("아이디 찾기")){%>
   	<script>
   	alert('아이디는 <%=udao.LostId4UserTable(lName, lRegiNum1, lRegiNum2, conn)%>입니다.')
   	history.go('-1')
    </script>
<%}

else if(Member.equals("Member_Admin") && lName.equals(adao.LostId1AdminTable(lName, conn)) && lRegiNum1.equals(adao.LostId2AdminTable(lRegiNum1, conn)) && lRegiNum2.equals(adao.LostId3AdminTable(lRegiNum2, conn)) && Acode.equals(Admincode) && SearchId.equals("아이디 찾기")){%>
   	<script>
   	alert('아이디는 <%=adao.LostId4AdminTable(lName, lRegiNum1, lRegiNum2, conn)%>입니다.')
    history.go('-1')
    </script>
<%}
else if(SearchId.equals("메인")){%>
   	<script>
   	alert('메인으로 이동합니다.')
    location.href='Home_Main.jsp'
    </script>
<%}
else if(lName.equals("") || lRegiNum1.equals("") || lRegiNum2.equals("")){%>
	<script>
	alert('이름이나 주민번호를 다시 입력해주세요.')
	history.go("-1")
	</script>
<%}

%>