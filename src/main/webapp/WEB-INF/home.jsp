<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/home.css"> 

<meta charset="ISO-8859-1">
<title>Insert Title Here</title>
</head>
<body>
<div class="img-bg">
	<div class="nav-bar">
	    <nav>
	      <h2 class="logo">TV<span>SHOW</span></h2>
	     
	        <!-- <a class="button" href="/logout">Sign Up</a> -->
	        <a class="button" href="/register">Sign Up</a>
	        
	    </nav>
	</div>
	<div class="content">
	<small>Welcome to our </small>
	<h1>TV SHOW <br> Get ready to embark on an exhilarating journey where the boundaries of reality are pushed to their limits,<br> and your imagination knows no bounds.</h1>
	<a class="btn" href="/login">Login</a>
	
	</div>
</div>

</body>
</html>