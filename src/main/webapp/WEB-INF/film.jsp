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
	<c:if test="${!empty film}">
		Title: ${film.title}
		<br>
		Description: ${film.description}
	</c:if>
	
	<c:if test="${empty film}">
		<h3>No such film found.</h3>
	</c:if>
	
	<form action="deleteFilm.do" method="post">
						<input type="hidden" name="id" value="${film.id}" />
						<button type="submit">Delete Film</button>
					</form></li>
	

	<%@ include file="bootstrapfooter.jsp"%>
</body>
</html>