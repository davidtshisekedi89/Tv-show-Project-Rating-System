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
 <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="/css/details.css"> 
<script src="https://kit.fontawesome.com/52706daa36.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert Title Here</title>
</head>
<body>

<div class="nav-bar">
    <nav>
      <h2 class="logo">TV<span>SHOW</span></h2>
        <ul>
			<li><a class="nav-link" href="/shows">Home</a></li>
			<li><a class="nav-link" href="/shows/about">About</a></li>
			<li><a class="nav-link" href="">Service</a></li>
			<li><a class="nav-link" href="">Contact Us</a></li>
        </ul>
        <!-- <button type="submit">Logout</button> -->
        <a class="button" href="/logout">Logout</a>
        <!-- <li><a href="">Logout</a></li> -->
    </nav>
</div>




 <div class="container text-box">
 <a href="/shows"><i class="fa-sharp fa-solid fa-arrow-left fa-beat  fa-2x"></i></a>
 
 </div>
  
       
 <c:choose>
         
<c:when test="${error.equals(error)}">
<!-- // CODE WHEN THE TEST PASSES -->
 <div class="card border-danger container error-box" style="max-width: 18rem;">
  
  <div class="card-body text-danger">
    <p class="card-title">You have already rated this show.</p> 
  </div>
 </div> 

</c:when>

<c:otherwise>
<!-- // CODE OTHERWISE IF IT DOESN'T PASS -->

<div class="card border-danger container error-box" style="max-width: 18rem;">
  
  <div class="card-body text-danger">
    <p class="card-title">There is a error for creating the message, please try again!!</p> 
  </div>
 </div> 

</c:otherwise>

</c:choose>
	
      
</body>
</html>