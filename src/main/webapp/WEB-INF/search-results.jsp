<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results page</title>
</head>
<body>
	<h1>Search Results</h1>

	<c:if test="${not empty films}">
		<ul>
			<c:forEach var="film" items="${newFilms}">
				<li><strong>Title: </strong> ${film.title}<br> 
				<strong>Description: </strong> ${film.description}<br>
					<form action="deleteFilm.do" method="post">
						<input type="hidden" name="id" value="${film.id}" />
						<button type="submit">Delete Film</button>
					</form></li>
			</c:forEach>
		</ul>
	</c:if>
	 <c:if test="${empty newFilms}">
        <p>No films found matching your search.</p>
    </c:if>

    <a href="index.do">Back to Home</a>
</body>
</html>