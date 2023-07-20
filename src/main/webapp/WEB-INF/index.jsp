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
<link rel="stylesheet" href="/css/style.css"> 
<meta charset="ISO-8859-1">
<title>Insert Title Here</title>
</head>
<body>

 <div class="container mt-5 reg-box">
 
 <h1>Sign Up</h1>
 
 
 <h4>It's free and only takes a minute</h4>

  <form:form action="/register"  method="Post" modelAttribute="newUser">
  
    <div>
     <form:label path="userName" >First Name:</form:label>
     <form:input path="userName" class="form-control"/>
     <form:errors path="userName" class="text-danger"/>
    </div>
    
    <div>
     <form:label path="LastName" >Last Name:</form:label>
     <form:input path="LastName" class="form-control"/>
     <form:errors path="LastName" class="text-danger"/>
    </div>
    
    <div>
     <form:label path="email">Email:</form:label>
     <form:input path="email" class="form-control"/>
     <form:errors path="email" class="text-danger"/>
    </div>
    
    <div>
     <form:label path="password">Password:</form:label>
     <form:input path="password" type="password" class="form-control"/>
     <form:errors path="password" class="text-danger"/>
    </div>
    
    <div>
     <form:label path="confirm">Confirm Password:</form:label>
     <form:input path="confirm" type="password" class="form-control"/>
     <form:errors path="confirm" class="text-danger"/>
    </div>
    
    <button type="submit" >Submit</button>

  </form:form>
 <p>By clicking the Sign Up button, you agree to our <br>
 <a href="#">Terms and Condition</a> and <a href="#">Policy Privacy</a></p>

 </div>
 <p class="reg-text">Already have an account? <a href="/login">Login here</a></p>
 
 

</body>
</html>