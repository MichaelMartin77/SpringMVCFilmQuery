<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Not Found</title>
</head>
<body>
	<c:if test="${not empty message}">
		<p>${message}</p>
	</c:if>
	
</body>
</html>