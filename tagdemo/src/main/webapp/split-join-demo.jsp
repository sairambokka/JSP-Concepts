<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="data" value="Singapore,London,Mumbai,NYC"></c:set>

<c:set var="myArray" value="${fn:split(data,',')}"></c:set>

<c:forEach var="city" items="${myArray}">
	${city}<br>
</c:forEach>

<c:set var="joinedData" value="${fn:join(myArray,'->')}"></c:set>

<b>${joinedData}</b>