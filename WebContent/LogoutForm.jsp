
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 로그아웃 </title>
</head>
<body>

	<script>
		alert('<%=session.getAttribute("lId")%>님 안녕히 가세요.')
		location.href = "Home_Main.jsp";
	</script>
	<%
		session.invalidate();
	%>
</body>
</html>