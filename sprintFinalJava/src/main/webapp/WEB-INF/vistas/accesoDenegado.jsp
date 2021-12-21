<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Acceso Denegado</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/res/css/estilo.css" />">
</head>
<body class="warning">
<section>
<h3>Lo sentimos, no tienes acceso a este recurso. <br> Debes registrarte como Administrador.</h3>

Clic <a href="<c:url value="./" /> ">acá</a>
para volver a la página de inicio.
</section>
<section>
	<div>
		<img width="60%" src="/sprintFinalJava/res/img/warning.png" alt="warning!">
	</div>
</section>


</body>
</html>