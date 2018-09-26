<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Tag para dar formato -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenido a Cineapp</title>

<!-- Bootrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Ruta relativa nuestros recursos -->
<spring:url value="/resources" var="urlPublic" />

</head>
<body>
	<!--  
	<h1>Bienvenido a la Pagina Principal</h1>
	-->
	<%--
	<h1>Lista de Peliculas</h1>
	<ol>
		<c:forEach items="${peliculas}" var="pelicula">
			<li>${pelicula.titulo}</li>		
		</c:forEach>		
	</ol>
	--%>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">Lista de Peliculas</div>
			<h2>Creando bracj</h2>
			<h2>Creando branchs 2018-01</h2>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>Id</th>
							<th>Titulo</th>
							<th>Duracion</th>
							<th>Clasificacion</th>
							<th>Genero</th>
							<th>Imagen</th>
							<th>Fecha Estreno</th>
							<th>Estatus</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${peliculas}" var="pelicula">
							<tr>
								<td>${pelicula.id}</td>
								<td>${pelicula.titulo}</td>
								<td>${pelicula.duracion}</td>
								<td>${pelicula.clasificacion}</td>
								<td>${pelicula.genero}</td>
								<!-- <td>${pelicula.imagen}</td> -->
								<td><img src="${urlPublic}/images/${pelicula.imagen}"
									width="80" height="100" /></td>
								<!-- Formato fecha jstl -->
								<td><fmt:formatDate value="${pelicula.fechaEstreno}"
										pattern="dd-MM-yyyy" /></td>
								<!-- Incluir un condicional -->
								<td><c:choose>
										<c:when test="${pelicula.estatus == 'Activa'}">
											<span class="label label-success">ACTIVA</span>
										</c:when>
										<c:otherwise>
											<span class="label label-danger">INACTIVA</span>
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>

</body>
</html>