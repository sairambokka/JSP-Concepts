<%
	String username = request.getParameter("usrName");
	String password = request.getParameter("psd");
	
	if(password.equals(username)) {
		out.println("Login Successful");
	}
	else {
		out.println("Login Failed");
	}
%>