<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted Film Resulted</title>
</head>
<body>
	<h1>Film Deletion Result</h1>
  <c:if test="${not empty message}">
        <p>${message}</p>
    </c:if>
    <c:if test="${empty message}">
        <p>No message was set in the controller.</p>
    </c:if>
</body>
</html>