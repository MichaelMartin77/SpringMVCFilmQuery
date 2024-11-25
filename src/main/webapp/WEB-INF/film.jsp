<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film</title>
<%@ include file="bootstraphead.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<c:if test="${!empty film}">
		<p class="text-start">Title: ${film.title}</p>
		Description: ${film.description}
	</c:if>

		<c:if test="${empty film}">
			<h3>No such film found.</h3>
		</c:if>

		<form action="deleteFilm.do" method="post">
			<input type="hidden" name="id" value="${film.id}" />
			<button type="submit">Delete Film</button>
		</form>
		</li>

		<form action="updateFilm.do" method="post">
			<label for="id">Film ID (cannot be changed):</label><br> <input
				type="text" id="id" name="id" value="${film.id}" readonly><br>
			<br> <label for="title">Title:</label><br> <input
				type="text" id="title" name="title" value="${film.title}"><br>
			<br> <label for="description">Description:</label><br>
			<textarea id="description" name="description">${film.description}</textarea>
			<br> <br>

			<button type="submit">Update Film</button>
		</form>

	</div>

	<%@ include file="bootstrapfooter.jsp"%>
</body>
</html>