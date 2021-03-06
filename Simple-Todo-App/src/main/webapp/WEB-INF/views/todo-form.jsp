<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Todo App | Add Todo</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<link href="static/css/style.css" rel="stylesheet">
</head>
<body>

	<!--Navigation -->
	<nav class="navbar navbar-expand-md navbar-dark bg-success sticky-top">
		<div class="container-fluid">
			<a href="/" class="navbar-brand"><h3>Todo-App</h3></a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="/" class="nav-link">Home</a></li>
					<li class="nav-item active"><a href="#" class="nav-link">Add
							Todo</a></li>
					<li class="nav-item"><a href="show-all-todos" class="nav-link">Show
							All Todos</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="column">
			<h2>Fill the form</h2>
		</div>
		<hr class="my-4">
	</div>

	<!-- Form -->
	<form action="save-todo" class="container" method="post">
		<input type="hidden" name="id" value="${todo.id}">
		<div class="form-group">
			<label for="username">Username</label> 
			<input type="text" class="form-control" name="username" value="${todo.username}">
		</div>
		<div class="form-group">
			<label for="description">Description</label> 
			<input type="text" class="form-control" name="description" value="${todo.description}">
		</div>
		<div class="form-group">
			<label for="targerDate">Target Date</label> <input type="date"
				class="form-control" name="targetDate" value="${todo.targetDate}">
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>

	<footer class="todo">
		<div class="container-fluid padding">
			<div class="row text-center">
				<div class="col-12">
					<hr class="light-100">
					<h5>&copy; todoapp.com</h5>
				</div>
			</div>
		</div>
	</footer>

</body>
</html>