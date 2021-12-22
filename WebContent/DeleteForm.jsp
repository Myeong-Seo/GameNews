<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html>
<head>
<title> 회원탈퇴 </title>
</head>

<body>
        <center><h1>회원탈퇴</h1></center>
        <center><h2> 패스워드를 입력하세요</h2></center>
    <form action = "DeleteMember.jsp" method="post">
        <TABLE cellSpacing=1 cellPadding=1 width="260" border=1 align="center" >   
            <tr height="30">
                <td colspan="2" align="middle">
               		<font size="+1" align="center"><b> 회원탈퇴</b></font>
               		</td>
               	</tr>	
            <tr height="30">	
            	<td width="110" align="center"> 아이디 </td>
            	<td width="150" align="center">
            <input type="text" name="Id" >
            </td>   
            <tr height="30">	
            	<td width="110" align="center"> 비밀번호 </td>
            	<td width="150" align="center">
            <input type="password" id ="check_pw" name="Pwd" >
            </td>
            
            <tr height="30">
                <td colspan="2" align="middle">
                <input name="delete" type="submit" value="탈퇴">
              	<input name="delete" type="submit" value="취소"> 
			</td>           
            </tr>
        </table>
    </form>
    </body>
 </html>