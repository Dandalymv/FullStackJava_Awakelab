<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Producto</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light"
			style="background-color: #C11680;">
			<div class="container-fluid">
				<a class="navbar-brand" href="./">Smart Places</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarText"
					aria-controls="navbarText" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarText">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="./">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="about">Sobre Nosotros</a></li>
						<li class="nav-item"><a class="nav-link" href="galeria">Galeria</a></li>
						<li class="nav-item"><a class="nav-link" href="oficinas">Oficinas</a></li>
						<li class="nav-item"><a class="nav-link" href="contacto">Contacto</a>
						<sec:authorize access="hasAnyAuthority('ADMIN')">
							<li class="nav-item"><a class="nav-link" href="contactoLista">Lista de Contactos</a>
						</sec:authorize>
						<sec:authorize access="!isAuthenticated()">
							<li class="nav-item"><a class="nav-link" href="login">Iniciar Sesión</a>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
							<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
						</sec:authorize>
						</li>
					</ul>
					<ul class="navbar-nav ms-auto">
						<sec:authorize access="hasAnyAuthority('ADMIN')">
							<li><a class="nav-link">Administrador</a></li>
						</sec:authorize>
						<sec:authorize access="hasAnyAuthority('USER')">
							<li><a class="nav-link">Logeado como Usuario</a></li>
						</sec:authorize>
					</ul>

				</div>
			</div>
		</nav>
	</header>
</body>
</html>