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
<link rel="stylesheet" href="/css/update.css"> 

<script src="https://kit.fontawesome.com/52706daa36.js" crossorigin="anonymous"></script>
    
<meta charset="ISO-8859-1">
<title>Insert Title Here</title>
</head>
<body>
<!--NavBar  -->

<div class="nav-bar">
    <nav>
      <h2 class="logo">TV<span>SHOW</span></h2>
        <ul>
			<li><a class="nav-link" href="/shows">Home</a></li>
			<li><a class="nav-link" href="/shows/about">About</a></li>
			<li><a class="nav-link" href="">Service</a></li>
			<li><a class="nav-link" href="">Contact Us</a></li>
        </ul>
        
        <a class="button" href="/logout">Logout</a>
      
    </nav>
</div>

<!-- Arrow -->

<div class="container mt-3">
	 <div class="icon-arrow">
	  <a href="/shows"><i class="fa-sharp fa-solid fa-arrow-left fa-beat fa-2x"></i></a>   
	</div>
	
	<div class="container text-box">
   <a href="/shows"><i class="fa-sharp fa-solid fa-arrow-right fa-beat fa-2x"></i></a>
 
 </div>

<!-- Delete box -->

 <div class="create-box">
	 
	<h4><c:out value="${oneShow.title}" /></h4>
	     
    <%--   <form:form action="/shows/edit/${oneShow.id }" method="PUT" modelAttribute="oneShow">
      <form:hidden path="user" />
	     <p>
	        <form:label path="title">TITLE</form:label>
	        <form:input path="title" type="text" class="form-control"/>
	        <form:errors path="title" type="text"/>
	     </p>
	     <p>
	        <form:label path="network">NETWORK</form:label>
	        <form:input path="network" type="text" class="form-control"/>
	        <form:errors path="network"/>
	     </p>
	     <p>
	        <form:label path="description">DESCRIPTION</form:label>
	        <form:textarea path="description" class="form-control"/>
	        <form:errors path="description"/>
	     </p>
	     
	     <button type="submit" class="btn2">Submit</button>
	   
	     
	   </form:form> --%>
	   
	    <form:form action="/shows/edit/${oneShow.id }" method="put" modelAttribute="oneShow" >
      <form:hidden path="user" value="${userId }"/>
	     
	      <p>
	        <form:label path="title">Title</form:label>
	        <form:input path="title" type="text" class="form-control"/>
	        <form:errors path="title" type="text"/>
	     </p>
	     
	     <p>
	        <form:label path="country">Country</form:label>
	        <form:input path="country" type="text" class="form-control" autocomplete="off"/>
	        <form:errors path="country"/>
	     </p>
	     
	    
	     <p>
	        <form:label path="network">Network</form:label>
	        <form:input path="network" type="text" class="form-control"/>
	        <form:errors path="network"/>
	     </p>
	     
	     <p>
	        <form:label path="releaseDate">Release Date</form:label>
	        <form:input path="releaseDate" type="date" class="form-control"/>
	        <form:errors path="releaseDate"/>
	     </p>
	     
	     <p>
	        <form:label path="director">Director</form:label>
	        <form:input path="director" type="text" class="form-control"/>
	        <form:errors path="director"/>
	     </p>
	     
	     <p>
	        <form:label path="trailerLink">Trailer link</form:label>
	        <form:input path="trailerLink" type="text" class="form-control"/>
	        <form:errors path="trailerLink"/>
	     </p>
	     
	     <p>
	        <form:label path="cast">Cast</form:label>
	        <form:input path="cast" type="text" class="form-control"/>
	        <form:errors path="cast"/>
	     </p>
	     
	     <p>
	        <form:label path="genre">Genre</form:label>
	        <form:input path="genre" type="text" class="form-control"/>
	        <form:errors path="genre"/>
	     </p>
	    
	     
	    <p>
   			<form:label path="imageData" for="imageFile">Poster</form:label>
   			<form:input path="imageData" type="text" class="form-control" accept="image/*"/>
   			<form:errors path="imageData"/>
		 </p> 
		 
	     <p>
	        <form:label path="description">Description</form:label>
	        <form:textarea path="description" class="form-control"/>
	        <form:errors path="description"/>
	     </p>
	     
	     <button type="submit" class="btn2">Submit</button>
	     
	   </form:form>
	   
	     <!--Buttons  -->
	    
	     <div class="btn-style">
	      <form action="/shows/${oneShow.id}" method ="POST">
	       <button type="submit" class="btn">Delete</button>
	       <input type="hidden" name="_method" value="delete" />
	      </form>
	     </div>
	     
 </div>  
</div>

<!--Hover box  --> 
   
  <div class="mt-5 main-box">
   
	   <div class="box">
	   		<img src="/img/HD.jpg">
	   </div>
	   
	   <div class="box">
	   		<img src="/img/lupin.jpg">
	   </div>
	   
	   <div class="box">
	   		<img src="/img/Mandol.jpg">
	   </div>
	   
	   <div class="box">
	   		<img src="/img/st.jpg">
	   </div>
   
  </div> 

</body>
</html>