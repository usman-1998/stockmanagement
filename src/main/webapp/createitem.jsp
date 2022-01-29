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
	<table>
		<form action="createtitem" method="post">
			<div class="container">
				<h1>Item Creation</h1>

				<tr>
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
			</div>


		</form>
	</table>
</body>
</html>