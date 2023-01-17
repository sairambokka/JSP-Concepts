<html>

<body>

<!-- Step-1 : Create a form to accept Name and Age of the person -->

<form action="eligible-vote.jsp">

	Name : <input type="text" name="name" value="Your Name" />
	Age In Years : <input type="text" name="age" value = "18"/><br><br>
	<input type="submit" value="Check Eligibility" />

</form>
<hr>

<!-- Step-2 : Check the eligibility criteria using JSP -->

<%
	if(request.getParameter("age") != null) {
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		if(age >= 18) {
			out.println("Hi " + name + "! You are eligible to vote !");
		}
		
		else {
			out.println("Sorry " + name + "! You can vote in " + (18 - age) + " years !");
		}
	}
%>

</body>

</html>