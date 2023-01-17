<html>
<head><title>Confirmation Page</title></head>
<body>
	<%
		String favLang = request.getParameter("favoriteLanguage");
	
		Cookie myCookie = new Cookie("myApp.favoriteLanguage", favLang);
		
		myCookie.setMaxAge(60*60);
		
		response.addCookie(myCookie);
	%>
	
	The favorite language is set to : <%= favLang %>
	
	<a href="cookies-homepage.jsp">Go back to Home page</a>
</body>
</html>