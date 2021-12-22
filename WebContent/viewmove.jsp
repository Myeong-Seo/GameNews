<%@page import="com.mprj.*"%>
<%@page import= "java.sql.*" %>
<%@page import= "java.util.*" %>
<%@page import= "java.text.*" %>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String vcheck = request.getParameter("viewcheck");

	Object obj = session.getAttribute("Acode");
	String se = (String)obj;
	
	if(vcheck.equals("viewcheck") && se.equals("1234")){
		response.sendRedirect("AdminMain.jsp");
	}
	else{
		response.sendRedirect("UserMain.jsp");
	}


%>