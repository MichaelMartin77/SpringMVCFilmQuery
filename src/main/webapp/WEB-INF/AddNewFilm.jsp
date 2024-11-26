<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Added Film</title>
</head>
<body>
	<div class="container-fluid">
	<h1>Film has been successfully added</h1>
		<c:if test="${not empty film}">
		Title: ${film.title}
		<br>
		Description: ${film.description}
	</c:if>


		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
	</div>
</body>
</html>