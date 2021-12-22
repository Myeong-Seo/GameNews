<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
    String Umain = request.getParameter("Umain");
	
	if (Umain.equals("Home")){
		response.sendRedirect("UserMain.jsp");
	}
		
%>