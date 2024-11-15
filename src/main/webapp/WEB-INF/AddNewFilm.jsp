<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Added Film</title>
</head>
<body>
	<c:if test="${!empty film}">
		Title: ${film.title}
		<br>
		Description: ${film.description}
	</c:if>
	
	
	<c:if test="${not empty film}">
		<div class="error">${error}</div>
	</c:if>
</body>
</html>