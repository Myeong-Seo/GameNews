<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title> 비밀번호 변경 </title>
</head>
<body>
<center>
<form action="RePwd_Update.jsp" method="post">
		<table cellpadding="10" width="1000" border = "1" style="padding:50px;">
			<tr>
				<td> 아이디 </td>
				<td><input type="password" name="UserId" size="20">
				</td>
			</tr>
			<tr>
				<td>현재 비밀번호</td>
				<td><input type="password" name="BePwd" size="20">
				</td>
			</tr>
			<tr>
				<td>변경할 비밀번호</td>
				<td><input type="password" name="AfPwd1" size="20">
				</td>
			</tr>
			<tr>
				<td>변경할 비밀번호 확인</td>
				<td><input type="password" name="AfPwd2" size="20">
			</td>
			</tr>
		</table>
		<br><br>

				<input name="RePwd" type="submit" value="변경완료" >
				<input name="RePwd" type="submit" value="뒤로가기">
			</form>
			</center>
</body>
</html>