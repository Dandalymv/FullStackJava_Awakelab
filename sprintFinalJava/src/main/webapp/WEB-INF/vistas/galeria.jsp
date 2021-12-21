<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Galería</title>
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
		<h2>Encuentra tu oficina ideal</h2>
		<div data-aos="flip-up" class="galeria">
			<div class="container container-photo">
				<img id="photo" class="myImg" src="/sprintFinalJava/res/img/galery01.jpg" alt="Oficina Apoquindo">
				<img id="photo" class="myImg" src="/sprintFinalJava/res/img/galery02.jpg" alt="Imagen 02">
				<img id="photo" class="myImg" src="/sprintFinalJava/res/img/galery03.jpg" alt="Imagen 03">
				<img id="photo" class="myImg" src="/sprintFinalJava/res/img/galery04.jpg" alt="Imagen 04">
				<img id="photo" class="myImg" src="/sprintFinalJava/res/img/galery05.jpg" alt="Imagen 05">
				<img id="photo" class="myImg" src="/sprintFinalJava/res/img/galery06.jpg" alt="Imagen 06">
			</div>
		</div>
		
		
		
	</main>
	</br>
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