<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
    String Amain = request.getParameter("Amain");
	
	if (Amain.equals("Home")){
		response.sendRedirect("AdminMain.jsp");
	}
%>