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
			<li><a class="nav-link" href="">Home</a></li>
			<li><a class="nav-link" href="">About</a></li>
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
  
 <div class="card border-danger container error-box" style="max-width: 18rem;">
  
  <div class="card-body text-danger">
    <p class="card-title">You have already rated this show.</p>
    
  </div>
 </div>        
   <div class="chatbox-wrapper">
		<div class="chatbox-toggle">
			<i class='bx bx-message-dots'></i>
		</div>
		<div class="chatbox-message-wrapper">
			<div class="chatbox-message-header">
				<div class="chatbox-message-profile">
					
					<div>
						<h4 class="chatbox-message-name">Jonathan Doe</h4>
						<!-- <p class="chatbox-message-status">online</p> -->
					</div>
				</div>
				<div class="chatbox-message-dropdown">
					<i class='bx bx-dots-vertical-rounded chatbox-message-dropdown-toggle'></i>
					<!-- <ul class="chatbox-message-dropdown-menu">
						<li>
							<a href="#">Search</a>
						</li>
						<li>
							<a href="#">Report</a>
						</li>
					</ul> -->
				</div>
			</div>
			<div class="chatbox-message-content">
				<h4 class="chatbox-message-no-message">You don't have message yet!</h4>
				
			</div>
			<div class="chatbox-message-bottom">
				<form action="#" class="chatbox-message-form">
					<textarea rows="1" placeholder="Type message..." class="chatbox-message-input"></textarea>
					<button type="submit" class="chatbox-message-submit"><i class='bx bx-send' ></i></button>
				</form>
			</div>
		</div>
	</div>
    <script type="text/javascript" src=""></script>
</body>
</html>         