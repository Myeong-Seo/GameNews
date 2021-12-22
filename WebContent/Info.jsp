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
	Object obj = session.getAttribute("lId");
	String str = (String)obj;
	//try{
 	uvo = udao.SelectInfoTable(str, uvo, conn);
	//}
	//catch(Exception e){
		
 	//}
 
	String Gencheck = "";
	if(uvo.getUserName().equals("male")){
		Gencheck = "male";
	}
	else{
		Gencheck = "female";
	}
	
	String Phonecheck = "";
	if(uvo.getUserPhoneNumber1().equals("010")){
		Phonecheck = "010";
	}
	else if(uvo.getUserPhoneNumber1().equals("011")){
		Phonecheck = "011";
	}
	else if(uvo.getUserPhoneNumber1().equals("016")){
		Phonecheck = "016";
	}
	else if(uvo.getUserPhoneNumber1().equals("017")){
		Phonecheck = "017";
	}
	else if(uvo.getUserPhoneNumber1().equals("018")){
		Phonecheck = "018";
	}
	else if(uvo.getUserPhoneNumber1().equals("019")){
		Phonecheck = "019";
	}
	
		String Gcheck = uvo.getUserGames();
		String Gc = Gcheck;
		String[] SGames = new String[8];
		
		conn.close();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 정보 </title>
</head>
<body>
	<form action="Member_Info.jsp" method="post">
		<table cellpadding="10" width="1000" border = "1" style="padding:50px;" align="center">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="UserId" size="20" value="<%=uvo.getUserId()%>">
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="UserPwd" size="20"></td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" name="PwdCheck" size="20"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="UserName" size="20" value="<%=uvo.getUserName()%>"></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><input type="text" name="UserRegNum1" size="6" value="<%=uvo.getUserRegNum1()%>"> - 
				<input type="password" name="UserRegNum2" size="7" value="<%=uvo.getUserRegNum2()%>"> 
				</td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" name="UserNick" size="20" value="<%=uvo.getUserNick()%>">
					<input type="submit" name="Info_in" size="20" value="닉네임 중복확인">
				</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				
				<input type="radio" name="Gender" value="male"
				<%if(uvo.getUserGender().equals("male")){ %>
				checked = "checked"
				<%}%>>남자
				
				<input type="radio" name="Gender" value = "female" 
				<%if(uvo.getUserGender().equals("female")){  %>
				checked = "checked"
				<%} %>>여자
				
				</td>
					
			</tr>
				<tr>
				<td>전화번호</td>
				<td><select id="PhoneNumber" name="PhoneNumber1" size="1" value="<%=Phonecheck %>">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
				</select>
				-
				<input type="text" name="PhoneNumber2" size="4" value="<%=uvo.getUserPhoneNumber2()%>">-
				<input type="text" name="PhoneNumber3" size="4" value="<%=uvo.getUserPhoneNumber3()%>">
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="User_Email1" size="15" value="<%=uvo.getUserEmail1()%>">@
				<input type="text" name="User_Email2" size="20" value="<%=uvo.getUserEmail2()%>">
				<input type="submit" name="Info_in" size="20" value="이메일 중복확인"></td>
			</tr>
				<tr><td>거주지역</td>
				<td>
			<select id="UserCity" name="UserCity" size="1" value="<%=uvo.getUserCity() %>">
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="강원도">강원도</option>
				<option value="경상도">경상도</option>
				<option value="전라도">전라북도</option>
				<option value="충청도">충청도</option>
				<option value="제주">제주</option>
			</select>
				</td>
				</tr>
			<tr>
				<td>선호하는 게임 :</td>
				<td><input type="checkbox" name="Games" value="롤"
				<%if(Gcheck.matches(".*롤.*")) {%>
					checked = "checked"
				<%}%>> 리그오브레전드 
				<input type="checkbox" name="Games" value="오버워치"
				<%if(Gcheck.matches(".*오버워치.*")) {%>
					checked = "checked"
				<%}%>> 오버워치
				<input type="checkbox" name="Games" value="서든어택"
				<%if(Gcheck.matches(".*서든어택.*")) {%>
					checked = "checked"
				<%}%>> 서든어택
				<input type="checkbox" name="Games" value="피파온라인4"
				<%if(Gcheck.matches(".*피파온라인4.*")) {%>
					checked = "checked"
				<%}%>> 피온4
				</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="checkbox" name="Games" value="배틀그라운드"
				<%if(Gcheck.matches(".*배틀그라운드.*")) {%>
					checked = "checked"
				<%}%>> 배그 
				<input type="checkbox" name="Games" value="던전앤파이터"
				<%if(Gcheck.matches(".*던전앤파이터.*")) {%>
					checked = "checked"
				<%}%>> 던파
				<input type="checkbox" name="Games" value="오디션"
				<%if(Gcheck.matches(".*오디션.*")) {%>
					checked = "checked"
				<%}%>> 오디션
				<input type="checkbox" name="Games" value="로스트아크"
				<%if(Gcheck.matches(".*로스트아크.*")) {%>
					checked = "checked"
				<%}%>> 로스트아크	
				</td>
			</tr>
		
		</select>
		</table>
		<center>
		<br>회원정보를 변경하려면 비밀번호를 입력 후 변경완료 버튼을 눌러주세요.
		<br><br><br><br><br>
				<input name="Info_in" type="submit" value="비밀번호변경" >
				<input name="Info_in" type="submit" value="변경완료" >
				<input name="Info_in" type="submit" value="메인" >
				<input name="Info_in" type="submit" value="회원탈퇴" >
		</center>
	</form>
</body>
</html>