<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<% if(session.getAttribute("AdminId") == null){ %>
	<script>
	alert('ID가 없습니다. 로그인해주세요.')
	location.href='Home_Main.jsp'
	</script>
<%} else{%>
<html>
<head>
<meta charset="UTF-8">
<title>가입 축하 합니다.</title>
</head>
<body>
<form method = "post" action = "Create_Ac_Middle.jsp">
          <center>  <img src= "pang.png" width=300 height=200/> <br>
                  <h1> 회원가입이 완료되셨습니다. </h1>
                <h2><%=session.getAttribute("AdminId") %> 환영합니다. </h2> <br>
<button type="button" onclick="location.href='Home_Main.jsp'" class="btn btn-dark" style="background-color:white">메인</button>
</center>
<%} %>
</form>
</body>
</html>