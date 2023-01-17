<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<body>

<%
String[] cities = {"hyderabad", "Mumbai", "Chennai"};
pageContext.setAttribute("myCities", cities);

%>

<c:forEach var="City" items="${myCities}">
${City}<br>
</c:forEach>

</body>

</html>
