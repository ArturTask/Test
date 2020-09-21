<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="models.Dot" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<% ArrayList<Dot> history = (ArrayList<Dot>)session.getAttribute("history");%>

<c:forEach var="dot" items="${history}">
<tr >
    <td ><c:out value="${dot.getX()}"/></td>
    <td ><c:out value="${dot.getY()}"/></td>
    <td ><c:out value="${dot.getR()}"/></td>
    <td ><c:out value="${dot.getResult()}"/></td>
</tr>

</c:forEach>

