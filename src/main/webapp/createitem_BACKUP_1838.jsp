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
<<<<<<< HEAD
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<h1><%=message%></h1>
	<%
	}
	%>
	<table>
		<form action="CreateItemServlet">
=======
	<table>
		<form action="createtitem" method="post">
>>>>>>> 74c57e283ede47d68abf990f0df83cf130a9939c
			<div class="container">
				<h1>Item Creation</h1>

				<tr>
<<<<<<< HEAD

					<label for="name"><b>Name</b></label>
					<input type="text" placeholder="Enter Name" name="name" id="name"
						required>
					<br>
					<br>
				</tr>
				<tr>
					<label for="qnt"><b>Quantity</b></label>
					<input type="password" placeholder="Enter Quantity" name="qnt"
						id="qnt" required>
					<br>
					<br>
				</tr>
				<tr>
					<label for="cost"><b>Cost</b></label>
					<input type="password" placeholder="Enter Cost" name="cost"
						id="cost" required>
					<br>
					<br>
					<hr>
				</tr>

				<label for="type">Type:</label> <select id="type">
					<option value="Mobile">Mobile</option>
					<option value="Laptop">Laptop</option>
					<option value="TV">TV</option>
					<option value="Ear Phone" selected>Ear Phone</option>
				</select><br>
				<br>

				<button type="submit" class="registerbtn">Create</button>
=======
					<td><label for="name"><b>Name</b></label></td>
					<td><input type="text" placeholder="Enter Name" name="name" id="name"
						required></td>
				</tr>
				<tr>
					<td><label for="qnt"><b>Quantity</b></label></td>
					<td><input type="number" placeholder="Enter Quantity" name="qnt"
						id="qnt" required></td>
				</tr>
				<tr>
					<td><label for="cost"><b>Cost</b></label></td>
					<td><input type="number" placeholder="Enter Cost" name="cost"
						id="cost" required></td>
				</tr>
				<tr>
				<td><label for="type">Type:</label></td>
				 <td><select id="type" name="type">
				 	<option value=" "></option>
					<option value="Mobile">Mobile</option>
					<option value="Laptop">Laptop</option>
					<option value="TV">TV</option>
					<option value="Ear Phone">Ear Phone</option></td>
				</select>
				</tr>

				<tr>
				<td><button type="submit" class="registerbtn">Create</button></td></tr>
>>>>>>> 74c57e283ede47d68abf990f0df83cf130a9939c
			</div>


		</form>
	</table>
</body>
</html>