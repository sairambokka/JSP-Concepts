<html>
<head>

<title>Learn New Concepts</title>

</head>
<body>

	<%

		String favLang = "Java";
		Cookie[] myCookies = request.getCookies();
		
		if(myCookies != null) {
			for(Cookie theCookie : myCookies) {
				if("myApp.favoriteLanguage".equals(theCookie.getName())) {
					favLang = theCookie.getValue();
				}
			}
		}


	%>
	<h1>New Jobs on <%= favLang %></h1>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>

	<h2>Latest News on <%= favLang %></h2>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	
	<h3>Development in <%= favLang %></h3>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<hr>
	
	<a href="cookies-personalize-form.html">Personalize this site</a>
</body>

</html>