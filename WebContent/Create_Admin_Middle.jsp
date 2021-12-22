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
AdminVO avo = new AdminVO();
AdminDAO adao = new AdminDAO();


 try {
     conn = DBConn.getConnection();
 }
 catch(Exception e){
         System.out.println(e.getMessage());
 }

/////////////////////////////////////////////////////

String AdminId = request.getParameter("AdminId");
String AdminPwd = request.getParameter("AdminPwd");
String AdminPwdCheck = request.getParameter("AdminPwdCheck");
String AdminName = request.getParameter("AdminName");
String AdminRegNum1 = request.getParameter("AdminRegNum1");
String AdminRegNum2 = request.getParameter("AdminRegNum2");
String AdminGender = request.getParameter("AdminGender");
String AdminPhoneNumber1 = request.getParameter("AdminPhoneNumber1");
String AdminPhoneNumber2 = request.getParameter("AdminPhoneNumber2");
String AdminPhoneNumber3 = request.getParameter("AdminPhoneNumber3");
String AdminEmail1 = request.getParameter("AdminEmail1");
String AdminEmail2 = request.getParameter("AdminEmail2");
String Adress = request.getParameter("Adress");
String Acode = request.getParameter("AdminCode");
int flag = 0;


String AdminCode = "1234";
String ARegi = request.getParameter("Admin_regi");

///////////////////////////////////////////////////////



if(ARegi.equals("아이디 중복확인")){
	if(adao.CheckIdAdminTable(AdminId, conn) == 1){%>
	<script>
	alert('관리자 중 중복된 아이디가 있습니다. 다시 입력해주세요.')
	history.go("-1")
	</script>
<%	}
	else{%>
		<script>
		alert('사용할 수 있는 아이디입니다.')
		history.go("-1")
		</script>
<%	}
}
else if(ARegi.equals("이메일 중복확인")){
	if(adao.CheckEmailAdminTable(AdminEmail1, conn) == 1){%>
	<script>
	alert('관리자 중 중복된 아이디가 있습니다. 다시 입력해주세요.')
	history.go("-1")
	</script>
<%	}
	else{%>
		<script>
		alert('사용할 수 있는 이메일입니다.')
		history.go("-1")
		</script>
<%	}
}
else if (ARegi.equals("가입완료")){
		if(AdminId.equals("")){%>
		<script>
		alert('아이디를 입력해주세요.')
		history.go("-1")
		</script>
	<%} else if(AdminPwd.equals("")) {
	   	%>
	   	<script>
	    alert('비밀번호를 입력해주세요.')
	    history.go("-1")
	    </script>
<%}
	else if(!AdminPwd.equals(AdminPwdCheck)) {
	   	%>
	   	<script>
	    alert('비밀번호가 맞지않습니다. 다시 입력해주세요.')
	    history.go("-1")
	    </script>
<%}
	else if(AdminName.equals("")) {
	%>
	   	<script>
	    alert('이름을 입력해주세요.')
	    history.go("-1")
	    </script>
	<%} else if(AdminRegNum1.length() != 6 || AdminRegNum2.length() != 7 ){ %>
	    <script>
	    alert('주민등록번호를 제대로 입력해주세요.')
	    history.go("-1")
	    </script>
<%}  else if(AdminPhoneNumber1 =="" || AdminPhoneNumber2 =="" || AdminPhoneNumber3 ==""){ 
%>
	  	<script>
	    alert('전화번호를 입력해주세요.')
	    history.go("-1")
	    </script>
<%} else if(AdminEmail1 =="" || AdminEmail2 ==""){ 
%>
	   	<script>
	    alert('이메일을 입력해주세요.')
	    history.go("-1")
	    </script>
<%}  else if(!Acode.equals(AdminCode)){ 
%>
   		<script>
	    alert('관리자번호를 다시 확인해주세요.')
	    history.go("-1")
    	</script>
<%}	 else {
		flag = 1;
		avo.setAdminId(AdminId);
		avo.setAdminPwd(AdminPwd);
		avo.setAdminPwdCheck(AdminPwdCheck);
		avo.setAdminName(AdminName);
		avo.setAdminRegNum1(AdminRegNum1);
		avo.setAdminRegNum2(AdminRegNum2);
		avo.setAdminGender(AdminGender);
		avo.setAdminPhoneNumber1(AdminPhoneNumber1);
		avo.setAdminPhoneNumber2(AdminPhoneNumber2);
		avo.setAdminPhoneNumber3(AdminPhoneNumber3);
		avo.setAdminEmail1(AdminEmail1);
		avo.setAdminEmail2(AdminEmail2);
		avo.setAdminAdress(Adress);
		
		adao.insertAdminTable(avo, conn);
		conn.close();
		
	}%>
<%
}
else if (ARegi.equals("뒤로가기")){
	response.sendRedirect("Create_Ac_Main.jsp");%>
<%}

else if (ARegi.equals("메인")){
	response.sendRedirect("Home_Main.jsp");%>
<%}
if(flag == 1){
		session.setAttribute("AdminId", AdminId);
		session.setAttribute("Acode", Acode);%>
			<script>
		    alert('회원가입을 축하드립니다.')
		    location.href='Create_Ac_AResult.jsp'
		    </script>
<%}%>

