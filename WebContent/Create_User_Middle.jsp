<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>
    <head> 
	</head>
	<body>

<% 
  String cUser = request.getParameter("User_Main_regi");
  String gotoo = request.getParameter("goto");
%>
	

<%	if(cUser.equals("User")){%>
		<script>
		location.href="Create_Ac_User.jsp"
		</script>
<%  }
	
	else {%>
		<script>
		location.href="Create_Ac_Admin.jsp"
		</script>
<%	}%>
			

	
	</body>
	</html>


