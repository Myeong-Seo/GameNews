<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원가입페이지입니다.</title>
<Style>
input[type=submit] {
	padding: 50px 50px;
	margin: 50px 50px;
	background: #99CEB5; 
	color: white;
	border: none;
	cursor: pointer;
	width:35%;
}

</Style>
</head>
<body>

<center>

<br><br><br><br><br><br><br><br><br><br><br><br>
<form action="Create_User_Middle.jsp" >
<input type="radio" id = "User"   name="User_Main_regi" value="User" checked >일반유저&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" id = "Admin"  name="User_Main_regi" value="Admin">관리자
<br><br><br><br><br><br>
<input type="submit" value="회원가입" name="goto">
</form>
</center>

</body>
</html>