<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
 form{display:inline}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 창</title>
</head>
<body>
<center>
<form action="Member_Login.jsp" method="post">
		<table cellpadding="10" width="1000" border = "1" style="padding:50px;">
		<tr>
				<td>회원분류 </td>
				<td><input type="radio" name="Member_Class" value="Member_User"
					checked="checked">일반회원
					<input type="radio" name="Member_Class"value="Member_Admin">
					관리자
				</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="Login_Id" size="20">
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="Login_Pwd" size="20">
				</td>
			</tr>
			<tr>
				<td>관리자코드</td>
				<td><input type="text" name="AdminCode" size="20">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input name="User_Login" type="submit" value="아이디찾기" >
				<input name="User_Login" type="submit" value="비밀번호찾기" >
				</td>
			</tr>
			</table>
			<br><br>
				<input name="User_Login"  type="submit" value="로그인" >	
				<input name="User_Login"  type="submit" value="메인" >
			</form>
	</center>
</body>
</html>