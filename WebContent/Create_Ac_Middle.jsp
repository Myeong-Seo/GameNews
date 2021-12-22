<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("UTF-8");

    String Rmain = request.getParameter("ResMain");
	
	if (Rmain.equals("메인")){%>
	   	<script>
	    alert('메인으로 이동합니다.')
	    location.href="Home_Main.jsp"
	    </script>
	<%}
%>