<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SD Films</title>

</head>
<body>
	<h1>Film Query Menu</h1>

	<h3>Please enter and Id to find by ID:</h3>
	<form action="findById.do">
		<input type="text" name="id"> <input type="submit"
			name="doThis" value="Find">
	</form>
	
	
	<h3>Add a new Film</h3>
	<form action="AddNewFilm.do">
		Title: <input type="text" name="title"> 
		Description: <input type="text" name="desc" >
		<input type="submit" name="description" value="submit">
	</form>


</body>
</html>