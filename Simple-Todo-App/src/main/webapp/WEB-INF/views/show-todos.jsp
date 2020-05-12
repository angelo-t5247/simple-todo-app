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
        <a href="homepage" class="navbar-brand"><h3>Todo-App</h3></a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a href="/" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="todo-form" class="nav-link">Add Todo</a></li>
            <li class="nav-item active"><a href="#" class="nav-link">Show All Todos</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <!--Table -->
    <div class="container">
      <table class="table">
      <thead class="thead-light">
        <tr>
          <th scope="col">Username</th>
          <th scope="col">Description</th>
          <th scope="col">Target Date</th>
          <th scope="col">Delete</th>
          <th scope="col">Edit</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${todos}" var="todo">
        <tr>
          <th scope="row">${todo.username}</th>
          <td scope="row">${todo.description}</td>
          <td scope="row">${todo.targetDate}</td>
          <td scope="row"><a href="delete-todo?id=${todo.id}">Delete</a></td>
          <td scope="row"><a href="edit-todo?id=${todo.id}">Edit</a></td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
    </div>

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