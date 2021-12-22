<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 페이지 입니다.</title>
<Style>
input[name=Admin_regi] {
	padding: 7px 15px;
	margin: 7px 10px;
	background: #99CEB5; 
	color: white;
	border: none;
	cursor: pointer;
	width:25%;
}
</Style>
</head>
<body>
	<center>
	<h1>관리자 회원가입 </h1>
	</center>
	<br>
	<form action="Create_Admin_Middle.jsp" method="post">
		<table cellpadding="10" width="1000" border = "1" style="padding:50px;">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="AdminId" size="20">
					<input type="submit" name="Admin_regi" size="10" value="아이디 중복확인"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="AdminPwd" size="20"></td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" name="AdminPwdCheck" size="20"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="AdminName" size="20"></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><input type="text" name="AdminRegNum1" size="6"> - 
				<input type="password" name="AdminRegNum2" size="7"> 
				</td>
			</tr>
			<tr>
				<td>성별 </td>
				<td><input type="radio" name="AdminGender" value="male"
					checked="checked">남자 <input type="radio" name="AdminGender"
					value="female">여자</td>
			</tr>
				<tr>
				<td>전화번호</td>
				<td><select id="PhoneNumber" name="AdminPhoneNumber1" size="1">
				<option value="">선택하세요</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
				</select>
				-
				<input type="text" name="AdminPhoneNumber2" size="4">-
				<input type="text" name="AdminPhoneNumber3" size="4">
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="AdminEmail1" size="20">@
				<input type="text" name="AdminEmail2" size="20">
				<input type="submit" name="Admin_regi" size="10" value="이메일 중복확인"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="Adress" size="30">	
			</tr>
				<tr>
				<td>관리자코드입력</td>
				<td><input type="text" name="AdminCode" size="30">	
			</tr>
		</select>
		</table>
		<center>
		<br><br><br><br><br>
				<input name="Admin_regi" type="submit" value="가입완료" >
				<input name="Admin_regi" type="submit" value="뒤로가기" >
				<input name="Admin_regi" type="submit" value="메인" >
		</center>
	</form>		
</body>
</html>