<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");


//String sId = request.getParameter("UserId");
//String sPwd = request.getParameter("UserPwd");
String Uregi = request.getParameter("User_Regi");
String Uback = request.getParameter("User_Back");
String Umain = request.getParameter("User_Main");


if(Uregi.equals("회원가입")){
	response.sendRedirect("Resu.jsp");
}
else if(Uregi.equals("뒤로가기")){
	response.sendRedirect("PreMain.jsp");
}
else if(Uregi.equals("메인으로")){
	response.sendRedirect("reName.jsp");
}






%>