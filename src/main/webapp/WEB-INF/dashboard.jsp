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
<link rel="stylesheet" href="/css/table.css">
<link rel="icon" type="image/x-icon" href="/img/tv-show.ico">
<meta charset="ISO-8859-1">
<title>TV SHOW</title>
</head>
<body>

<!-- // NavBar -->

  <div class="nav-bar">
    <nav>
      <h2 class="logo">TV<span>SHOW</span></h2>
        <ul>
			<li><a class="nav-link" href="">Home</a></li>
			<li><a class="nav-link" href="/shows/about">About</a></li>
			<li><a class="nav-link" href="/shows/service">Service</a></li>
			<li><a class="nav-link" href="">Contact Us</a></li>
        </ul>
        
        <a class="button" href="/logout">Logout</a>
       
    </nav>
</div>

<!--DashBoard Table  -->

<div class="container mt-5">

 <h4>Welcome, <span><c:out value="${userName }" /></span></h4>
  
 <table class="table">
    <tr>
      <th>SHOW</th>
      <th>NETWORK</th>
    </tr>
    
    <c:forEach var="eachShow" items="${showList}" >
    <tr>
  
    <td><a href="/shows/${eachShow.id}" ><c:out value="${eachShow.title}" /></a></td>
    <td><c:out value="${eachShow.network}" /></td>
       
    </tr>
    </c:forEach>
   
 </table>

 <a class="table-link" href="/shows/new">Add a Show</a>

     
</div>



</body>
</html>