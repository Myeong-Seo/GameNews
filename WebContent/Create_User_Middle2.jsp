<%@page import="com.mprj.*"%>
<%@page import= "java.sql.*" %>
<%@page import= "java.util.*" %>
<%@page import= "java.text.*" %>
<%@page import="java.net.URLEncoder"%>
<%@ page import="java.io.PrintWriter" %>
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
	
	/////////////////////////////////////////////////////
	String UserId = request.getParameter("UserId");
	String UserPwd = request.getParameter("UserPwd");
	String PwdCheck = request.getParameter("PwdCheck");
	String Uname = request.getParameter("UserName");
	String UserRegNum1 = request.getParameter("UserRegNum1");
	String UserRegNum2 = request.getParameter("UserRegNum2");
	String UserNick = request.getParameter("UserNick");
	String Gender = request.getParameter("Gender");
	String PhoneNumber1 = request.getParameter("PhoneNumber1");
	String PhoneNumber2 = request.getParameter("PhoneNumber2");
	String PhoneNumber3 = request.getParameter("PhoneNumber3");
	String Email1 = request.getParameter("User_Email1");
	String Email2 = request.getParameter("User_Email2");
	String UserCity = request.getParameter("User_City");
	String[] Games = request.getParameterValues("Games");
	ArrayList<String> str = new ArrayList<String>();
	String temp = "";
	
	String URegi = request.getParameter("User_regi");
	
	///////////////////////////////////////////////////////

	
	
	if(URegi.equals("아이디 중복확인")){
		if(udao.CheckIdUserTable(UserId, conn) == 1){%>
		<script>
		alert('아이디가 중복됩니다. 다시 입력해주세요.')
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
	else if(URegi.equals("닉네임 중복확인")){
		if(udao.CheckNickUserTable(UserNick, conn) == 1){%>
		<script>
		alert('닉네임이 중복됩니다. 다시 입력해주세요.')
		history.go("-1")
		</script>
  <%	}
		else{%>
			<script>
			alert('사용할 수 있는 닉네임입니다.')
			history.go("-1")
			</script>
	<%	}
	}
	else if(URegi.equals("이메일 중복확인")){
		if(udao.CheckEmailUserTable(Email1, conn) == 1){%>
		<script>
		alert('이메일이 중복됩니다. 다시 입력해주세요.')
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
	else if (URegi.equals("가입완료")){
			if(UserId.equals("")){%>
			<script>
    		alert('아이디를 입력해주세요.')
    		history.go("-1")
    		</script>
   	<%} else if(UserPwd.equals("")) {
   	   	%>
		   	<script>
		    alert('비밀번호를 입력해주세요.')
		    history.go("-1")
		    </script>
	<%}
		else if(!UserPwd.equals(PwdCheck)) {
   	   	%>
		   	<script>
		    alert('비밀번호가 맞지않습니다. 다시 입력해주세요.')
		    history.go("-1")
		    </script>
	<%}
		else if(Uname.equals("")) {
   	%>
		   	<script>
		    alert('이름을 입력해주세요.')
		    history.go("-1")
		    </script>
  	<%} else if(UserRegNum1.length() != 6 || UserRegNum2.length() != 7 ){ %>
		    <script>
		    alert('주민등록번호를 제대로 입력해주세요.')
		    history.go("-1")
		    </script>
    <%} else if (UserNick.equals("")) {
    %>
		    <script>
		    alert('닉네임을 입력해주세요.')
		    history.go("-1")
		    </script>
    <%} else if(PhoneNumber1 =="" || PhoneNumber2 =="" || PhoneNumber3 ==""){ 
    %>
		  	<script>
		    alert('전화번호를 입력해주세요.')
		    history.go("-1")
		    </script>
   <%} else if(Email1 =="" || Email2 ==""){ 
    %>
		   	<script>
		    alert('이메일을 입력해주세요.')
		    history.go("-1")
		    </script>
	<%} else {
			uvo.setUserDate(uvo.getUserDate());
			uvo.setUserId(UserId);
			uvo.setUserPwd(UserPwd);
			uvo.setUserPwdCheck(PwdCheck);
			uvo.setUserName(Uname);
			uvo.setUserRegNum1(UserRegNum1);
			uvo.setUserRegNum2(UserRegNum2);
			uvo.setUserNick(UserNick);
			uvo.setUserGender(Gender);
			uvo.setUserPhoneNumber1(PhoneNumber1);
			uvo.setUserPhoneNumber2(PhoneNumber2);
			uvo.setUserPhoneNumber3(PhoneNumber3);
			uvo.setUserEmail1(Email1);
			uvo.setUserEmail2(Email2);
			uvo.setUserCity(UserCity);
			for(String s : Games){
				temp += s + " ";
			}
			uvo.setUserGames(temp);
			//for(int i = 0 ; i < Games.length ; i++){
			//	str.add(i,Games[i] + " ");
			//}
			//uvo.setUserGames(Games);
			
			udao.insertUserTable(uvo, conn);
			conn.close();
		}
			session.setAttribute("UserId", UserId);
			session.setAttribute("UserNick", UserNick);%>
		   	<script>
		    alert('회원가입을 축하드립니다.')
		    location.href='Create_Ac_Result.jsp'
		    </script>
	<%
	}
	else if (URegi.equals("뒤로가기")){
		response.sendRedirect("Create_Ac_Main.jsp");
	}
	
	else if (URegi.equals("메인")){
		response.sendRedirect("Home_Main.jsp");
	}%>