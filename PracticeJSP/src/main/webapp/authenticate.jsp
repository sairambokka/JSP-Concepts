<html>
<head> 
</head>
<body>

<% 
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	if(email.equals("johndoe@gmail.com") && password.equals("john123")) {
		response.sendRedirect("welcome.html");
	}
	
	else {
%>
<jsp:include page="login.html" />
<%
	out.println("Wrong Credentials!");
	}
%>
</body>
</html>