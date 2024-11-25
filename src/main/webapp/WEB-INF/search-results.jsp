<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results page</title>
<%@ include file="bootstraphead.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<h1>Search Results</h1>
		<c:if test="${not empty newFilms}">
			<ul>
				<c:forEach var="film" items="${newFilms}">
					<li><strong>Title: </strong> ${film.title}<br> <strong>Description:
					</strong> ${film.description}<br> Id: ${film.id}
						<form action="deleteFilm.do" method="post">
							<input type="hidden" name="id" value="${film.id}" />
							<button type="submit">Delete Film</button>
						</form></li>

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
				</c:forEach>
			</ul>
		</c:if>
		<c:if test="${empty newFilms}">
			<p>No films found matching your search.</p>
		</c:if>

		<a href="index.do">Back to Home</a>
	</div>
	<%@ include file="bootstrapfooter.jsp"%>
</body>
</html>