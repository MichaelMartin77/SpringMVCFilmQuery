<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SD Films</title>
<%@ include file="bootstraphead.jsp"%>
</head>
<body>
	<h1>Film Query Menu</h1>

	<div class="container-fluid">
		<h3>Please enter and Id to find by ID:</h3>
		<form action="findById.do">
			<input type="text" name="id"> <input type="submit"
				name="doThis" value="Find">
		</form>

		<h3>Search Films by Keyword</h3>
		<form action="findByKeyword.do" method=get>
			<input type="text" name="keyword" required> <input
				type="submit" value="Search">
		</form>


		<h3>Add a new Film</h3>
		<form action="AddNewFilm.do" method="post">
			Title: <input type="text" name="title" required> Description:
			<input type="textarea" name="desc"> <input type="submit" value="submit">
		</form>


	</div>

	<%@ include file="bootstrapfooter.jsp"%>
</body>
</html>