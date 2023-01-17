<%@ page import="java.util.*" %>
<html>

<body>

<!-- Step-1 : Create a form to accept items from user -->

<form action="todo-demo.jsp">
	Add an item : <input type="text" name="theItem" />
	<input type="submit" value="ADD ITEM!" /><br><br>
</form>

<!-- Step-2 : Add the data to a list -->

<%
	// Create a list of items
	List<String> items = (List<String>) session.getAttribute("toDoList");

	// If the list is null, create a new list
	if(items == null) {
		items = new ArrayList<String>();
		session.setAttribute("toDoList", items);
	}
	
	String theItem = request.getParameter("theItem");

	boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
	boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
	
	if (isItemNotEmpty && isItemNotDuplicate) {    		
		items.add(theItem.trim());    		
	}
%>
<hr>

<!-- Step-3 : Display the list of items as a ordered list -->

<ol>
	<%
		for(String item : items) {
			out.println("<li>" + item + "</li>");
		}
	%>
</ol>

</body>

</html>