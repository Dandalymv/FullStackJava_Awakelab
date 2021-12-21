<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Listado Oficinas</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/res/css/estilo.css" />">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>
<body>
	<header>
		<h1>ICowork Chile</h1>
	</header>
	<section>	
		<%@ include file='menu.jsp'%>
	</section>
	<main>
		<h2>Listado de Oficinas</h2>
		<div class="container" data-aos="zoom-in"  >
		<sec:authorize access="hasAnyAuthority('ADMIN', 'USER')">
			<input type="checkbox" class="btn-check" id="btncheck1" onclick="myFunction()">
			<label class="btn btn-secondary" for="btncheck1">Nueva Oficina</label>
		</sec:authorize>
		</div>
		<div id="text" style="display:none; width: 50%" class="container" > 	
			<div class="d-flex justify-content-center h-100">
				<div class="card">
					<div class="card-header">
						<h3>Registrar Nueva Oficina</h3>
					</div>
					<div class="card-body">
						<form action="crearOficina" method="post">
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-id-badge"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Nombre Oficina" name="nombreOficina" required>
							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Dirección" name="direccion" required>
							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Comuna" name="comuna" required>
							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
								</div>
								<select class="form-control" placeholder="Región" name="region" required>
									<option disabled selected>Seleccionar Región...</option>
									<option>Región Metropolitana de Santiago</option>
									<option>Región de Arica y Parinacota</option>
									<option>Región de Tarapacá</option>
									<option>Región de Antofagasta</option>
									<option>Región de Atacama</option>
									<option>Región de Coquimbo</option>
									<option>Región de Valparaíso</option>
									<option>Región del Libertador General Bernardo O’Higgins</option>
									<option>Región del Maule</option>
									<option>Región del Ñuble</option>
									<option>Región del Biobío</option>
									<option>Región de La Araucanía</option>
									<option>Región de Los Ríos</option>
									<option>Región de Los Lagos</option>
									<option>Región de Aysén del General Carlos Ibáñez del Campo</option>
									<option>Región de Magallanes y la Antártica Chilena</option>
								</select>

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-phone"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Teléfono" name="telefono" required>
							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-envelope"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Correo electrónico" name="correo" required>
							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-user-plus"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Espacios disponibles" name="espacios" required>
							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-phone"></i></span>
								</div>
								<select class="form-control" placeholder="Horario" name="horario" required>
									<option disabled selected>Seleccionar Horario</option>
									<option>Diurno</option>
									<option>Vespertino</option>
								</select>
							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
								</div>
								<input type="number" class="form-control" placeholder="Valor diario" name="valorDiario" required>
							</div>

							<div class="form-group">
								<input type="submit" value="Registrar" class="btn float-right login_btn">
							</div>
						</form>
					</div>
				</div>
			</div>
		
			</div>
		<div class="container">
			<table class="table table-striped table-hover table-dark">
				<thead>
					<tr class="thead-light">
						<th>ID</th>
						<th>Nombre Oficina</th>
						<th>Dirección</th>
						<th>Comuna</th>
						<th>Región</th>
						<th>Teléfono</th>
						<th>Email</th>
						<th>Espacios Disponibles</th>
						<th>Horario</th>
						<th>Valor diario</th>
						<sec:authorize access="hasAnyAuthority('ADMIN')">
							<th>Acción</th>
						</sec:authorize>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="o" items="${oficinas}">
						<tr>
							<td><c:out value="${o.getId()}"></c:out></td>
							<td><c:out value="${o.getNombreOficina()}"></c:out></td>
							<td><c:out value="${o.getDireccion()}"></c:out></td>
							<td><c:out value="${o.getComuna()}"></c:out></td>
							<td><c:out value="${o.getRegion()}"></c:out></td>
							<td><c:out value="${o.getTelefono()}"></c:out></td>
							<td><c:out value="${o.getCorreo()}"></c:out></td>
							<td><c:out value="${o.getEspacios()}"></c:out></td>
							<td><c:out value="${o.getHorario()}"></c:out></td>
							<td><c:out value="${o.getValorDiario()}"></c:out></td>
							<sec:authorize access="hasAnyAuthority('ADMIN')">
								<td>
									<div class="btn-group" role="group" aria-label="Basic mixed styles example">
										<a title="Eliminar" href="oficinas/deleteOficina/${o.getId()}" class="btn btn-danger confirmation" role="button"><i class="fas fa-trash-alt"></i></a> 
										<a title="Editar" href="editarOficina?id=${o.getId()}" class="btn btn-info" role="button"><i class="fas fa-edit"></i></a>
									</div>
								</td>
							</sec:authorize>
						</tr>
					</c:forEach>


				</tbody>
			</table>
		</div>
	</main>
	<br>
	<footer>
		<div class="rrss">
			<ul>
				<li><a href="#" class="facebook"> <i
						class="fab fa-facebook-f"></i></a></li>
				<li><a href="#" class="instagram"> <i
						class="fab fa-instagram"></i></a></li>
				<li><a href="#" class="youtube"> <i class="fab fa-youtube"></i></a></li>
				<li><a href="#" class="twitter"> <i class="fab fa-twitter"></i></a></li>
			</ul>
		</div>
		<a>SPRINT INDIVIDUAL FULLSTACK JAVA - DANDALY MORALES - AWAKELAB 2021</a>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="/sprintFinalJava/res/js/js.js"></script>
</body>
</html>