<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
</style>
</head>
<body>
	<%
 String message = (String) request.getAttribute("message");
 if (message != null) {
 %>
	<h1><%=message%></h1>
	<%
	}
	%>
			<table>
				<form action="createtitem" method="post">
					<div class="container">
						<h1>Item Creation</h1>

						<tr>

							<label for="name"><b>Name</b></label>
							<input type="text" placeholder="Enter Name" name="name" id="name"
								required>
							<br>
							<br>
						</tr>
						<tr>
							<label for="qnt"><b>Quantity</b></label>
							<input type="text" placeholder="Enter Quantity" name="qnt"
								id="qnt" required>
							<br>
							<br>
						</tr>
						<tr>
							<label for="cost"><b>Cost</b></label>
							<input type="text" placeholder="Enter Cost" name="cost"
								id="cost" required>
							<br>
							<br>
							<hr>
						</tr>

						<label for="type">Type:</label> <select id="type" name="type">
							<option value="Mobile">Mobile</option>
							<option value="Laptop">Laptop</option>
							<option value="TV">TV</option>
							<option value="Ear Phone" selected>Ear Phone</option>
						</select><br> <br>
						<button type="submit" class="registerbtn">Create</button>
				</form>
			</table>
</body>
</html>