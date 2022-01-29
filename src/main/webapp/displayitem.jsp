<%@page import="com.ty.dto.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Item> items = (List<Item>) request.getAttribute("items");
	%>
	<table>
		<%
		for (Item item : items) {
		%>
		<tr>
			<th>Item ID</th>
			<th>Name</th>
			<th>Quantity</th>
			<th>Type</th>
			<th>Cost</th>
			<th>Delete</th>
		</tr>
		<tr>
		<td><%=item.getId() %></td>
		<td><%=item.getName() %></td>
		<td><%=item.getQuantity() %></td>
		<td><%=item.getType() %></td>
		<td><%=item.getCost() %></td>
		<td><a href="deleteitem?itemId=<%=item.getId()%>">delete</a></td>
		</tr>



		<%
		}
		%>




	</table>


</body>
</html>