<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");

String Pwd1 = request.getParameter("Pwd1");
String Pwd2 = request.getParameter("Pwd2");

if(Pwd1.equals(Pwd2)){
	response.sendRedirect("reName_Result.jsp");
}
else{
	response.sendRedirect("reName.jsp");
}


%>