<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, tagdemo.Student" %>


<% 
	List<Student> data = new ArrayList<>();
	data.add(new Student("Bokka", "Sairam", true));
	data.add(new Student("Sharan", "Kanni", false));
	data.add(new Student("Revanth", "Bodulla", false));
	
	pageContext.setAttribute("myStudents", data);
%>

<html>

<body>


<table border="1">
<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Gold Customer</th>
</tr>

<c:forEach var="student" items="${myStudents}">
	<tr>
		<td>${student.firstName}</td>
		<td>${student.lastName}</td>
		<td>
			<c:if test="${student.goldCustomer}">Special Discount</c:if>
			<c:if test="${not student.goldCustomer}">No Discount</c:if>
		</td>
	</tr>
</c:forEach>

</table>

</body>

</html>