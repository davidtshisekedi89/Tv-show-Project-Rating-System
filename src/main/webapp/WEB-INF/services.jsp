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
<script src="https://kit.fontawesome.com/52706daa36.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/services.css"> 
<link rel="stylesheet" href="/css/navbar.css">
<meta charset="ISO-8859-1">
<title>Insert Title Here</title>
</head>
<body>
<!-- NavBar -->

<div class="nav-bar">
    <nav>
      <h2 class="logo">TV<span>SHOW</span></h2>
        <ul>
			<li><a class="nav-link" href="/shows">Home</a></li>
			<li><a class="nav-link" href="/shows/about">About</a></li>
			<li><a class="nav-link" href="/shows/service">Service</a></li>
			<li><a class="nav-link" href="">Contact Us</a></li>
        </ul>
        <a class="button" href="/logout">Logout</a>
        
    </nav>
</div>


<div class="section">
 <div class="title">
   <h1>Our Services</h1>
 
 </div>
<a href="/shows"><i class="fa-sharp fa-solid fa-arrow-left fa-beat fa-2x "></i></a>
 <div class="services">
   <div class="card">
     <div class="icon">
       <i class="fas fa-code"></i>
     </div>
     <h2>!!!!</h2>
     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue</p>
     <a href="" class="button-serv">Read More</a>
   </div>
   
   <div class="card">
     <div class="icon">
       <i class="fas fa-wrench"></i>
     </div>
     <h2>Renovation</h2>
     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue</p>
     <a href="" class="button-serv">Read More</a>
   </div>
   
   <div class="card">
     <div class="icon">
       <i class="fas fa-handshake"></i>
     </div>
     <h2>Support</h2>
     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue</p>
     <a href="" class="button-serv">Read More</a>
   </div>
 
 </div>


</div>

</body>
</html>