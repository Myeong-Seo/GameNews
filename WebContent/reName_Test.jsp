<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");

String Cpwd = request.getParameter("Pwd");

if(Cpwd.equals("1234")){
	response.sendRedirect("reName_change.jsp");
}
else{
	response.sendRedirect("reName.jsp");
}


%>