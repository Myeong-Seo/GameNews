<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<Style>
input[name=User_regi] {
	padding: 7px 15px;
	margin: 7px 10px;
	background: #99CEB5; 
	color: white;
	border: none;
	cursor: pointer;
	width:25%;
}

</Style>
<meta charset="UTF-8">
<title>회원 가입 페이지 입니다.</title>
</head>
<body>
	<center>
	<h1>회원 가입 </h1>
	</center>
	<br>
	<form action="Create_User_Middle2.jsp" method="post">
		<table cellpadding="10" width="1000" border = "1" style="padding:50px;">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="UserId" size="20">
					<input type="submit" name="User_regi" size="20" value="아이디 중복확인"></td>
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
				<td><input type="text" name="UserName" size="20"></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><input type="text" name="UserRegNum1" size="6"> - 
				<input type="password" name="UserRegNum2" size="7"> 
				</td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" name="UserNick" size="20">
					<input type="submit" name="User_regi" size="20" value="닉네임 중복확인">
				</td>
			</tr>
			<tr>
				<td>성별 </td>
				<td><input type="radio" name="Gender" value="male"
					checked="checked">남자 <input type="radio" name="Gender"
					value="female">여자</td>
			</tr>
				<tr>
				<td>전화번호</td>
				<td><select name="PhoneNumber1" size="1">
				<option value="">선택하세요</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
				</select>
				-
				<input type="text" name="PhoneNumber2" size="4">-
				<input type="text" name="PhoneNumber3" size="4">
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="User_Email1" size="15">@
				<input type="text" name="User_Email2" size="20">
				<input type="submit" name="User_regi" size="20" value="이메일 중복확인"></td>
			</tr>
				<tr><td>거주지역</td>
				<td>
			<select id="UserCity" name="User_City" size="1">
				<option value="">선택하세요</option>
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="강원도">강원도</option>
				<option value="경상도">경상도</option>
				<option value="전라도">전라북도</option>
				<option value="충청도">충청도</option>
				<option value="제주">제주</option>
				</td>
				</tr>
			<tr>
				<td>선호하는 게임 :</td>
				<td><input type="checkbox" name="Games" value="롤 "> 리그오브레전드
				<input type="checkbox" name="Games" value="오버워치 "> 오버워치
				<input type="checkbox" name="Games" value="서든어택 "> 서든어택
				<input type="checkbox" name="Games" value="피파온라인4 "> 피온4</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="checkbox" name="Games" value="배틀그라운드 "> 배그
				<input type="checkbox" name="Games" value="던전앤파이터 "> 던파
				<input type="checkbox" name="Games" value="오디션 "> 오디션
				<input type="checkbox" name="Games" value="로스트아크 "> 로스트아크</td>
			</tr>		
		
		</select>
		</table>
		<center>
		<br><br><br><br><br>
				<input name="User_regi" type="submit" value="가입완료" >
				<input name="User_regi" type="submit" value="뒤로가기" >
				<input name="User_regi" type="submit" value="메인" >
		</center>
	</form>
		
</body>
</html>