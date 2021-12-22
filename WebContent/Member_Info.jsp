<%@page import= "java.sql.*" %>
<%@page import= "java.util.*" %>
<%@page import= "java.lang.*" %>
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
	String UserPwd = request.getParameter("UserPwd");
	String PwdCheck = request.getParameter("PwdCheck");
	String UserName = request.getParameter("UserName");
	String UserRegNum1 = request.getParameter("UserRegNum1");
	String UserRegNum2 = request.getParameter("UserRegNum2");
	String UserNick = request.getParameter("UserNick");
	String Gender = request.getParameter("Gender");
	String PhoneNumber1 = request.getParameter("PhoneNumber1");
	String PhoneNumber2 = request.getParameter("PhoneNumber2");
	String PhoneNumber3 = request.getParameter("PhoneNumber3");
	String Email1 = request.getParameter("Email1");
	String Email2 = request.getParameter("Email2");
	String UserCity = request.getParameter("UserCity");
	String[] Games = request.getParameterValues("Games");
	
	String iInfo = request.getParameter("Info_in");
	

	
%>


<%	if(iInfo.equals("비밀번호변경")){%>
		<script>
		location.href='RePwd.jsp'
		</script>
    <%}
	else if((udao.UpdateNickUserTable(UserNick, conn) == 0) && iInfo.equals("닉네임 중복확인")){%>
			<script>
			alert('정상적으로 변경되었습니다.')
			history.go('-1')
			</script>
		
	<%}
	else if(iInfo.equals("변경완료")){
		if(UserPwd == ""){%>
			<script>
			alert('입력한 정보가 맞지 않습니다. 다시 입력해주세요.')
			history.go('-1')
			</script>
	<%	}
		else{%>
			<script>
			alert('성공적으로 변경하였습니다. 메인으로 이동합니다.')
			location.href='UserMain.jsp'
			</script>
	<%	}
    }
	else if(iInfo.equals("메인")) {%>
		<script>
		alert('메인으로 이동합니다.')
		location.href='UserMain.jsp'
		</script>
<%  }
	else if(iInfo.equals("회원탈퇴")){%>
		<script>
			location.href='DeleteForm.jsp'
		</script>
	<%}
		
	conn.close();
%>
			

	
	</body>
	</html>


