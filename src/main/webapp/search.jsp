<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
	<form action="searchitem">
		<div class="container">
			<h1>Search Item... </h1>

			<tr>

				<label for="iyem"><b>Enter Item</b></label>
				<input type="text" placeholder="Enter Item To Search<" name="item" id="name"
					required>
				<br>
				<br>
			<label for="type" >Type:</label>
			 <select id="type" name="type">
				<option value=""></option>
				<option value="Mobile">Mobile</option>
				<option value="Laptop">Laptop</option>
				<option value="TV">TV</option>
				<option value="Ear Phone" >Ear Phone</option>
			</select><br>
			<br>

			<button type="submit" class="registerbtn">Search</button>
		</div>


	</form>
	</table>

</body>
</html>