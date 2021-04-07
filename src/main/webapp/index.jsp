<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="vista/img/perrito.jpg">
<link rel="stylesheet" type="text/css"
	href="vista/estilos/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="vista/estilos/cuerpo.css">
<title>VeterinariaLukas</title>
</head>
<!-- CONTENIDO DEL BODY -->
<body>
	<!-- Contenido del header -->
	<header>
		<!-- Contenedor de imagen -->
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div>
					<img alt="veterinariaLukas" src="vista/img/perrito.jpg"
						width="400px" height="230px">
				</div>
			</div>
		</div>
	</header>
	<!-- Contenido del nav -->
	<nav>
		<div class="container">
			<div id="cont_nav" class="row justify-content-center">
				<h3 id="inicio">Inicio</h3>
				<h3 id="cita">Cita</h3>
				<h3 id="acerca">Acerca de</h3>
			</div>
		</div>
	</nav>
	<!-- Contenido del footer -->
	<footer> </footer>
	<jsp:include page="/Main"></jsp:include>
	<script type="text/javascript" src="controlador/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="controlador/jquery.validate.js"></script>
	<script type="text/javascript" src="controlador/bootstrap.min.js"></script>
	<script type="text/javascript" src="controlador/dinamica.js"></script>
</body>

<!-- PLANTILLA INICIO -->
<template id="plantillaInicio">
	<div class="container-fluid">
		<div id="parrafo_inicio" class="row justify-content-center">
			<p>
				Bienvenidos! Somos una veterinaria encargada de cuidar el bienestar
				de tus mascotas, <br> aportando nuestro servicio en: salud y
				cuidado higienico del animal. <br> Cualquier duda o inquietud
				puedes llamarnos al telefono que aporta nuestra pagina web!
			</p>
		</div>
	</div>
	<div class="cont-telefono">
		<h5>Tel: 3168429382</h5>
	</div>
</template>

<!-- PLANTILLA ACERCA -->
<template id="plantillaAcerca">
	<div class="container-fluid">
		<div id="parrafo_inicio" class="row justify-content-center">
			<p>
				Proyecto pequeño creado por <br>
				el tenologo de sistemas: Nicolás
			</p>
		</div>
	</div>
	<div class="cont-telefono">
		<h5>Tel: 3168429382</h5>
	</div>
</template>

<!-- PLANTILLA CITAS -->
<template id="plantillaForm">
	<!-- Formulario -->
	<div id="cont_citas" class="overflow-auto container-fluid">
		<form id="form_datos">
			<div class="form-group">
				<label for="exampleFormControlInput1">Nombre completo:</label> <input
					type="text" class="form-control" id="form_nombre" name="form_nombre"
					placeholder="Escribe aqui tu nombre completo...">
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput2">Correo electronico:</label> <input
					type="email" class="form-control" id="form_correo" name="form_correo"
					placeholder="Escribe aqui tu correo...">
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput3">Telefono:</label> <input
					type="number" class="form-control" id="form_telefono" name="form_telefono"
					placeholder="Escribe aqui tu telefono...">
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput4">Direccion:</label> <input
					type="text" class="form-control" id="form_direccion" name="form_direccion"
					placeholder="Escribe aqui tu direccion...">
			</div>
			<div class="form-group">
				<label for="exampleFormControlSelect1">Tipo de mascota:</label> <select
					class="form-control" id="form_animal" name="form_animal" onchange="cambio(this)">
					<option value="perro">Perro</option>
					<option value="gato">Gato</option>
					<option value="conejo">Conejo</option>
					<option value="loro">Loro</option>
					<option value="otro">Otro</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleFormControlSelect1">Tipo de consulta:</label> <select
					class="form-control" id="form_consulta" name="form_consulta">
					<option value="salud">Consulta para salud</option>
					<option value="higiene">Consulta para higiene</option>
				</select>
			</div>
			<div class="d-flex justify-content-end">
				<input type="submit" class="btn btn-dark" id="enviarDatos" value="Enviar">
			</div>
		</form>
	</div>
	<div class="cont-telefono">
		<h5>Tel: 3168429382</h5>
	</div>
</template>
</html>