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

<div class="container mt-5 login-box">
 
 <h1>Login</h1>
 
 <form:form action="/login"  method="Post" modelAttribute="newLogin">
 
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
    
    <button type="submit">Submit</button>
 
 
 </form:form>
 
 
 </div>
 <p class="log-text">Not have an account? <a href="/register">Sing Up Here</a></p>

</body>
</html>