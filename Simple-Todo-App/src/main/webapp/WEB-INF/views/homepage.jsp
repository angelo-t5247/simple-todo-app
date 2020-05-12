<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Todo App | Home</title>
   <link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	<link href="style.css" rel="stylesheet">
  </head>
  <body>

    <!--Navigation -->
    <nav class="navbar navbar-expand-md navbar-dark bg-success sticky-top">
      <div class="container-fluid">
        <a href="#" class="navbar-brand"><h3>Todo-App</h3></a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a href="#" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="todo-form" class="nav-link">Add Todo</a></li>
            <li class="nav-item"><a href="show-all-todos" class="nav-link">Show All Todos</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <!--- Jumbotron -->

    <div class="container-fluid">
      <div class="jumbotron column text-center">
        <div class="col-12">
          <h1>Welcome to Todo-App</h1>
        </div>
      </div>
    </div>

    <!--- Welcome Section -->
    <div class="container-fluid padding">
      <div class="welcome text-center">
        <div class="col-12">
            <h2>Built with ease.</h2>
        </div>
        <hr class="my-4">
        <div class="col-12">
          <p class="lead">Welcome to Todo App website! Todo-App will allows
          you to make your todo list to be more productive with ease.</p>
        </div>
        <div class="col-12">
          <a href="#"><button type="button" class="btn btn-outline-secondary"
            btn-lg>Add New Todo</button></a>
        </div>
      </div>
    </div>

    <footer>
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